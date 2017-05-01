--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.9
-- Dumped by pg_dump version 9.4.9
-- Started on 2017-01-15 13:54:34 VET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 2299 (class 1262 OID 16385)
-- Name: prospectos; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE prospectos WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_VE.UTF-8' LC_CTYPE = 'es_VE.UTF-8';


ALTER DATABASE prospectos OWNER TO postgres;

\connect prospectos

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1 (class 3079 OID 11861)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2302 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 174 (class 1259 OID 16394)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 16404)
-- Name: marcas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE marcas (
    id integer NOT NULL,
    descripcion character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE marcas OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 16402)
-- Name: marcas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE marcas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE marcas_id_seq OWNER TO postgres;

--
-- TOC entry 2303 (class 0 OID 0)
-- Dependencies: 175
-- Name: marcas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE marcas_id_seq OWNED BY marcas.id;


--
-- TOC entry 206 (class 1259 OID 16623)
-- Name: planes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE planes (
    id integer NOT NULL,
    descripcion character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE planes OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16621)
-- Name: planes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE planes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE planes_id_seq OWNER TO postgres;

--
-- TOC entry 2304 (class 0 OID 0)
-- Dependencies: 205
-- Name: planes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE planes_id_seq OWNED BY planes.id;


--
-- TOC entry 178 (class 1259 OID 16415)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE productos (
    id integer NOT NULL,
    descripcion character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE productos OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 16413)
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE productos_id_seq OWNER TO postgres;

--
-- TOC entry 2305 (class 0 OID 0)
-- Dependencies: 177
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE productos_id_seq OWNED BY productos.id;


--
-- TOC entry 182 (class 1259 OID 16437)
-- Name: promedio_horas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE promedio_horas (
    id integer NOT NULL,
    descripcion character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE promedio_horas OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16435)
-- Name: promedio_horas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE promedio_horas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE promedio_horas_id_seq OWNER TO postgres;

--
-- TOC entry 2306 (class 0 OID 0)
-- Dependencies: 181
-- Name: promedio_horas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE promedio_horas_id_seq OWNED BY promedio_horas.id;


--
-- TOC entry 180 (class 1259 OID 16426)
-- Name: promedio_mes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE promedio_mes (
    id integer NOT NULL,
    descripcion character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE promedio_mes OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 16424)
-- Name: promedio_mes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE promedio_mes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE promedio_mes_id_seq OWNER TO postgres;

--
-- TOC entry 2307 (class 0 OID 0)
-- Dependencies: 179
-- Name: promedio_mes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE promedio_mes_id_seq OWNED BY promedio_mes.id;


--
-- TOC entry 214 (class 1259 OID 16697)
-- Name: prospecto_cliente_productos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prospecto_cliente_productos (
    id integer NOT NULL,
    prospecto_id integer,
    producto_id integer,
    cantidad integer,
    fecha_entrega date,
    fecha_reposicion date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE prospecto_cliente_productos OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16695)
-- Name: prospecto_cliente_productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prospecto_cliente_productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prospecto_cliente_productos_id_seq OWNER TO postgres;

--
-- TOC entry 2308 (class 0 OID 0)
-- Dependencies: 213
-- Name: prospecto_cliente_productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prospecto_cliente_productos_id_seq OWNED BY prospecto_cliente_productos.id;


--
-- TOC entry 192 (class 1259 OID 16501)
-- Name: prospecto_correos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prospecto_correos (
    id integer NOT NULL,
    prospecto_id integer,
    correo character varying,
    tipo_correo_id integer,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE prospecto_correos OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16499)
-- Name: prospecto_correos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prospecto_correos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prospecto_correos_id_seq OWNER TO postgres;

--
-- TOC entry 2309 (class 0 OID 0)
-- Dependencies: 191
-- Name: prospecto_correos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prospecto_correos_id_seq OWNED BY prospecto_correos.id;


--
-- TOC entry 216 (class 1259 OID 16717)
-- Name: prospecto_marcas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prospecto_marcas (
    id integer NOT NULL,
    prospecto_id integer,
    marca_id integer,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE prospecto_marcas OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16715)
-- Name: prospecto_marcas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prospecto_marcas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prospecto_marcas_id_seq OWNER TO postgres;

--
-- TOC entry 2310 (class 0 OID 0)
-- Dependencies: 215
-- Name: prospecto_marcas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prospecto_marcas_id_seq OWNED BY prospecto_marcas.id;


--
-- TOC entry 194 (class 1259 OID 16524)
-- Name: prospecto_ocupaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prospecto_ocupaciones (
    id integer NOT NULL,
    prospecto_id integer,
    ocupacion character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE prospecto_ocupaciones OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 16522)
-- Name: prospecto_ocupaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prospecto_ocupaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prospecto_ocupaciones_id_seq OWNER TO postgres;

--
-- TOC entry 2311 (class 0 OID 0)
-- Dependencies: 193
-- Name: prospecto_ocupaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prospecto_ocupaciones_id_seq OWNED BY prospecto_ocupaciones.id;


--
-- TOC entry 210 (class 1259 OID 16654)
-- Name: prospecto_planes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prospecto_planes (
    id integer NOT NULL,
    prospecto_id integer,
    usuario_id integer,
    plan_id integer,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE prospecto_planes OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16652)
