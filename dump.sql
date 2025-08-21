--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: genedata_appuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genedata_appuser (
    id integer NOT NULL,
    organisation character varying(256),
    user_id integer NOT NULL
);


--
-- Name: genedata_appuser_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genedata_appuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: genedata_appuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genedata_appuser_id_seq OWNED BY public.genedata_appuser.id;


--
-- Name: genedata_attribute; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genedata_attribute (
    id bigint NOT NULL,
    key character varying(256) NOT NULL,
    value character varying(256) NOT NULL
);


--
-- Name: genedata_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genedata_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: genedata_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genedata_attribute_id_seq OWNED BY public.genedata_attribute.id;


--
-- Name: genedata_ec; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genedata_ec (
    id bigint NOT NULL,
    ec_name character varying(256) NOT NULL
);


--
-- Name: genedata_ec_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genedata_ec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: genedata_ec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genedata_ec_id_seq OWNED BY public.genedata_ec.id;


--
-- Name: genedata_gene; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genedata_gene (
    id bigint NOT NULL,
    gene_id character varying(256) NOT NULL,
    entity character varying(256) NOT NULL,
    start integer NOT NULL,
    stop integer NOT NULL,
    sense character varying(1) NOT NULL,
    start_codon character varying(1) NOT NULL,
    ec_id bigint NOT NULL,
    sequencing_id bigint NOT NULL,
    access integer NOT NULL
);


--
-- Name: genedata_gene_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genedata_gene_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: genedata_gene_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genedata_gene_id_seq OWNED BY public.genedata_gene.id;


--
-- Name: genedata_geneattributelink; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genedata_geneattributelink (
    id bigint NOT NULL,
    attribute_id bigint NOT NULL,
    gene_id bigint NOT NULL
);


--
-- Name: genedata_geneattributelink_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genedata_geneattributelink_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: genedata_geneattributelink_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genedata_geneattributelink_id_seq OWNED BY public.genedata_geneattributelink.id;


--
-- Name: genedata_product; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genedata_product (
    id bigint NOT NULL,
    type character varying(256) NOT NULL,
    product character varying(256) NOT NULL,
    gene_id bigint NOT NULL
);


--
-- Name: genedata_product_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genedata_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: genedata_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genedata_product_id_seq OWNED BY public.genedata_product.id;


--
-- Name: genedata_sequencing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genedata_sequencing (
    id bigint NOT NULL,
    sequencing_factory character varying(256) NOT NULL,
    factory_location character varying(256) NOT NULL
);


--
-- Name: genedata_sequencing_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genedata_sequencing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: genedata_sequencing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genedata_sequencing_id_seq OWNED BY public.genedata_sequencing.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: genedata_appuser id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_appuser ALTER COLUMN id SET DEFAULT nextval('public.genedata_appuser_id_seq'::regclass);


--
-- Name: genedata_attribute id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_attribute ALTER COLUMN id SET DEFAULT nextval('public.genedata_attribute_id_seq'::regclass);


--
-- Name: genedata_ec id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_ec ALTER COLUMN id SET DEFAULT nextval('public.genedata_ec_id_seq'::regclass);


--
-- Name: genedata_gene id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_gene ALTER COLUMN id SET DEFAULT nextval('public.genedata_gene_id_seq'::regclass);


--
-- Name: genedata_geneattributelink id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_geneattributelink ALTER COLUMN id SET DEFAULT nextval('public.genedata_geneattributelink_id_seq'::regclass);


--
-- Name: genedata_product id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_product ALTER COLUMN id SET DEFAULT nextval('public.genedata_product_id_seq'::regclass);