-- Name: prospecto_planes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prospecto_planes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prospecto_planes_id_seq OWNER TO postgres;

--
-- TOC entry 2312 (class 0 OID 0)
-- Dependencies: 209
-- Name: prospecto_planes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prospecto_planes_id_seq OWNED BY prospecto_planes.id;


--
-- TOC entry 212 (class 1259 OID 16680)
-- Name: prospecto_referidos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prospecto_referidos (
    id integer NOT NULL,
    prospecto_id integer,
    nombre_referido character varying,
    ocupacion_referido character varying,
    telefono_referido integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE prospecto_referidos OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16678)
-- Name: prospecto_referidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prospecto_referidos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prospecto_referidos_id_seq OWNER TO postgres;

--
-- TOC entry 2313 (class 0 OID 0)
-- Dependencies: 211
-- Name: prospecto_referidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prospecto_referidos_id_seq OWNED BY prospecto_referidos.id;


--
-- TOC entry 204 (class 1259 OID 16594)
-- Name: prospecto_seguimientos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prospecto_seguimientos (
    id integer NOT NULL,
    prospecto_id integer,
    escala_interes integer,
    ayuda_subir_nivel character varying,
    fecha_proxima_reunion date,
    aspira_salario double precision,
    promedio_hora_id integer,
    promedio_mes_id integer,
    dispuesto_a_comenzar boolean,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE prospecto_seguimientos OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16592)
-- Name: prospecto_seguimientos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prospecto_seguimientos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prospecto_seguimientos_id_seq OWNER TO postgres;

--
-- TOC entry 2314 (class 0 OID 0)
-- Dependencies: 203
-- Name: prospecto_seguimientos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prospecto_seguimientos_id_seq OWNED BY prospecto_seguimientos.id;


--
-- TOC entry 198 (class 1259 OID 16552)
-- Name: prospecto_telefonos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prospecto_telefonos (
    id integer NOT NULL,
    prospecto_id integer,
    telefono integer,
    tipo_telefono_id integer,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE prospecto_telefonos OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16550)
-- Name: prospecto_telefonos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prospecto_telefonos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prospecto_telefonos_id_seq OWNER TO postgres;

--
-- TOC entry 2315 (class 0 OID 0)
-- Dependencies: 197
-- Name: prospecto_telefonos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prospecto_telefonos_id_seq OWNED BY prospecto_telefonos.id;


--
-- TOC entry 188 (class 1259 OID 16470)
-- Name: prospecto_usuarios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prospecto_usuarios (
    id integer NOT NULL,
    prospecto_id integer,
    usuario_id integer,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE prospecto_usuarios OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16468)
-- Name: prospecto_usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prospecto_usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prospecto_usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 2316 (class 0 OID 0)
-- Dependencies: 187
-- Name: prospecto_usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prospecto_usuarios_id_seq OWNED BY prospecto_usuarios.id;


--
-- TOC entry 184 (class 1259 OID 16448)
-- Name: prospectos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prospectos (
    id integer NOT NULL,
    primer_nombre character varying,
    segundo_nombre character varying,
    primer_apellido character varying,
    segundo_apellido character varying,
    cedula character varying,
    twitter character varying,
    facebook character varying,
    instagram character varying,
    donde_se_conocio character varying,
    google_plus character varying,
    buena_referencia character varying,
    llamar_en_seis_meses boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE prospectos OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16446)
-- Name: prospectos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prospectos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prospectos_id_seq OWNER TO postgres;

--
-- TOC entry 2317 (class 0 OID 0)
-- Dependencies: 183
-- Name: prospectos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prospectos_id_seq OWNED BY prospectos.id;


--
-- TOC entry 173 (class 1259 OID 16386)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16583)
-- Name: seguimiento_materiales; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE seguimiento_materiales (
    id integer NOT NULL,
    descripcion character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE seguimiento_materiales OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16581)
-- Name: seguimiento_materiales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE seguimiento_materiales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seguimiento_materiales_id_seq OWNER TO postgres;

--
-- TOC entry 2318 (class 0 OID 0)
-- Dependencies: 201
-- Name: seguimiento_materiales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE seguimiento_materiales_id_seq OWNED BY seguimiento_materiales.id;


--
-- TOC entry 200 (class 1259 OID 16572)
-- Name: seguimiento_respuestas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE seguimiento_respuestas (
    id integer NOT NULL,
    descripcion character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE seguimiento_respuestas OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16570)
-- Name: seguimiento_respuestas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE seguimiento_respuestas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seguimiento_respuestas_id_seq OWNER TO postgres;

--
-- TOC entry 2319 (class 0 OID 0)
-- Dependencies: 199
-- Name: seguimiento_respuestas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE seguimiento_respuestas_id_seq OWNED BY seguimiento_respuestas.id;


--
-- TOC entry 190 (class 1259 OID 16490)
-- Name: tipo_correos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_correos (
    id integer NOT NULL,
    descripcion character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE tipo_correos OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 16488)
-- Name: tipo_correos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_correos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_correos_id_seq OWNER TO postgres;

--
-- TOC entry 2320 (class 0 OID 0)
-- Dependencies: 189
-- Name: tipo_correos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_correos_id_seq OWNED BY tipo_correos.id;


--
-- TOC entry 196 (class 1259 OID 16541)
-- Name: tipo_telefonos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_telefonos (
    id integer NOT NULL,
    descripcion character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE tipo_telefonos OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 16539)
-- Name: tipo_telefonos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_telefonos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_telefonos_id_seq OWNER TO postgres;

--
-- TOC entry 2321 (class 0 OID 0)
-- Dependencies: 195
-- Name: tipo_telefonos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_telefonos_id_seq OWNED BY tipo_telefonos.id;


--
-- TOC entry 208 (class 1259 OID 16634)
-- Name: usuario_planes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario_planes (
    id integer NOT NULL,
    usuario_id integer,
    plan_id integer,
    nro_personas integer,
    fecha_asignacion date,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE usuario_planes OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16632)
-- Name: usuario_planes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_planes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_planes_id_seq OWNER TO postgres;

--
-- TOC entry 2322 (class 0 OID 0)
-- Dependencies: 207
-- Name: usuario_planes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_planes_id_seq OWNED BY usuario_planes.id;


--
-- TOC entry 186 (class 1259 OID 16459)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuarios (
    id integer NOT NULL,
    nombre character varying,
    apellido character varying,
    clave character varying,
    estatus boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet
);


ALTER TABLE usuarios OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16457)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 2323 (class 0 OID 0)
-- Dependencies: 185
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuarios_id_seq OWNED BY usuarios.id;


--
-- TOC entry 2030 (class 2604 OID 16407)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY marcas ALTER COLUMN id SET DEFAULT nextval('marcas_id_seq'::regclass);


--
-- TOC entry 2048 (class 2604 OID 16626)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY planes ALTER COLUMN id SET DEFAULT nextval('planes_id_seq'::regclass);


--
-- TOC entry 2031 (class 2604 OID 16418)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productos ALTER COLUMN id SET DEFAULT nextval('productos_id_seq'::regclass);


--
-- TOC entry 2033 (class 2604 OID 16440)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY promedio_horas ALTER COLUMN id SET DEFAULT nextval('promedio_horas_id_seq'::regclass);


--
-- TOC entry 2032 (class 2604 OID 16429)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY promedio_mes ALTER COLUMN id SET DEFAULT nextval('promedio_mes_id_seq'::regclass);


--
-- TOC entry 2052 (class 2604 OID 16700)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_cliente_productos ALTER COLUMN id SET DEFAULT nextval('prospecto_cliente_productos_id_seq'::regclass);


--
-- TOC entry 2041 (class 2604 OID 16504)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_correos ALTER COLUMN id SET DEFAULT nextval('prospecto_correos_id_seq'::regclass);


--
-- TOC entry 2053 (class 2604 OID 16720)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_marcas ALTER COLUMN id SET DEFAULT nextval('prospecto_marcas_id_seq'::regclass);


--
-- TOC entry 2042 (class 2604 OID 16527)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_ocupaciones ALTER COLUMN id SET DEFAULT nextval('prospecto_ocupaciones_id_seq'::regclass);


--
-- TOC entry 2050 (class 2604 OID 16657)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_planes ALTER COLUMN id SET DEFAULT nextval('prospecto_planes_id_seq'::regclass);


--
-- TOC entry 2051 (class 2604 OID 16683)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_referidos ALTER COLUMN id SET DEFAULT nextval('prospecto_referidos_id_seq'::regclass);


--
-- TOC entry 2047 (class 2604 OID 16597)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_seguimientos ALTER COLUMN id SET DEFAULT nextval('prospecto_seguimientos_id_seq'::regclass);


--
-- TOC entry 2044 (class 2604 OID 16555)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_telefonos ALTER COLUMN id SET DEFAULT nextval('prospecto_telefonos_id_seq'::regclass);


--
-- TOC entry 2039 (class 2604 OID 16473)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_usuarios ALTER COLUMN id SET DEFAULT nextval('prospecto_usuarios_id_seq'::regclass);


--
-- TOC entry 2034 (class 2604 OID 16451)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospectos ALTER COLUMN id SET DEFAULT nextval('prospectos_id_seq'::regclass);


--
-- TOC entry 2046 (class 2604 OID 16586)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguimiento_materiales ALTER COLUMN id SET DEFAULT nextval('seguimiento_materiales_id_seq'::regclass);


--
-- TOC entry 2045 (class 2604 OID 16575)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguimiento_respuestas ALTER COLUMN id SET DEFAULT nextval('seguimiento_respuestas_id_seq'::regclass);


--
-- TOC entry 2040 (class 2604 OID 16493)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_correos ALTER COLUMN id SET DEFAULT nextval('tipo_correos_id_seq'::regclass);


--
-- TOC entry 2043 (class 2604 OID 16544)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_telefonos ALTER COLUMN id SET DEFAULT nextval('tipo_telefonos_id_seq'::regclass);


--
-- TOC entry 2049 (class 2604 OID 16637)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_planes ALTER COLUMN id SET DEFAULT nextval('usuario_planes_id_seq'::regclass);