--
-- Name: genedata_sequencing id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_sequencing ALTER COLUMN id SET DEFAULT nextval('public.genedata_sequencing_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
1	Standard
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	4
3	1	5
4	1	8
5	1	41
6	1	9
7	1	44
8	1	12
9	1	13
10	1	45
11	1	16
12	1	17
13	1	48
14	1	20
15	1	21
16	1	24
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add attribute	1	add_attribute
2	Can change attribute	1	change_attribute
3	Can delete attribute	1	delete_attribute
4	Can view attribute	1	view_attribute
5	Can add ec	2	add_ec
6	Can change ec	2	change_ec
7	Can delete ec	2	delete_ec
8	Can view ec	2	view_ec
9	Can add gene	3	add_gene
10	Can change gene	3	change_gene
11	Can delete gene	3	delete_gene
12	Can view gene	3	view_gene
13	Can add sequencing	4	add_sequencing
14	Can change sequencing	4	change_sequencing
15	Can delete sequencing	4	delete_sequencing
16	Can view sequencing	4	view_sequencing
17	Can add product	5	add_product
18	Can change product	5	change_product
19	Can delete product	5	delete_product
20	Can view product	5	view_product
21	Can add gene attribute link	6	add_geneattributelink
22	Can change gene attribute link	6	change_geneattributelink
23	Can delete gene attribute link	6	delete_geneattributelink
24	Can view gene attribute link	6	view_geneattributelink
25	Can add log entry	7	add_logentry
26	Can change log entry	7	change_logentry
27	Can delete log entry	7	delete_logentry
28	Can view log entry	7	view_logentry
29	Can add permission	8	add_permission
30	Can change permission	8	change_permission
31	Can delete permission	8	delete_permission
32	Can view permission	8	view_permission
33	Can add group	9	add_group
34	Can change group	9	change_group
35	Can delete group	9	delete_group
36	Can view group	9	view_group
37	Can add user	10	add_user
38	Can change user	10	change_user
39	Can delete user	10	delete_user
40	Can view user	10	view_user
41	Can add content type	11	add_contenttype
42	Can change content type	11	change_contenttype
43	Can delete content type	11	delete_contenttype
44	Can view content type	11	view_contenttype
45	Can add session	12	add_session
46	Can change session	12	change_session
47	Can delete session	12	delete_session
48	Can view session	12	view_session
49	Can add app user	13	add_appuser
50	Can change app user	13	change_appuser
51	Can delete app user	13	delete_appuser
52	Can view app user	13	view_appuser
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$600000$TWiWFMpHP78KpmTDWTTTXq$UWgOijYO+q4simBnEokDFAi8+fUHG1l7DS2r+tg6fAI=	2025-07-08 10:47:44.77021-02	t	admin			a@gmail.com	t	t	2025-07-08 10:38:58.951105-02
2	pbkdf2_sha256$216000$MqcIWKZ70w4k$v7p79vB3z2sA8al+ErZcn9aHjCpei849rF+zmOZe+kc=	2025-08-20 10:15:29.907062-02	t	thomas				t	t	2025-08-15 14:31:27.404184-02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2025-07-08 11:00:27.784737-02	1	oxireductase	1	[{"added": {}}]	2	1
2	2025-07-08 11:00:37.16442-02	1	Sanger	1	[{"added": {}}]	4	1
3	2025-07-08 11:00:59.769204-02	1	Gene1	1	[{"added": {}}]	3	1
4	2025-07-08 11:06:58.000398-02	1	Product object (1)	1	[{"added": {}}]	5	1
5	2025-07-08 11:07:15.369108-02	1	biotype : protein	1	[{"added": {}}]	1	1
6	2025-07-08 11:07:29.740134-02	1	Gene1	2	[{"added": {"name": "gene attribute link", "object": "GeneAttributeLink object (1)"}}]	3	1
7	2025-08-15 14:33:00.481075-02	3	fred	1	[{"added": {}}]	10	2
8	2025-08-15 14:35:56.440681-02	3	fred	2	[{"changed": {"fields": ["First name", "Last name", "Email address", "User permissions"]}}]	10	2
9	2025-08-15 14:37:56.43544-02	1	Standard	1	[{"added": {}}]	9	2
10	2025-08-15 14:38:43.053758-02	3	fred	2	[{"changed": {"fields": ["Groups"]}}]	10	2
11	2025-08-15 14:38:59.613086-02	3	fred	3		10	2
12	2025-08-16 13:13:48.556187-02	5	sdfsdf	3		10	2
13	2025-08-16 13:13:48.565666-02	6	sdfsdfsdf	3		10	2
14	2025-08-16 13:13:57.199913-02	4	francois	3		10	2
15	2025-08-16 13:19:05.296268-02	7	fsdfdsf	3		10	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	genedata	attribute
2	genedata	ec
3	genedata	gene
4	genedata	sequencing
5	genedata	product
6	genedata	geneattributelink
7	admin	logentry
8	auth	permission
9	auth	group
10	auth	user
11	contenttypes	contenttype
12	sessions	session
13	genedata	appuser
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-07-06 10:35:45.830959-02
2	auth	0001_initial	2025-07-06 10:35:45.855033-02
3	admin	0001_initial	2025-07-06 10:35:45.867008-02
4	admin	0002_logentry_remove_auto_add	2025-07-06 10:35:45.879322-02
5	admin	0003_logentry_add_action_flag_choices	2025-07-06 10:35:45.887408-02
6	contenttypes	0002_remove_content_type_name	2025-07-06 10:35:45.899417-02
7	auth	0002_alter_permission_name_max_length	2025-07-06 10:35:45.902689-02
8	auth	0003_alter_user_email_max_length	2025-07-06 10:35:45.908151-02
9	auth	0004_alter_user_username_opts	2025-07-06 10:35:45.91368-02
10	auth	0005_alter_user_last_login_null	2025-07-06 10:35:45.919269-02
11	auth	0006_require_contenttypes_0002	2025-07-06 10:35:45.92093-02
12	auth	0007_alter_validators_add_error_messages	2025-07-06 10:35:45.926018-02
13	auth	0008_alter_user_username_max_length	2025-07-06 10:35:45.932375-02
14	auth	0009_alter_user_last_name_max_length	2025-07-06 10:35:45.939354-02
15	auth	0010_alter_group_name_max_length	2025-07-06 10:35:45.945455-02
16	auth	0011_update_proxy_permissions	2025-07-06 10:35:45.953937-02
17	genedata	0001_initial	2025-07-06 10:35:45.980352-02
18	sessions	0001_initial	2025-07-06 10:35:45.990285-02
19	genedata	0002_auto_20250708_1231	2025-07-08 10:32:10.761854-02
20	auth	0012_alter_user_first_name_max_length	2025-07-08 10:46:55.103158-02
21	genedata	0002_auto_20200805_1452	2025-07-15 12:36:44.775021-02
22	genedata	0003_gene_access	2025-07-15 12:36:44.792492-02
23	genedata	0004_merge_0002_auto_20250708_1231_0003_gene_access	2025-07-15 12:36:44.79509-02
24	genedata	0005_alter_attribute_id_alter_ec_id_alter_gene_id_and_more	2025-07-15 12:58:18.804549-02
25	genedata	0004_appuser	2025-08-16 13:12:40.202406-02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
dxoyw1h2a688g5xf9tgpm6b0zqx1ztf3	.eJxVjM0OwiAQhN-FsyEsVH48evcZyLKAVA0kpT0Z312a9KBzm_lm5s08bmvxW0-LnyO7MGCn3ywgPVPdQXxgvTdOra7LHPhe4Qft_NZiel2P7t9BwV7GGtEGcJl0BKEEgE0QjHXibIMjqcBEqQxhcjmHyQ4nbU5k9ARqSCP7fAHabzdy:1uZ7jc:isgo-b3rk3T_GdWFMZHMfLvL0zHTuZ86LJ1882muZS0	2025-07-22 10:47:44.772541-02
h222im307e71jlhuskqmias85j0f3iqp	.eJxVjMsOwiAQRf-FtSFAGR4u3fsNZDpDpWogKe3K-O_apAvd3nPOfYmE21rS1vOSZhZnYcTpdxuRHrnugO9Yb01Sq-syj3JX5EG7vDbOz8vh_h0U7OVbB8YhRhcsokHPk1LkEYxlPVgmHSxAJJN9DmpwRpM1LmpNfmIPETyI9wfSljbv:1unIbB:s7uv16ieKRkrC16Mepnwzs3r5nV9S-oEAbHmlW0BuvE	2025-08-30 13:13:37.402607-02
g8t6qlb3ksphsvv06hvumcjf7ovxtpbs	.eJxVjMsOwiAQRf-FtSFAGR4u3fsNZDpDpWogKe3K-O_apAvd3nPOfYmE21rS1vOSZhZnYcTpdxuRHrnugO9Yb01Sq-syj3JX5EG7vDbOz8vh_h0U7OVbB8YhRhcsokHPk1LkEYxlPVgmHSxAJJN9DmpwRpM1LmpNfmIPETyI9wfSljbv:1unIgI:91jBJybd7hw9uE29llx-T6xV64n3b-HqiuzsbtCCUoQ	2025-08-30 13:18:54.886544-02
ajuo5ots8rehltyyax5evjznprzn9z62	.eJxVjMsOwiAQRf-FtSFAGR4u3fsNZDpDpWogKe3K-O_apAvd3nPOfYmE21rS1vOSZhZnYcTpdxuRHrnugO9Yb01Sq-syj3JX5EG7vDbOz8vh_h0U7OVbB8YhRhcsokHPk1LkEYxlPVgmHSxAJJN9DmpwRpM1LmpNfmIPETyI9wfSljbv:1unIjX:ooTJe4SUSKh-U-OESqxs5lK9PMmiQRcaG3ir6RCQ180	2025-08-30 13:22:15.321874-02
t12dutr9lrkp72saes6h5lov8pb94z2l	.eJxVjMsOwiAQRf-FtSFAGR4u3fsNZDpDpWogKe3K-O_apAvd3nPOfYmE21rS1vOSZhZnYcTpdxuRHrnugO9Yb01Sq-syj3JX5EG7vDbOz8vh_h0U7OVbB8YhRhcsokHPk1LkEYxlPVgmHSxAJJN9DmpwRpM1LmpNfmIPETyI9wfSljbv:1uohiz:Nm41TyS5Y_G1f7qjoC744JDMDRDd68Ulsp7a5udovXo	2025-09-03 10:15:29.909122-02
\.


--
-- Data for Name: genedata_appuser; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genedata_appuser (id, organisation, user_id) FROM stdin;
\.


--
-- Data for Name: genedata_attribute; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genedata_attribute (id, key, value) FROM stdin;
2	ID	b001
3	Name	thrL
4	biotype	protein_coding
5	description	Fructokinase
6	ID	b002
7	Name	fasT
8	biotype	protein_coding
9	ID	b003
10	Name	speK
11	biotype	protein_coding
12	biotype	protein_coding
13	biotype	protein_coding
\.


--
-- Data for Name: genedata_ec; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genedata_ec (id, ec_name) FROM stdin;
12	oxidoreductase
13	transferase
14	dehydrogenase
15	ligase
\.


--
-- Data for Name: genedata_gene; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genedata_gene (id, gene_id, entity, start, stop, sense, start_codon, ec_id, sequencing_id, access) FROM stdin;
13	Gene2	Chromosome	375	566	-	M	13	12	23
16	Gene5	Plasmid	786	888	U	M	13	12	18
15	Gene4	Plasmid	558	696	U	M	13	12	20
17	Gene1	Chromosome	190	255	+	M	12	12	3
18	Gene6	Chromosome	234	567	+	M	13	12	0
14	Gene3	Chromosome	780	980	-	M	12	12	24
\.


--
-- Data for Name: genedata_geneattributelink; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genedata_geneattributelink (id, attribute_id, gene_id) FROM stdin;
6	6	13
7	7	13
8	8	13
9	9	14
10	10	14
11	11	14
12	12	15
13	13	16
\.


--
-- Data for Name: genedata_product; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genedata_product (id, type, product, gene_id) FROM stdin;
\.


--
-- Data for Name: genedata_sequencing; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genedata_sequencing (id, sequencing_factory, factory_location) FROM stdin;
12	Sanger	UK
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 16, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 14, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 15, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: genedata_appuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genedata_appuser_id_seq', 2, true);


--
-- Name: genedata_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genedata_attribute_id_seq', 13, true);


--
-- Name: genedata_ec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genedata_ec_id_seq', 15, true);


--
-- Name: genedata_gene_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genedata_gene_id_seq', 18, true);


--
-- Name: genedata_geneattributelink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genedata_geneattributelink_id_seq', 13, true);


--
-- Name: genedata_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genedata_product_id_seq', 11, true);


--
-- Name: genedata_sequencing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genedata_sequencing_id_seq', 12, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: genedata_appuser genedata_appuser_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_appuser
    ADD CONSTRAINT genedata_appuser_pkey PRIMARY KEY (id);


--
-- Name: genedata_appuser genedata_appuser_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_appuser
    ADD CONSTRAINT genedata_appuser_user_id_key UNIQUE (user_id);


--
-- Name: genedata_attribute genedata_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_attribute
    ADD CONSTRAINT genedata_attribute_pkey PRIMARY KEY (id);


--
-- Name: genedata_ec genedata_ec_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_ec
    ADD CONSTRAINT genedata_ec_pkey PRIMARY KEY (id);


--
-- Name: genedata_gene genedata_gene_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_gene
    ADD CONSTRAINT genedata_gene_pkey PRIMARY KEY (id);


--
-- Name: genedata_geneattributelink genedata_geneattributelink_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_geneattributelink
    ADD CONSTRAINT genedata_geneattributelink_pkey PRIMARY KEY (id);


--
-- Name: genedata_product genedata_product_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_product
    ADD CONSTRAINT genedata_product_pkey PRIMARY KEY (id);


--
-- Name: genedata_sequencing genedata_sequencing_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_sequencing
    ADD CONSTRAINT genedata_sequencing_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: genedata_gene_ec_id_c7d59001; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX genedata_gene_ec_id_c7d59001 ON public.genedata_gene USING btree (ec_id);


--
-- Name: genedata_gene_gene_id_eae60e91; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX genedata_gene_gene_id_eae60e91 ON public.genedata_gene USING btree (gene_id);


--
-- Name: genedata_gene_gene_id_eae60e91_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX genedata_gene_gene_id_eae60e91_like ON public.genedata_gene USING btree (gene_id varchar_pattern_ops);


--
-- Name: genedata_gene_sequencing_id_a1edf45e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX genedata_gene_sequencing_id_a1edf45e ON public.genedata_gene USING btree (sequencing_id);


--
-- Name: genedata_geneattributelink_attribute_id_0ae8a52a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX genedata_geneattributelink_attribute_id_0ae8a52a ON public.genedata_geneattributelink USING btree (attribute_id);


--
-- Name: genedata_geneattributelink_gene_id_ed1a4517; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX genedata_geneattributelink_gene_id_ed1a4517 ON public.genedata_geneattributelink USING btree (gene_id);


--
-- Name: genedata_product_gene_id_739ec280; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX genedata_product_gene_id_739ec280 ON public.genedata_product USING btree (gene_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: genedata_appuser genedata_appuser_user_id_283a3a0b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_appuser
    ADD CONSTRAINT genedata_appuser_user_id_283a3a0b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: genedata_gene genedata_gene_ec_id_c7d59001_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_gene
    ADD CONSTRAINT genedata_gene_ec_id_c7d59001_fk FOREIGN KEY (ec_id) REFERENCES public.genedata_ec(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: genedata_gene genedata_gene_sequencing_id_a1edf45e_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_gene
    ADD CONSTRAINT genedata_gene_sequencing_id_a1edf45e_fk FOREIGN KEY (sequencing_id) REFERENCES public.genedata_sequencing(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: genedata_geneattributelink genedata_geneattributelink_attribute_id_0ae8a52a_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_geneattributelink
    ADD CONSTRAINT genedata_geneattributelink_attribute_id_0ae8a52a_fk FOREIGN KEY (attribute_id) REFERENCES public.genedata_attribute(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: genedata_geneattributelink genedata_geneattributelink_gene_id_ed1a4517_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_geneattributelink
    ADD CONSTRAINT genedata_geneattributelink_gene_id_ed1a4517_fk FOREIGN KEY (gene_id) REFERENCES public.genedata_gene(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: genedata_product genedata_product_gene_id_739ec280_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genedata_product
    ADD CONSTRAINT genedata_product_gene_id_739ec280_fk FOREIGN KEY (gene_id) REFERENCES public.genedata_gene(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