--
-- TOC entry 2035 (class 2604 OID 16462)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuarios ALTER COLUMN id SET DEFAULT nextval('usuarios_id_seq'::regclass);


--
-- TOC entry 2252 (class 0 OID 16394)
-- Dependencies: 174
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ar_internal_metadata VALUES ('environment', 'development', '2016-10-09 17:11:04.041538', '2016-11-19 02:47:28.741277');


--
-- TOC entry 2254 (class 0 OID 16404)
-- Dependencies: 176
-- Data for Name: marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO marcas VALUES (1, 'responsable', true, '2016-10-20 23:57:27.979818', '2016-10-20 23:57:27.979818');
INSERT INTO marcas VALUES (2, 'Exitoso', true, '2016-10-20 23:57:51.958224', '2016-10-20 23:57:51.958224');
INSERT INTO marcas VALUES (3, 'Influyente', true, '2016-10-20 23:58:04.677598', '2016-10-20 23:58:04.677598');
INSERT INTO marcas VALUES (4, 'Educable', true, '2016-10-20 23:58:16.626169', '2016-10-20 23:58:16.626169');
INSERT INTO marcas VALUES (5, 'Emprendedor', true, '2016-10-20 23:58:33.775232', '2016-10-20 23:58:33.775232');


--
-- TOC entry 2324 (class 0 OID 0)
-- Dependencies: 175
-- Name: marcas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('marcas_id_seq', 5, true);


--
-- TOC entry 2284 (class 0 OID 16623)
-- Dependencies: 206
-- Data for Name: planes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO planes VALUES (1, 'Primer Plan', true, '2016-10-21 00:05:36.122825', '2016-10-21 00:05:36.122825');


--
-- TOC entry 2325 (class 0 OID 0)
-- Dependencies: 205
-- Name: planes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('planes_id_seq', 1, true);


--
-- TOC entry 2256 (class 0 OID 16415)
-- Dependencies: 178
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2326 (class 0 OID 0)
-- Dependencies: 177
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('productos_id_seq', 1, false);


--
-- TOC entry 2260 (class 0 OID 16437)
-- Dependencies: 182
-- Data for Name: promedio_horas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2327 (class 0 OID 0)
-- Dependencies: 181
-- Name: promedio_horas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('promedio_horas_id_seq', 1, false);


--
-- TOC entry 2258 (class 0 OID 16426)
-- Dependencies: 180
-- Data for Name: promedio_mes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2328 (class 0 OID 0)
-- Dependencies: 179
-- Name: promedio_mes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('promedio_mes_id_seq', 1, false);


--
-- TOC entry 2292 (class 0 OID 16697)
-- Dependencies: 214
-- Data for Name: prospecto_cliente_productos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2329 (class 0 OID 0)
-- Dependencies: 213
-- Name: prospecto_cliente_productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prospecto_cliente_productos_id_seq', 1, false);


--
-- TOC entry 2270 (class 0 OID 16501)
-- Dependencies: 192
-- Data for Name: prospecto_correos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO prospecto_correos VALUES (2, 1, 'michelmoreno@gmail.com', 1, true, '2016-11-24 01:31:36.645166', '2016-11-24 01:31:36.645166');


--
-- TOC entry 2330 (class 0 OID 0)
-- Dependencies: 191
-- Name: prospecto_correos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prospecto_correos_id_seq', 2, true);


--
-- TOC entry 2294 (class 0 OID 16717)
-- Dependencies: 216
-- Data for Name: prospecto_marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2331 (class 0 OID 0)
-- Dependencies: 215
-- Name: prospecto_marcas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prospecto_marcas_id_seq', 1, false);


--
-- TOC entry 2272 (class 0 OID 16524)
-- Dependencies: 194
-- Data for Name: prospecto_ocupaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO prospecto_ocupaciones VALUES (1, 1, 'Comerciante', true, '2016-11-24 00:46:40.245325', '2016-11-24 00:46:40.245325');


--
-- TOC entry 2332 (class 0 OID 0)
-- Dependencies: 193
-- Name: prospecto_ocupaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prospecto_ocupaciones_id_seq', 1, true);


--
-- TOC entry 2288 (class 0 OID 16654)
-- Dependencies: 210
-- Data for Name: prospecto_planes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2333 (class 0 OID 0)
-- Dependencies: 209
-- Name: prospecto_planes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prospecto_planes_id_seq', 1, false);


--
-- TOC entry 2290 (class 0 OID 16680)
-- Dependencies: 212
-- Data for Name: prospecto_referidos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2334 (class 0 OID 0)
-- Dependencies: 211
-- Name: prospecto_referidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prospecto_referidos_id_seq', 1, false);


--
-- TOC entry 2282 (class 0 OID 16594)
-- Dependencies: 204
-- Data for Name: prospecto_seguimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2335 (class 0 OID 0)
-- Dependencies: 203
-- Name: prospecto_seguimientos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prospecto_seguimientos_id_seq', 1, false);


--
-- TOC entry 2276 (class 0 OID 16552)
-- Dependencies: 198
-- Data for Name: prospecto_telefonos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2336 (class 0 OID 0)
-- Dependencies: 197
-- Name: prospecto_telefonos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prospecto_telefonos_id_seq', 1, false);


--
-- TOC entry 2266 (class 0 OID 16470)
-- Dependencies: 188
-- Data for Name: prospecto_usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2337 (class 0 OID 0)
-- Dependencies: 187
-- Name: prospecto_usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prospecto_usuarios_id_seq', 1, false);


--
-- TOC entry 2262 (class 0 OID 16448)
-- Dependencies: 184
-- Data for Name: prospectos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO prospectos VALUES (2, 'Moresbi', '', 'Moreno', '', '10000001', '@moresbi', 'https://www.facebook.com/moresbi', '@moresbi', 'en reunión en la plaza', 'https://plus.google.com/u/0/+moresbi', 'Excelentes Referencias', true, '2016-10-09 20:32:42.959369', '2016-10-09 20:32:42.959369');
INSERT INTO prospectos VALUES (3, 'Emilitza', '', 'Moreno', 'Jimenez', '10000002', '@emilitza', 'https://www.facebook.com/emilitza', '@emilitza', 'Liceo', 'https://plus.google.com/u/0/+emilitza', 'Excelentes Referencias', true, '2016-10-09 20:35:14.662358', '2016-10-09 20:35:14.662358');
INSERT INTO prospectos VALUES (1, 'Michel', 'de Jesus', 'Moreno', 'Jimenez', '10000000', '@michel', 'https://www.facebook.com/michel', '@michel', 'Universidad', 'https://plus.google.com/u/0/+michel', 'Excelentes Referencias', true, '2016-10-09 20:13:02.213706', '2016-10-20 23:53:37.036055');


--
-- TOC entry 2338 (class 0 OID 0)
-- Dependencies: 183
-- Name: prospectos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prospectos_id_seq', 3, true);


--
-- TOC entry 2251 (class 0 OID 16386)
-- Dependencies: 173
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO schema_migrations VALUES ('20161006021205');
INSERT INTO schema_migrations VALUES ('20161006021231');
INSERT INTO schema_migrations VALUES ('20161006021250');
INSERT INTO schema_migrations VALUES ('20161006021259');
INSERT INTO schema_migrations VALUES ('20161006021936');
INSERT INTO schema_migrations VALUES ('20161006022018');
INSERT INTO schema_migrations VALUES ('20161006022115');
INSERT INTO schema_migrations VALUES ('20161006022229');
INSERT INTO schema_migrations VALUES ('20161006022451');
INSERT INTO schema_migrations VALUES ('20161006022606');
INSERT INTO schema_migrations VALUES ('20161006022631');
INSERT INTO schema_migrations VALUES ('20161006022726');
INSERT INTO schema_migrations VALUES ('20161006022918');
INSERT INTO schema_migrations VALUES ('20161006022929');
INSERT INTO schema_migrations VALUES ('20161006023730');
INSERT INTO schema_migrations VALUES ('20161006023826');
INSERT INTO schema_migrations VALUES ('20161006023942');
INSERT INTO schema_migrations VALUES ('20161006024136');
INSERT INTO schema_migrations VALUES ('20161006024320');
INSERT INTO schema_migrations VALUES ('20161006024431');
INSERT INTO schema_migrations VALUES ('20161006024617');
INSERT INTO schema_migrations VALUES ('20161119024432');


--
-- TOC entry 2280 (class 0 OID 16583)
-- Dependencies: 202
-- Data for Name: seguimiento_materiales; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2339 (class 0 OID 0)
-- Dependencies: 201
-- Name: seguimiento_materiales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('seguimiento_materiales_id_seq', 1, false);


--
-- TOC entry 2278 (class 0 OID 16572)
-- Dependencies: 200
-- Data for Name: seguimiento_respuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2340 (class 0 OID 0)
-- Dependencies: 199
-- Name: seguimiento_respuestas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('seguimiento_respuestas_id_seq', 1, false);


--
-- TOC entry 2268 (class 0 OID 16490)
-- Dependencies: 190
-- Data for Name: tipo_correos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_correos VALUES (1, 'Personal', true, '2016-11-24 01:32:41.184539', '2016-11-24 01:32:41.184539');


--
-- TOC entry 2341 (class 0 OID 0)
-- Dependencies: 189
-- Name: tipo_correos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_correos_id_seq', 1, true);


--
-- TOC entry 2274 (class 0 OID 16541)
-- Dependencies: 196
-- Data for Name: tipo_telefonos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2342 (class 0 OID 0)
-- Dependencies: 195
-- Name: tipo_telefonos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_telefonos_id_seq', 1, false);


--
-- TOC entry 2286 (class 0 OID 16634)
-- Dependencies: 208
-- Data for Name: usuario_planes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2343 (class 0 OID 0)
-- Dependencies: 207
-- Name: usuario_planes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_planes_id_seq', 1, false);


--
-- TOC entry 2264 (class 0 OID 16459)
-- Dependencies: 186
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usuarios VALUES (1, 'Michel', 'Moreno', '123456', true, '2016-10-21 00:04:58.072628', '2016-10-21 00:04:58.072628', '', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO usuarios VALUES (2, NULL, NULL, '90oplnm', NULL, '2016-11-19 02:50:15.002847', '2017-01-13 00:49:07.783301', 'jorgeluisguacaran@gmail.com', '$2a$11$Pn1srq/CSeaD3G8SPgB4o.UaD8vZA/wVyUg38zY6za5XpZENAkDXy', '6137ed7d951f704e30ddedafc1a2819c20c0f5e85eaa55397204a1c3268a5c23', '2017-01-13 00:49:07.781678', NULL, 6, '2016-11-24 03:01:37.199713', '2016-11-24 02:41:45.168483', '127.0.0.1', '127.0.0.1');
INSERT INTO usuarios VALUES (3, NULL, NULL, NULL, NULL, '2017-01-13 01:02:16.837925', '2017-01-13 01:02:16.889503', 'michelmoreno2000@hotmail.com', '$2a$11$a6NWC.u9F3FZqPz.srG3OuJpPrPiiQCHq2F5ozq8xRuBXyiSrEJ6i', NULL, NULL, NULL, 1, '2017-01-13 01:02:16.887659', '2017-01-13 01:02:16.887659', '127.0.0.1', '127.0.0.1');


--
-- TOC entry 2344 (class 0 OID 0)
-- Dependencies: 185
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_seq', 3, true);


--
-- TOC entry 2057 (class 2606 OID 16401)
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 2059 (class 2606 OID 16412)
-- Name: marcas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id);


--
-- TOC entry 2101 (class 2606 OID 16631)
-- Name: planes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY planes
    ADD CONSTRAINT planes_pkey PRIMARY KEY (id);


--
-- TOC entry 2061 (class 2606 OID 16423)
-- Name: productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- TOC entry 2065 (class 2606 OID 16445)
-- Name: promedio_horas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY promedio_horas
    ADD CONSTRAINT promedio_horas_pkey PRIMARY KEY (id);


--
-- TOC entry 2063 (class 2606 OID 16434)
-- Name: promedio_mes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY promedio_mes
    ADD CONSTRAINT promedio_mes_pkey PRIMARY KEY (id);


--
-- TOC entry 2117 (class 2606 OID 16702)
-- Name: prospecto_cliente_productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prospecto_cliente_productos
    ADD CONSTRAINT prospecto_cliente_productos_pkey PRIMARY KEY (id);


--
-- TOC entry 2081 (class 2606 OID 16509)
-- Name: prospecto_correos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prospecto_correos
    ADD CONSTRAINT prospecto_correos_pkey PRIMARY KEY (id);


--
-- TOC entry 2121 (class 2606 OID 16722)
-- Name: prospecto_marcas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prospecto_marcas
    ADD CONSTRAINT prospecto_marcas_pkey PRIMARY KEY (id);


--
-- TOC entry 2084 (class 2606 OID 16532)
-- Name: prospecto_ocupaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prospecto_ocupaciones
    ADD CONSTRAINT prospecto_ocupaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 2110 (class 2606 OID 16659)
-- Name: prospecto_planes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prospecto_planes
    ADD CONSTRAINT prospecto_planes_pkey PRIMARY KEY (id);


--
-- TOC entry 2113 (class 2606 OID 16688)
-- Name: prospecto_referidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prospecto_referidos
    ADD CONSTRAINT prospecto_referidos_pkey PRIMARY KEY (id);


--
-- TOC entry 2099 (class 2606 OID 16602)
-- Name: prospecto_seguimientos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prospecto_seguimientos
    ADD CONSTRAINT prospecto_seguimientos_pkey PRIMARY KEY (id);


--
-- TOC entry 2090 (class 2606 OID 16557)
-- Name: prospecto_telefonos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prospecto_telefonos
    ADD CONSTRAINT prospecto_telefonos_pkey PRIMARY KEY (id);


--
-- TOC entry 2075 (class 2606 OID 16475)
-- Name: prospecto_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prospecto_usuarios
    ADD CONSTRAINT prospecto_usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 2067 (class 2606 OID 16456)
-- Name: prospectos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prospectos
    ADD CONSTRAINT prospectos_pkey PRIMARY KEY (id);


--
-- TOC entry 2055 (class 2606 OID 16393)
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 2094 (class 2606 OID 16591)
-- Name: seguimiento_materiales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY seguimiento_materiales
    ADD CONSTRAINT seguimiento_materiales_pkey PRIMARY KEY (id);


--
-- TOC entry 2092 (class 2606 OID 16580)
-- Name: seguimiento_respuestas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY seguimiento_respuestas
    ADD CONSTRAINT seguimiento_respuestas_pkey PRIMARY KEY (id);


--
-- TOC entry 2077 (class 2606 OID 16498)
-- Name: tipo_correos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_correos
    ADD CONSTRAINT tipo_correos_pkey PRIMARY KEY (id);


--
-- TOC entry 2086 (class 2606 OID 16549)
-- Name: tipo_telefonos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_telefonos
    ADD CONSTRAINT tipo_telefonos_pkey PRIMARY KEY (id);


--
-- TOC entry 2105 (class 2606 OID 16639)
-- Name: usuario_planes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_planes
    ADD CONSTRAINT usuario_planes_pkey PRIMARY KEY (id);


--
-- TOC entry 2071 (class 2606 OID 16467)
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 2114 (class 1259 OID 16714)
-- Name: index_prospecto_cliente_productos_on_producto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_cliente_productos_on_producto_id ON prospecto_cliente_productos USING btree (producto_id);


--
-- TOC entry 2115 (class 1259 OID 16713)
-- Name: index_prospecto_cliente_productos_on_prospecto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_cliente_productos_on_prospecto_id ON prospecto_cliente_productos USING btree (prospecto_id);


--
-- TOC entry 2078 (class 1259 OID 16520)
-- Name: index_prospecto_correos_on_prospecto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_correos_on_prospecto_id ON prospecto_correos USING btree (prospecto_id);


--
-- TOC entry 2079 (class 1259 OID 16521)
-- Name: index_prospecto_correos_on_tipo_correo_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_correos_on_tipo_correo_id ON prospecto_correos USING btree (tipo_correo_id);


--
-- TOC entry 2118 (class 1259 OID 16734)
-- Name: index_prospecto_marcas_on_marca_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_marcas_on_marca_id ON prospecto_marcas USING btree (marca_id);


--
-- TOC entry 2119 (class 1259 OID 16733)
-- Name: index_prospecto_marcas_on_prospecto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_marcas_on_prospecto_id ON prospecto_marcas USING btree (prospecto_id);


--
-- TOC entry 2082 (class 1259 OID 16538)
-- Name: index_prospecto_ocupaciones_on_prospecto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_ocupaciones_on_prospecto_id ON prospecto_ocupaciones USING btree (prospecto_id);


--
-- TOC entry 2106 (class 1259 OID 16677)
-- Name: index_prospecto_planes_on_plan_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_planes_on_plan_id ON prospecto_planes USING btree (plan_id);


--
-- TOC entry 2107 (class 1259 OID 16675)
-- Name: index_prospecto_planes_on_prospecto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_planes_on_prospecto_id ON prospecto_planes USING btree (prospecto_id);


--
-- TOC entry 2108 (class 1259 OID 16676)
-- Name: index_prospecto_planes_on_usuario_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_planes_on_usuario_id ON prospecto_planes USING btree (usuario_id);


--
-- TOC entry 2111 (class 1259 OID 16694)
-- Name: index_prospecto_referidos_on_prospecto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_referidos_on_prospecto_id ON prospecto_referidos USING btree (prospecto_id);


--
-- TOC entry 2095 (class 1259 OID 16619)
-- Name: index_prospecto_seguimientos_on_promedio_hora_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_seguimientos_on_promedio_hora_id ON prospecto_seguimientos USING btree (promedio_hora_id);


--
-- TOC entry 2096 (class 1259 OID 16620)
-- Name: index_prospecto_seguimientos_on_promedio_mes_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_seguimientos_on_promedio_mes_id ON prospecto_seguimientos USING btree (promedio_mes_id);


--
-- TOC entry 2097 (class 1259 OID 16618)
-- Name: index_prospecto_seguimientos_on_prospecto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_seguimientos_on_prospecto_id ON prospecto_seguimientos USING btree (prospecto_id);


--
-- TOC entry 2087 (class 1259 OID 16568)
-- Name: index_prospecto_telefonos_on_prospecto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_telefonos_on_prospecto_id ON prospecto_telefonos USING btree (prospecto_id);


--
-- TOC entry 2088 (class 1259 OID 16569)
-- Name: index_prospecto_telefonos_on_tipo_telefono_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_telefonos_on_tipo_telefono_id ON prospecto_telefonos USING btree (tipo_telefono_id);


--
-- TOC entry 2072 (class 1259 OID 16486)
-- Name: index_prospecto_usuarios_on_prospecto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_usuarios_on_prospecto_id ON prospecto_usuarios USING btree (prospecto_id);


--
-- TOC entry 2073 (class 1259 OID 16487)
-- Name: index_prospecto_usuarios_on_usuario_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_prospecto_usuarios_on_usuario_id ON prospecto_usuarios USING btree (usuario_id);


--
-- TOC entry 2102 (class 1259 OID 16651)
-- Name: index_usuario_planes_on_plan_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_usuario_planes_on_plan_id ON usuario_planes USING btree (plan_id);


--
-- TOC entry 2103 (class 1259 OID 16650)
-- Name: index_usuario_planes_on_usuario_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_usuario_planes_on_usuario_id ON usuario_planes USING btree (usuario_id);


--
-- TOC entry 2068 (class 1259 OID 16760)
-- Name: index_usuarios_on_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_usuarios_on_email ON usuarios USING btree (email);


--
-- TOC entry 2069 (class 1259 OID 16761)
-- Name: index_usuarios_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_usuarios_on_reset_password_token ON usuarios USING btree (reset_password_token);


--
-- TOC entry 2130 (class 2606 OID 16608)
-- Name: fk_rails_2bd38e927d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_seguimientos
    ADD CONSTRAINT fk_rails_2bd38e927d FOREIGN KEY (promedio_hora_id) REFERENCES promedio_horas(id);


--
-- TOC entry 2139 (class 2606 OID 16708)
-- Name: fk_rails_34e5792e48; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_cliente_productos
    ADD CONSTRAINT fk_rails_34e5792e48 FOREIGN KEY (producto_id) REFERENCES productos(id);


--
-- TOC entry 2132 (class 2606 OID 16640)
-- Name: fk_rails_3535c4dfd0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_planes
    ADD CONSTRAINT fk_rails_3535c4dfd0 FOREIGN KEY (usuario_id) REFERENCES usuarios(id);


--
-- TOC entry 2124 (class 2606 OID 16510)
-- Name: fk_rails_3d36b993d5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_correos
    ADD CONSTRAINT fk_rails_3d36b993d5 FOREIGN KEY (prospecto_id) REFERENCES prospectos(id);


--
-- TOC entry 2128 (class 2606 OID 16563)
-- Name: fk_rails_40412b365c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_telefonos
    ADD CONSTRAINT fk_rails_40412b365c FOREIGN KEY (tipo_telefono_id) REFERENCES tipo_telefonos(id);


--
-- TOC entry 2131 (class 2606 OID 16613)
-- Name: fk_rails_5284ee8b64; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_seguimientos
    ADD CONSTRAINT fk_rails_5284ee8b64 FOREIGN KEY (promedio_mes_id) REFERENCES promedio_mes(id);


--
-- TOC entry 2122 (class 2606 OID 16476)
-- Name: fk_rails_5d4794c659; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_usuarios
    ADD CONSTRAINT fk_rails_5d4794c659 FOREIGN KEY (prospecto_id) REFERENCES prospectos(id);


--
-- TOC entry 2138 (class 2606 OID 16703)
-- Name: fk_rails_701748456a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_cliente_productos
    ADD CONSTRAINT fk_rails_701748456a FOREIGN KEY (prospecto_id) REFERENCES prospectos(id);


--
-- TOC entry 2129 (class 2606 OID 16603)
-- Name: fk_rails_712cad4963; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_seguimientos
    ADD CONSTRAINT fk_rails_712cad4963 FOREIGN KEY (prospecto_id) REFERENCES prospectos(id);


--
-- TOC entry 2135 (class 2606 OID 16665)
-- Name: fk_rails_71fc87195c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_planes
    ADD CONSTRAINT fk_rails_71fc87195c FOREIGN KEY (usuario_id) REFERENCES usuarios(id);


--
-- TOC entry 2133 (class 2606 OID 16645)
-- Name: fk_rails_749fd38400; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_planes
    ADD CONSTRAINT fk_rails_749fd38400 FOREIGN KEY (plan_id) REFERENCES planes(id);


--
-- TOC entry 2126 (class 2606 OID 16533)
-- Name: fk_rails_8bea89d5bd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_ocupaciones
    ADD CONSTRAINT fk_rails_8bea89d5bd FOREIGN KEY (prospecto_id) REFERENCES prospectos(id);


--
-- TOC entry 2137 (class 2606 OID 16689)
-- Name: fk_rails_8e6936401f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_referidos
    ADD CONSTRAINT fk_rails_8e6936401f FOREIGN KEY (prospecto_id) REFERENCES prospectos(id);


--
-- TOC entry 2134 (class 2606 OID 16660)
-- Name: fk_rails_93053d2476; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_planes
    ADD CONSTRAINT fk_rails_93053d2476 FOREIGN KEY (prospecto_id) REFERENCES prospectos(id);


--
-- TOC entry 2140 (class 2606 OID 16723)
-- Name: fk_rails_ac9c7709fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_marcas
    ADD CONSTRAINT fk_rails_ac9c7709fd FOREIGN KEY (prospecto_id) REFERENCES prospectos(id);


--
-- TOC entry 2141 (class 2606 OID 16728)
-- Name: fk_rails_aecddf4159; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_marcas
    ADD CONSTRAINT fk_rails_aecddf4159 FOREIGN KEY (marca_id) REFERENCES marcas(id);


--
-- TOC entry 2127 (class 2606 OID 16558)
-- Name: fk_rails_dc74383b7e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_telefonos
    ADD CONSTRAINT fk_rails_dc74383b7e FOREIGN KEY (prospecto_id) REFERENCES prospectos(id);


--
-- TOC entry 2125 (class 2606 OID 16515)
-- Name: fk_rails_eac3437f8f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_correos
    ADD CONSTRAINT fk_rails_eac3437f8f FOREIGN KEY (tipo_correo_id) REFERENCES tipo_correos(id);


--
-- TOC entry 2136 (class 2606 OID 16670)
-- Name: fk_rails_f04e2fd725; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_planes
    ADD CONSTRAINT fk_rails_f04e2fd725 FOREIGN KEY (plan_id) REFERENCES planes(id);


--
-- TOC entry 2123 (class 2606 OID 16481)
-- Name: fk_rails_f9f6a4d874; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prospecto_usuarios
    ADD CONSTRAINT fk_rails_f9f6a4d874 FOREIGN KEY (usuario_id) REFERENCES usuarios(id);


--
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-01-15 13:54:34 VET

--
-- PostgreSQL database dump complete
--

