--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 10.9

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: ope20181122; Type: SCHEMA; Schema: -; Owner: hscana
--

CREATE SCHEMA ope20181122;


ALTER SCHEMA ope20181122 OWNER TO hscana;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: BeamSwitchMode; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."BeamSwitchMode" (
    "beamSwitchModeId" integer NOT NULL,
    name character varying,
    description character varying
);


ALTER TABLE ope20181122."BeamSwitchMode" OWNER TO hscana;

--
-- Name: BeamSwitchMode_beamSwitchModeId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."BeamSwitchMode_beamSwitchModeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."BeamSwitchMode_beamSwitchModeId_seq" OWNER TO hscana;

--
-- Name: BeamSwitchMode_beamSwitchModeId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."BeamSwitchMode_beamSwitchModeId_seq" OWNED BY ope20181122."BeamSwitchMode"."beamSwitchModeId";


--
-- Name: Calib; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."Calib" (
    "calibId" integer NOT NULL,
    type character varying,
    "calibDate" timestamp without time zone,
    spectrograph integer,
    arm character varying,
    exptime double precision,
    "visitStart" integer,
    "visitEnd" integer
);


ALTER TABLE ope20181122."Calib" OWNER TO hscana;

--
-- Name: Calib_calibId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."Calib_calibId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."Calib_calibId_seq" OWNER TO hscana;

--
-- Name: Calib_calibId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."Calib_calibId_seq" OWNED BY ope20181122."Calib"."calibId";


--
-- Name: Exposure; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."Exposure" (
    "frameId" integer NOT NULL,
    visit integer,
    spectrograph integer,
    arm character varying,
    "armNum" integer,
    "pfsConfigId" bigint,
    ra_tel double precision,
    dec_tel double precision,
    "timeObs" timestamp without time zone,
    mjd double precision,
    exptime double precision,
    seeing double precision,
    transp double precision,
    alloc_num_iter integer,
    alloc_elapsetime double precision,
    alloc_rms_scatter double precision,
    alloc_exectime timestamp without time zone,
    "beamSwitchModeId" integer,
    "beamSwitchOffsetRA" double precision,
    "beamSwitchOffsetDec" double precision
);


ALTER TABLE ope20181122."Exposure" OWNER TO hscana;

--
-- Name: Exposure_frameId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."Exposure_frameId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."Exposure_frameId_seq" OWNER TO hscana;

--
-- Name: Exposure_frameId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."Exposure_frameId_seq" OWNED BY ope20181122."Exposure"."frameId";


--
-- Name: FiberPosition; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."FiberPosition" (
    spectrograph integer NOT NULL,
    arm character varying NOT NULL,
    "armNum" integer NOT NULL,
    "fiberId" integer NOT NULL,
    "xCenter" double precision,
    "yCenter" double precision
);


ALTER TABLE ope20181122."FiberPosition" OWNER TO hscana;

--
-- Name: InputCatalog; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."InputCatalog" (
    "catId" integer NOT NULL,
    name character varying,
    description character varying
);


ALTER TABLE ope20181122."InputCatalog" OWNER TO hscana;

--
-- Name: InputCatalog_catId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."InputCatalog_catId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."InputCatalog_catId_seq" OWNER TO hscana;

--
-- Name: InputCatalog_catId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."InputCatalog_catId_seq" OWNED BY ope20181122."InputCatalog"."catId";


--
-- Name: LineList; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."LineList" (
    "lineId" integer NOT NULL,
    name character varying,
    wavelength double precision
);


ALTER TABLE ope20181122."LineList" OWNER TO hscana;

--
-- Name: LineList_lineId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."LineList_lineId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."LineList_lineId_seq" OWNER TO hscana;

--
-- Name: LineList_lineId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."LineList_lineId_seq" OWNED BY ope20181122."LineList"."lineId";


--
-- Name: ObjType; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."ObjType" (
    "objTypeId" integer NOT NULL,
    name character varying,
    description character varying
);


ALTER TABLE ope20181122."ObjType" OWNER TO hscana;

--
-- Name: ObjType_objTypeId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."ObjType_objTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."ObjType_objTypeId_seq" OWNER TO hscana;

--
-- Name: ObjType_objTypeId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."ObjType_objTypeId_seq" OWNED BY ope20181122."ObjType"."objTypeId";


--
-- Name: ObsFiber; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."ObsFiber" (
    "obsFiberId" integer NOT NULL,
    "frameId" integer,
    "fiberId" integer,
    "pfsConfigFiberId" bigint,
    "MCS_Centroid_x_Real" double precision,
    "MCS_Centroid_y_Real" double precision
);


ALTER TABLE ope20181122."ObsFiber" OWNER TO hscana;

--
-- Name: ObsFiber_obsFiberId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."ObsFiber_obsFiberId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."ObsFiber_obsFiberId_seq" OWNER TO hscana;

--
-- Name: ObsFiber_obsFiberId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."ObsFiber_obsFiberId_seq" OWNED BY ope20181122."ObsFiber"."obsFiberId";


--
-- Name: Program; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."Program" (
    "programId" integer NOT NULL,
    name character varying,
    description character varying
);


ALTER TABLE ope20181122."Program" OWNER TO hscana;

--
-- Name: Program_programId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."Program_programId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."Program_programId_seq" OWNER TO hscana;

--
-- Name: Program_programId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."Program_programId_seq" OWNED BY ope20181122."Program"."programId";


--
-- Name: QAType; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."QAType" (
    "QAType" integer NOT NULL,
    name character varying,
    description character varying
);


ALTER TABLE ope20181122."QAType" OWNER TO hscana;

--
-- Name: QAType_QAType_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."QAType_QAType_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."QAType_QAType_seq" OWNER TO hscana;

--
-- Name: QAType_QAType_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."QAType_QAType_seq" OWNED BY ope20181122."QAType"."QAType";


--
-- Name: SpecLine; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."SpecLine" (
    "specLineId" integer NOT NULL,
    "pfsObjectId" bigint,
    "lineId" integer,
    wavelength double precision,
    z double precision,
    sigma double precision,
    area double precision,
    ew double precision,
    contlevel double precision,
    chi2 double precision
);


ALTER TABLE ope20181122."SpecLine" OWNER TO hscana;

--
-- Name: SpecLine_specLineId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."SpecLine_specLineId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."SpecLine_specLineId_seq" OWNER TO hscana;

--
-- Name: SpecLine_specLineId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."SpecLine_specLineId_seq" OWNED BY ope20181122."SpecLine"."specLineId";


--
-- Name: SpecParam; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."SpecParam" (
    "pfsObjectId" bigint NOT NULL,
    redshift double precision,
    z_mean double precision,
    z_median double precision,
    "z_percentileXX" double precision,
    "objTypeId" integer,
    flags integer,
    "processDate" timestamp without time zone,
    "pipeline1DVersion" character varying
);


ALTER TABLE ope20181122."SpecParam" OWNER TO hscana;

--
-- Name: StarSpecParam; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."StarSpecParam" (
    "pfsObejctId" bigint NOT NULL,
    "starTypeId" integer,
    velocity double precision,
    metallicity double precision,
    logg double precision,
    teff double precision,
    flags integer,
    "processDate" timestamp without time zone,
    "pipelineStellarVersion" character varying
);


ALTER TABLE ope20181122."StarSpecParam" OWNER TO hscana;

--
-- Name: StarType; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."StarType" (
    "starTypeId" integer NOT NULL,
    name character varying,
    description character varying
);


ALTER TABLE ope20181122."StarType" OWNER TO hscana;

--
-- Name: StarType_starTypeId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."StarType_starTypeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."StarType_starTypeId_seq" OWNER TO hscana;

--
-- Name: StarType_starTypeId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."StarType_starTypeId_seq" OWNED BY ope20181122."StarType"."starTypeId";


--
-- Name: Target; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."Target" (
    "targetId" bigint NOT NULL,
    "programId" integer,
    "objId" bigint,
    ra double precision,
    "dec" double precision,
    tract integer,
    patch character varying,
    priority double precision,
    "targetTypeId" integer,
    "catId" integer,
    "catObjId" bigint,
    "fiberMag_g" double precision,
    "fiberMag_r" double precision,
    "fiberMag_i" double precision,
    "fiberMag_z" double precision,
    "fiberMag_Y" double precision,
    "fiberMag_J" double precision,
    "fiducialExptime" double precision,
    photz double precision,
    "QATypeId" integer,
    "QALambdaMin" double precision,
    "QALambdaMax" double precision,
    "QAThreshold" double precision,
    "QALineFlux" double precision,
    finished boolean
);


ALTER TABLE ope20181122."Target" OWNER TO hscana;

--
-- Name: TargetType; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."TargetType" (
    "targetType" integer NOT NULL,
    name character varying,
    description character varying
);


ALTER TABLE ope20181122."TargetType" OWNER TO hscana;

--
-- Name: TargetType_targetType_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."TargetType_targetType_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."TargetType_targetType_seq" OWNER TO hscana;

--
-- Name: TargetType_targetType_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."TargetType_targetType_seq" OWNED BY ope20181122."TargetType"."targetType";


--
-- Name: Target_targetId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."Target_targetId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."Target_targetId_seq" OWNER TO hscana;

--
-- Name: Target_targetId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."Target_targetId_seq" OWNED BY ope20181122."Target"."targetId";


--
-- Name: Tile; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."Tile" (
    "tileId" integer NOT NULL,
    "programId" integer,
    tile integer,
    ra_center double precision,
    dec_center double precision,
    pa double precision
);


ALTER TABLE ope20181122."Tile" OWNER TO hscana;

--
-- Name: Tile_tileId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."Tile_tileId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."Tile_tileId_seq" OWNER TO hscana;

--
-- Name: Tile_tileId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."Tile_tileId_seq" OWNED BY ope20181122."Tile"."tileId";


--
-- Name: VisitsToCombine; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."VisitsToCombine" (
    "pfsVisitHash" bigint NOT NULL,
    targetid bigint,
    "nVisit" integer
);


ALTER TABLE ope20181122."VisitsToCombine" OWNER TO hscana;

--
-- Name: VisitsToCombine_pfsVisitHash_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."VisitsToCombine_pfsVisitHash_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."VisitsToCombine_pfsVisitHash_seq" OWNER TO hscana;

--
-- Name: VisitsToCombine_pfsVisitHash_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."VisitsToCombine_pfsVisitHash_seq" OWNED BY ope20181122."VisitsToCombine"."pfsVisitHash";


--
-- Name: _output:ga1d; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."_output:ga1d" (
    object_id bigint NOT NULL,
    obsdate timestamp without time zone,
    visit integer,
    pfsvisithash bigint,
    pipeline_version real,
    process_date timestamp without time zone,
    distance real,
    vhelio real,
    verr real,
    p_vhelio real,
    vtemplate real,
    vchi real,
    vflag boolean,
    sn real,
    teffphot_6g real,
    teffphoterr_6g real,
    loggphot_6g real,
    loggphoterr_6g real,
    vturbphot_6g real,
    mhphot_6g real,
    teffphot_7g real,
    teffphoterr_7g real,
    loggphot_7g real,
    loggphoterr_7g real,
    vturbphot_7g real,
    mhphot_7g real,
    teffphot_8g real,
    teffphoterr_8g real,
    loggphot_8g real,
    loggphoterr_8g real,
    vturbphot_8g real,
    mhphot_8g real,
    teffphot_9g real,
    teffphoterr_9g real,
    loggphot_9g real,
    loggphoterr_9g real,
    vturbphot_9g real,
    mhphot_9g real,
    teffphot_10g real,
    teffphoterr_10g real,
    loggphot_10g real,
    loggphoterr_10g real,
    vturbphot_10g real,
    mhphot_10g real,
    teffphot_11g real,
    teffphoterr_11g real,
    loggphot_11g real,
    loggphoterr_11g real,
    vturbphot_11g real,
    mhphot_11g real,
    teffphot_12g real,
    teffphoterr_12g real,
    loggphot_12g real,
    loggphoterr_12g real,
    vturbphot_12g real,
    mhphot_12g real,
    teffphot_13g real,
    teffphoterr_13g real,
    loggphot_13g real,
    loggphoterr_13g real,
    vturbphot_13g real,
    mhphot_13g real,
    teff real,
    tefferr real,
    logg real,
    loggerr real,
    vturb real,
    vturberr real,
    mh real,
    mherr real,
    alphafe real,
    alphafeerr real,
    feh real,
    feherr real,
    cfe real,
    cfeerr real,
    mgfe real,
    mgfeerr real,
    cafe real,
    cafeerr real,
    sife real,
    sifeerr real,
    tife real,
    tifeerr real,
    mnfe real,
    mnfeerr real,
    cofe real,
    cofeerr real,
    nife real,
    nifeerr real,
    bafe real,
    bafeerr real
);


ALTER TABLE ope20181122."_output:ga1d" OWNER TO hscana;

--
-- Name: _output:lam1d; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."_output:lam1d" (
    object_id bigint,
    obsdate timestamp without time zone,
    visit integer,
    pfsvisithash bigint,
    pipeline_version real,
    process_date timestamp without time zone,
    z real,
    z_err real,
    zrank integer,
    reliability real,
    class text,
    subclass text,
    abs_h_alpha_z real,
    abs_h_alpha_z_err real,
    abs_h_alpha_sigma real,
    abs_h_alpha_sigma_err real,
    abs_h_alpha_vel real,
    abs_h_alpha_vel_err real,
    abs_h_alpha_flux real,
    abs_h_alpha_flux_err real,
    abs_h_alpha_ew real,
    abs_h_alpha_ew_err real,
    abs_h_alpha_contlevel real,
    abs_h_alpha_contlevel_err real,
    abs_h_beta_z real,
    abs_h_beta_z_err real,
    abs_h_beta_sigma real,
    abs_h_beta_sigma_err real,
    abs_h_beta_vel real,
    abs_h_beta_vel_err real,
    abs_h_beta_flux real,
    abs_h_beta_flux_err real,
    abs_h_beta_ew real,
    abs_h_beta_ew_err real,
    abs_h_beta_contlevel real,
    abs_h_beta_contlevel_err real,
    abs_h_gamma_z real,
    abs_h_gamma_z_err real,
    abs_h_gamma_sigma real,
    abs_h_gamma_sigma_err real,
    abs_h_gamma_vel real,
    abs_h_gamma_vel_err real,
    abs_h_gamma_flux real,
    abs_h_gamma_flux_err real,
    abs_h_gamma_ew real,
    abs_h_gamma_ew_err real,
    abs_h_gamma_contlevel real,
    abs_h_gamma_contlevel_err real,
    abs_h_delta_z real,
    abs_h_delta_z_err real,
    abs_h_delta_sigma real,
    abs_h_delta_sigma_err real,
    abs_h_delta_vel real,
    abs_h_delta_vel_err real,
    abs_h_delta_flux real,
    abs_h_delta_flux_err real,
    abs_h_delta_ew real,
    abs_h_delta_ew_err real,
    abs_h_delta_contlevel real,
    abs_h_delta_contlevel_err real,
    neiii_3869_z real,
    neiii_3869_z_err real,
    neiii_3869_sigma real,
    neiii_3869_sigma_err real,
    neiii_3869_vel real,
    neiii_3869_vel_err real,
    neiii_3869_flux real,
    neiii_3869_flux_err real,
    neiii_3869_ew real,
    neiii_3869_ew_err real,
    neiii_3869_contlevel real,
    neiii_3869_contlevel_err real,
    h_delta_z real,
    h_delta_z_err real,
    h_delta_sigma real,
    h_delta_sigma_err real,
    h_delta_vel real,
    h_delta_vel_err real,
    h_delta_flux real,
    h_delta_flux_err real,
    h_delta_ew real,
    h_delta_ew_err real,
    h_delta_contlevel real,
    h_delta_contlevel_err real,
    h_gamma_z real,
    h_gamma_z_err real,
    h_gamma_sigma real,
    h_gamma_sigma_err real,
    h_gamma_vel real,
    h_gamma_vel_err real,
    h_gamma_flux real,
    h_gamma_flux_err real,
    h_gamma_ew real,
    h_gamma_ew_err real,
    h_gamma_contlevel real,
    h_gamma_contlevel_err real,
    h_beta_z real,
    h_beta_z_err real,
    h_beta_sigma real,
    h_beta_sigma_err real,
    h_beta_vel real,
    h_beta_vel_err real,
    h_beta_flux real,
    h_beta_flux_err real,
    h_beta_ew real,
    h_beta_ew_err real,
    h_beta_contlevel real,
    h_beta_contlevel_err real,
    oiii_5007_z real,
    oiii_5007_z_err real,
    oiii_5007_sigma real,
    oiii_5007_sigma_err real,
    oiii_5007_vel real,
    oiii_5007_vel_err real,
    oiii_5007_flux real,
    oiii_5007_flux_err real,
    oiii_5007_ew real,
    oiii_5007_ew_err real,
    oiii_5007_contlevel real,
    oiii_5007_contlevel_err real,
    oiii_4959_z real,
    oiii_4959_z_err real,
    oiii_4959_sigma real,
    oiii_4959_sigma_err real,
    oiii_4959_vel real,
    oiii_4959_vel_err real,
    oiii_4959_flux real,
    oiii_4959_flux_err real,
    oiii_4959_ew real,
    oiii_4959_ew_err real,
    oiii_4959_contlevel real,
    oiii_4959_contlevel_err real,
    hei_5876_z real,
    hei_5876_z_err real,
    hei_5876_sigma real,
    hei_5876_sigma_err real,
    hei_5876_vel real,
    hei_5876_vel_err real,
    hei_5876_flux real,
    hei_5876_flux_err real,
    hei_5876_ew real,
    hei_5876_ew_err real,
    hei_5876_contlevel real,
    hei_5876_contlevel_err real,
    oi_6300_z real,
    oi_6300_z_err real,
    oi_6300_sigma real,
    oi_6300_sigma_err real,
    oi_6300_vel real,
    oi_6300_vel_err real,
    oi_6300_flux real,
    oi_6300_flux_err real,
    oi_6300_ew real,
    oi_6300_ew_err real,
    oi_6300_contlevel real,
    oi_6300_contlevel_err real,
    nii_6548_z real,
    nii_6548_z_err real,
    nii_6548_sigma real,
    nii_6548_sigma_err real,
    nii_6548_vel real,
    nii_6548_vel_err real,
    nii_6548_flux real,
    nii_6548_flux_err real,
    nii_6548_ew real,
    nii_6548_ew_err real,
    nii_6548_contlevel real,
    nii_6548_contlevel_err real,
    h_alpha_z real,
    h_alpha_z_err real,
    h_alpha_sigma real,
    h_alpha_sigma_err real,
    h_alpha_vel real,
    h_alpha_vel_err real,
    h_alpha_flux real,
    h_alpha_flux_err real,
    h_alpha_ew real,
    h_alpha_ew_err real,
    h_alpha_contlevel real,
    h_alpha_contlevel_err real,
    nii_6584_z real,
    nii_6584_z_err real,
    nii_6584_sigma real,
    nii_6584_sigma_err real,
    nii_6584_vel real,
    nii_6584_vel_err real,
    nii_6584_flux real,
    nii_6584_flux_err real,
    nii_6584_ew real,
    nii_6584_ew_err real,
    nii_6584_contlevel real,
    nii_6584_contlevel_err real,
    sii_6717_z real,
    sii_6717_z_err real,
    sii_6717_sigma real,
    sii_6717_sigma_err real,
    sii_6717_vel real,
    sii_6717_vel_err real,
    sii_6717_flux real,
    sii_6717_flux_err real,
    sii_6717_ew real,
    sii_6717_ew_err real,
    sii_6717_contlevel real,
    sii_6717_contlevel_err real,
    sii_6731_z real,
    sii_6731_z_err real,
    sii_6731_sigma real,
    sii_6731_sigma_err real,
    sii_6731_vel real,
    sii_6731_vel_err real,
    sii_6731_flux real,
    sii_6731_flux_err real,
    sii_6731_ew real,
    sii_6731_ew_err real,
    sii_6731_contlevel real,
    sii_6731_contlevel_err real,
    ariii_7135_z real,
    ariii_7135_z_err real,
    ariii_7135_sigma real,
    ariii_7135_sigma_err real,
    ariii_7135_vel real,
    ariii_7135_vel_err real,
    ariii_7135_flux real,
    ariii_7135_flux_err real,
    ariii_7135_ew real,
    ariii_7135_ew_err real,
    ariii_7135_contlevel real,
    ariii_7135_contlevel_err real,
    oii_3729_z real,
    oii_3729_z_err real,
    oii_3729_sigma real,
    oii_3729_sigma_err real,
    oii_3729_vel real,
    oii_3729_vel_err real,
    oii_3729_flux real,
    oii_3729_flux_err real,
    oii_3729_ew real,
    oii_3729_ew_err real,
    oii_3729_contlevel real,
    oii_3729_contlevel_err real,
    oii_3726_z real,
    oii_3726_z_err real,
    oii_3726_sigma real,
    oii_3726_sigma_err real,
    oii_3726_vel real,
    oii_3726_vel_err real,
    oii_3726_flux real,
    oii_3726_flux_err real,
    oii_3726_ew real,
    oii_3726_ew_err real,
    oii_3726_contlevel real,
    oii_3726_contlevel_err real,
    civ_1550_z real,
    civ_1550_z_err real,
    civ_1550_sigma real,
    civ_1550_sigma_err real,
    civ_1550_vel real,
    civ_1550_vel_err real,
    civ_1550_flux real,
    civ_1550_flux_err real,
    civ_1550_ew real,
    civ_1550_ew_err real,
    civ_1550_contlevel real,
    civ_1550_contlevel_err real,
    civ_1548_z real,
    civ_1548_z_err real,
    civ_1548_sigma real,
    civ_1548_sigma_err real,
    civ_1548_vel real,
    civ_1548_vel_err real,
    civ_1548_flux real,
    civ_1548_flux_err real,
    civ_1548_ew real,
    civ_1548_ew_err real,
    civ_1548_contlevel real,
    civ_1548_contlevel_err real,
    ly_alpha_z real,
    ly_alpha_z_err real,
    ly_alpha_sigma real,
    ly_alpha_sigma_err real,
    ly_alpha_vel real,
    ly_alpha_vel_err real,
    ly_alpha_flux real,
    ly_alpha_flux_err real,
    ly_alpha_ew real,
    ly_alpha_ew_err real,
    ly_alpha_contlevel real,
    ly_alpha_contlevel_err real,
    oiii_4363_z real,
    oiii_4363_z_err real,
    oiii_4363_sigma real,
    oiii_4363_sigma_err real,
    oiii_4363_vel real,
    oiii_4363_vel_err real,
    oiii_4363_flux real,
    oiii_4363_flux_err real,
    oiii_4363_ew real,
    oiii_4363_ew_err real,
    oiii_4363_contlevel real,
    oiii_4363_contlevel_err real
);


ALTER TABLE ope20181122."_output:lam1d" OWNER TO hscana;

--
-- Name: gal_specline; Type: VIEW; Schema: ope20181122; Owner: hscana
--

CREATE VIEW ope20181122.gal_specline AS
 SELECT lam1d.object_id,
    target.ra,
    target."dec",
    target."programId" AS program_id,
    target."targetId" AS target_id,
    target."catId" AS cat_id,
    target."catObjId" AS cat_object_id,
    lam1d.obsdate,
    lam1d.visit,
    lam1d.pfsvisithash,
    lam1d.pipeline_version,
    lam1d.process_date,
    lam1d.z,
    lam1d.z_err,
    lam1d.zrank,
    lam1d.reliability,
    lam1d.class,
    lam1d.subclass,
    lam1d.abs_h_alpha_z,
    lam1d.abs_h_alpha_z_err,
    lam1d.abs_h_alpha_sigma,
    lam1d.abs_h_alpha_sigma_err,
    lam1d.abs_h_alpha_vel,
    lam1d.abs_h_alpha_vel_err,
    lam1d.abs_h_alpha_flux,
    lam1d.abs_h_alpha_flux_err,
    lam1d.abs_h_alpha_ew,
    lam1d.abs_h_alpha_ew_err,
    lam1d.abs_h_alpha_contlevel,
    lam1d.abs_h_alpha_contlevel_err,
    lam1d.abs_h_beta_z,
    lam1d.abs_h_beta_z_err,
    lam1d.abs_h_beta_sigma,
    lam1d.abs_h_beta_sigma_err,
    lam1d.abs_h_beta_vel,
    lam1d.abs_h_beta_vel_err,
    lam1d.abs_h_beta_flux,
    lam1d.abs_h_beta_flux_err,
    lam1d.abs_h_beta_ew,
    lam1d.abs_h_beta_ew_err,
    lam1d.abs_h_beta_contlevel,
    lam1d.abs_h_beta_contlevel_err,
    lam1d.abs_h_gamma_z,
    lam1d.abs_h_gamma_z_err,
    lam1d.abs_h_gamma_sigma,
    lam1d.abs_h_gamma_sigma_err,
    lam1d.abs_h_gamma_vel,
    lam1d.abs_h_gamma_vel_err,
    lam1d.abs_h_gamma_flux,
    lam1d.abs_h_gamma_flux_err,
    lam1d.abs_h_gamma_ew,
    lam1d.abs_h_gamma_ew_err,
    lam1d.abs_h_gamma_contlevel,
    lam1d.abs_h_gamma_contlevel_err,
    lam1d.abs_h_delta_z,
    lam1d.abs_h_delta_z_err,
    lam1d.abs_h_delta_sigma,
    lam1d.abs_h_delta_sigma_err,
    lam1d.abs_h_delta_vel,
    lam1d.abs_h_delta_vel_err,
    lam1d.abs_h_delta_flux,
    lam1d.abs_h_delta_flux_err,
    lam1d.abs_h_delta_ew,
    lam1d.abs_h_delta_ew_err,
    lam1d.abs_h_delta_contlevel,
    lam1d.abs_h_delta_contlevel_err,
    lam1d.neiii_3869_z,
    lam1d.neiii_3869_z_err,
    lam1d.neiii_3869_sigma,
    lam1d.neiii_3869_sigma_err,
    lam1d.neiii_3869_vel,
    lam1d.neiii_3869_vel_err,
    lam1d.neiii_3869_flux,
    lam1d.neiii_3869_flux_err,
    lam1d.neiii_3869_ew,
    lam1d.neiii_3869_ew_err,
    lam1d.neiii_3869_contlevel,
    lam1d.neiii_3869_contlevel_err,
    lam1d.h_delta_z,
    lam1d.h_delta_z_err,
    lam1d.h_delta_sigma,
    lam1d.h_delta_sigma_err,
    lam1d.h_delta_vel,
    lam1d.h_delta_vel_err,
    lam1d.h_delta_flux,
    lam1d.h_delta_flux_err,
    lam1d.h_delta_ew,
    lam1d.h_delta_ew_err,
    lam1d.h_delta_contlevel,
    lam1d.h_delta_contlevel_err,
    lam1d.h_gamma_z,
    lam1d.h_gamma_z_err,
    lam1d.h_gamma_sigma,
    lam1d.h_gamma_sigma_err,
    lam1d.h_gamma_vel,
    lam1d.h_gamma_vel_err,
    lam1d.h_gamma_flux,
    lam1d.h_gamma_flux_err,
    lam1d.h_gamma_ew,
    lam1d.h_gamma_ew_err,
    lam1d.h_gamma_contlevel,
    lam1d.h_gamma_contlevel_err,
    lam1d.h_beta_z,
    lam1d.h_beta_z_err,
    lam1d.h_beta_sigma,
    lam1d.h_beta_sigma_err,
    lam1d.h_beta_vel,
    lam1d.h_beta_vel_err,
    lam1d.h_beta_flux,
    lam1d.h_beta_flux_err,
    lam1d.h_beta_ew,
    lam1d.h_beta_ew_err,
    lam1d.h_beta_contlevel,
    lam1d.h_beta_contlevel_err,
    lam1d.oiii_5007_z,
    lam1d.oiii_5007_z_err,
    lam1d.oiii_5007_sigma,
    lam1d.oiii_5007_sigma_err,
    lam1d.oiii_5007_vel,
    lam1d.oiii_5007_vel_err,
    lam1d.oiii_5007_flux,
    lam1d.oiii_5007_flux_err,
    lam1d.oiii_5007_ew,
    lam1d.oiii_5007_ew_err,
    lam1d.oiii_5007_contlevel,
    lam1d.oiii_5007_contlevel_err,
    lam1d.oiii_4959_z,
    lam1d.oiii_4959_z_err,
    lam1d.oiii_4959_sigma,
    lam1d.oiii_4959_sigma_err,
    lam1d.oiii_4959_vel,
    lam1d.oiii_4959_vel_err,
    lam1d.oiii_4959_flux,
    lam1d.oiii_4959_flux_err,
    lam1d.oiii_4959_ew,
    lam1d.oiii_4959_ew_err,
    lam1d.oiii_4959_contlevel,
    lam1d.oiii_4959_contlevel_err,
    lam1d.hei_5876_z,
    lam1d.hei_5876_z_err,
    lam1d.hei_5876_sigma,
    lam1d.hei_5876_sigma_err,
    lam1d.hei_5876_vel,
    lam1d.hei_5876_vel_err,
    lam1d.hei_5876_flux,
    lam1d.hei_5876_flux_err,
    lam1d.hei_5876_ew,
    lam1d.hei_5876_ew_err,
    lam1d.hei_5876_contlevel,
    lam1d.hei_5876_contlevel_err,
    lam1d.oi_6300_z,
    lam1d.oi_6300_z_err,
    lam1d.oi_6300_sigma,
    lam1d.oi_6300_sigma_err,
    lam1d.oi_6300_vel,
    lam1d.oi_6300_vel_err,
    lam1d.oi_6300_flux,
    lam1d.oi_6300_flux_err,
    lam1d.oi_6300_ew,
    lam1d.oi_6300_ew_err,
    lam1d.oi_6300_contlevel,
    lam1d.oi_6300_contlevel_err,
    lam1d.nii_6548_z,
    lam1d.nii_6548_z_err,
    lam1d.nii_6548_sigma,
    lam1d.nii_6548_sigma_err,
    lam1d.nii_6548_vel,
    lam1d.nii_6548_vel_err,
    lam1d.nii_6548_flux,
    lam1d.nii_6548_flux_err,
    lam1d.nii_6548_ew,
    lam1d.nii_6548_ew_err,
    lam1d.nii_6548_contlevel,
    lam1d.nii_6548_contlevel_err,
    lam1d.h_alpha_z,
    lam1d.h_alpha_z_err,
    lam1d.h_alpha_sigma,
    lam1d.h_alpha_sigma_err,
    lam1d.h_alpha_vel,
    lam1d.h_alpha_vel_err,
    lam1d.h_alpha_flux,
    lam1d.h_alpha_flux_err,
    lam1d.h_alpha_ew,
    lam1d.h_alpha_ew_err,
    lam1d.h_alpha_contlevel,
    lam1d.h_alpha_contlevel_err,
    lam1d.nii_6584_z,
    lam1d.nii_6584_z_err,
    lam1d.nii_6584_sigma,
    lam1d.nii_6584_sigma_err,
    lam1d.nii_6584_vel,
    lam1d.nii_6584_vel_err,
    lam1d.nii_6584_flux,
    lam1d.nii_6584_flux_err,
    lam1d.nii_6584_ew,
    lam1d.nii_6584_ew_err,
    lam1d.nii_6584_contlevel,
    lam1d.nii_6584_contlevel_err,
    lam1d.sii_6717_z,
    lam1d.sii_6717_z_err,
    lam1d.sii_6717_sigma,
    lam1d.sii_6717_sigma_err,
    lam1d.sii_6717_vel,
    lam1d.sii_6717_vel_err,
    lam1d.sii_6717_flux,
    lam1d.sii_6717_flux_err,
    lam1d.sii_6717_ew,
    lam1d.sii_6717_ew_err,
    lam1d.sii_6717_contlevel,
    lam1d.sii_6717_contlevel_err,
    lam1d.sii_6731_z,
    lam1d.sii_6731_z_err,
    lam1d.sii_6731_sigma,
    lam1d.sii_6731_sigma_err,
    lam1d.sii_6731_vel,
    lam1d.sii_6731_vel_err,
    lam1d.sii_6731_flux,
    lam1d.sii_6731_flux_err,
    lam1d.sii_6731_ew,
    lam1d.sii_6731_ew_err,
    lam1d.sii_6731_contlevel,
    lam1d.sii_6731_contlevel_err,
    lam1d.ariii_7135_z,
    lam1d.ariii_7135_z_err,
    lam1d.ariii_7135_sigma,
    lam1d.ariii_7135_sigma_err,
    lam1d.ariii_7135_vel,
    lam1d.ariii_7135_vel_err,
    lam1d.ariii_7135_flux,
    lam1d.ariii_7135_flux_err,
    lam1d.ariii_7135_ew,
    lam1d.ariii_7135_ew_err,
    lam1d.ariii_7135_contlevel,
    lam1d.ariii_7135_contlevel_err,
    lam1d.oii_3729_z,
    lam1d.oii_3729_z_err,
    lam1d.oii_3729_sigma,
    lam1d.oii_3729_sigma_err,
    lam1d.oii_3729_vel,
    lam1d.oii_3729_vel_err,
    lam1d.oii_3729_flux,
    lam1d.oii_3729_flux_err,
    lam1d.oii_3729_ew,
    lam1d.oii_3729_ew_err,
    lam1d.oii_3729_contlevel,
    lam1d.oii_3729_contlevel_err,
    lam1d.oii_3726_z,
    lam1d.oii_3726_z_err,
    lam1d.oii_3726_sigma,
    lam1d.oii_3726_sigma_err,
    lam1d.oii_3726_vel,
    lam1d.oii_3726_vel_err,
    lam1d.oii_3726_flux,
    lam1d.oii_3726_flux_err,
    lam1d.oii_3726_ew,
    lam1d.oii_3726_ew_err,
    lam1d.oii_3726_contlevel,
    lam1d.oii_3726_contlevel_err,
    lam1d.civ_1550_z,
    lam1d.civ_1550_z_err,
    lam1d.civ_1550_sigma,
    lam1d.civ_1550_sigma_err,
    lam1d.civ_1550_vel,
    lam1d.civ_1550_vel_err,
    lam1d.civ_1550_flux,
    lam1d.civ_1550_flux_err,
    lam1d.civ_1550_ew,
    lam1d.civ_1550_ew_err,
    lam1d.civ_1550_contlevel,
    lam1d.civ_1550_contlevel_err,
    lam1d.civ_1548_z,
    lam1d.civ_1548_z_err,
    lam1d.civ_1548_sigma,
    lam1d.civ_1548_sigma_err,
    lam1d.civ_1548_vel,
    lam1d.civ_1548_vel_err,
    lam1d.civ_1548_flux,
    lam1d.civ_1548_flux_err,
    lam1d.civ_1548_ew,
    lam1d.civ_1548_ew_err,
    lam1d.civ_1548_contlevel,
    lam1d.civ_1548_contlevel_err,
    lam1d.ly_alpha_z,
    lam1d.ly_alpha_z_err,
    lam1d.ly_alpha_sigma,
    lam1d.ly_alpha_sigma_err,
    lam1d.ly_alpha_vel,
    lam1d.ly_alpha_vel_err,
    lam1d.ly_alpha_flux,
    lam1d.ly_alpha_flux_err,
    lam1d.ly_alpha_ew,
    lam1d.ly_alpha_ew_err,
    lam1d.ly_alpha_contlevel,
    lam1d.ly_alpha_contlevel_err,
    lam1d.oiii_4363_z,
    lam1d.oiii_4363_z_err,
    lam1d.oiii_4363_sigma,
    lam1d.oiii_4363_sigma_err,
    lam1d.oiii_4363_vel,
    lam1d.oiii_4363_vel_err,
    lam1d.oiii_4363_flux,
    lam1d.oiii_4363_flux_err,
    lam1d.oiii_4363_ew,
    lam1d.oiii_4363_ew_err,
    lam1d.oiii_4363_contlevel,
    lam1d.oiii_4363_contlevel_err
   FROM (ope20181122."_output:lam1d" lam1d
     LEFT JOIN ope20181122."Target" target ON ((lam1d.object_id = target."objId")));


ALTER TABLE ope20181122.gal_specline OWNER TO hscana;

--
-- Name: COLUMN gal_specline.object_id; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.object_id IS 'PFS object ID.';


--
-- Name: COLUMN gal_specline.obsdate; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.obsdate IS 'Observation date (UTC).';


--
-- Name: COLUMN gal_specline.visit; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.visit IS 'Exposure number.';


--
-- Name: COLUMN gal_specline.pfsvisithash; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.pfsvisithash IS 'Unique value defining the set of visits contributing to a reduced spectrum.';


--
-- Name: COLUMN gal_specline.pipeline_version; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.pipeline_version IS 'Pipeline version.';


--
-- Name: COLUMN gal_specline.process_date; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.process_date IS 'Processed data.';


--
-- Name: COLUMN gal_specline.z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.z_err IS 'Redshift error.';


--
-- Name: COLUMN gal_specline.zrank; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.zrank IS 'Rank of redshift candidate (best = 1)';


--
-- Name: COLUMN gal_specline.reliability; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.reliability IS 'Area of the PDF peak (dz = +/- 3.e-3)';


--
-- Name: COLUMN gal_specline.class; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.class IS 'Spectro classification.';


--
-- Name: COLUMN gal_specline.subclass; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.subclass IS 'Subclassifications.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.abs_h_alpha_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_alpha_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_beta_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.abs_h_beta_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_beta_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.abs_h_beta_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_beta_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.abs_h_beta_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_beta_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.abs_h_beta_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_beta_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.abs_h_beta_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_beta_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.abs_h_beta_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_beta_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.abs_h_gamma_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_gamma_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_delta_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.abs_h_delta_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_delta_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.abs_h_delta_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_delta_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.abs_h_delta_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_delta_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.abs_h_delta_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_delta_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.abs_h_delta_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.abs_h_delta_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.abs_h_delta_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.abs_h_delta_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.neiii_3869_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.neiii_3869_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.neiii_3869_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.neiii_3869_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.neiii_3869_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.neiii_3869_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.neiii_3869_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.neiii_3869_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.neiii_3869_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.neiii_3869_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.neiii_3869_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.neiii_3869_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.neiii_3869_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_delta_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.h_delta_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_delta_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.h_delta_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_delta_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.h_delta_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_delta_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.h_delta_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_delta_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.h_delta_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_delta_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.h_delta_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_delta_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_gamma_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.h_gamma_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_gamma_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.h_gamma_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_gamma_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.h_gamma_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_gamma_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.h_gamma_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_gamma_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.h_gamma_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_gamma_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.h_gamma_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_gamma_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_beta_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.h_beta_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_beta_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.h_beta_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_beta_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.h_beta_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_beta_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.h_beta_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_beta_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.h_beta_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_beta_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.h_beta_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_beta_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_5007_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.oiii_5007_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_5007_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oiii_5007_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_5007_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oiii_5007_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_5007_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.oiii_5007_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_5007_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.oiii_5007_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_5007_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.oiii_5007_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_5007_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4959_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.oiii_4959_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4959_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oiii_4959_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4959_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oiii_4959_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4959_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.oiii_4959_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4959_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.oiii_4959_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4959_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.oiii_4959_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4959_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.hei_5876_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.hei_5876_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.hei_5876_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.hei_5876_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.hei_5876_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.hei_5876_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.hei_5876_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.hei_5876_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.hei_5876_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.hei_5876_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.hei_5876_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.hei_5876_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.hei_5876_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oi_6300_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.oi_6300_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oi_6300_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oi_6300_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oi_6300_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oi_6300_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oi_6300_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.oi_6300_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oi_6300_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.oi_6300_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oi_6300_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.oi_6300_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oi_6300_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6548_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.nii_6548_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6548_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.nii_6548_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6548_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.nii_6548_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6548_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.nii_6548_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6548_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.nii_6548_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6548_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.nii_6548_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6548_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_alpha_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.h_alpha_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_alpha_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.h_alpha_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_alpha_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.h_alpha_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_alpha_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.h_alpha_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_alpha_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.h_alpha_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.h_alpha_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.h_alpha_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.h_alpha_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6584_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.nii_6584_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6584_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.nii_6584_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6584_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.nii_6584_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6584_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.nii_6584_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6584_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.nii_6584_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.nii_6584_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.nii_6584_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.nii_6584_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6717_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.sii_6717_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6717_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.sii_6717_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6717_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.sii_6717_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6717_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.sii_6717_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6717_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.sii_6717_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6717_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.sii_6717_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6717_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6731_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.sii_6731_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6731_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.sii_6731_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6731_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.sii_6731_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6731_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.sii_6731_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6731_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.sii_6731_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.sii_6731_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.sii_6731_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.sii_6731_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ariii_7135_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.ariii_7135_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ariii_7135_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.ariii_7135_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ariii_7135_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.ariii_7135_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ariii_7135_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.ariii_7135_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ariii_7135_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.ariii_7135_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ariii_7135_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.ariii_7135_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ariii_7135_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3729_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.oii_3729_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3729_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oii_3729_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3729_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oii_3729_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3729_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.oii_3729_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3729_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.oii_3729_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3729_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.oii_3729_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3729_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3726_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.oii_3726_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3726_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oii_3726_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3726_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oii_3726_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3726_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.oii_3726_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3726_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.oii_3726_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oii_3726_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.oii_3726_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oii_3726_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1550_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.civ_1550_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1550_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.civ_1550_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1550_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.civ_1550_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1550_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.civ_1550_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1550_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.civ_1550_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1550_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.civ_1550_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1550_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1548_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.civ_1548_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1548_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.civ_1548_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1548_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.civ_1548_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1548_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.civ_1548_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1548_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.civ_1548_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.civ_1548_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.civ_1548_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.civ_1548_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ly_alpha_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.ly_alpha_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ly_alpha_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.ly_alpha_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ly_alpha_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.ly_alpha_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ly_alpha_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.ly_alpha_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ly_alpha_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.ly_alpha_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.ly_alpha_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.ly_alpha_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.ly_alpha_contlevel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4363_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_z IS 'Redshift.';


--
-- Name: COLUMN gal_specline.oiii_4363_z_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_z_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4363_sigma; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_sigma IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oiii_4363_sigma_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_sigma_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4363_vel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_vel IS 'Gaussian width.';


--
-- Name: COLUMN gal_specline.oiii_4363_vel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_vel_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4363_flux; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_flux IS 'Area in gaussian fit.';


--
-- Name: COLUMN gal_specline.oiii_4363_flux_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_flux_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4363_ew; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_ew IS 'Equivalent width.';


--
-- Name: COLUMN gal_specline.oiii_4363_ew_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_ew_err IS 'Error of above.';


--
-- Name: COLUMN gal_specline.oiii_4363_contlevel; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_contlevel IS 'Continuum level at line center.';


--
-- Name: COLUMN gal_specline.oiii_4363_contlevel_err; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.gal_specline.oiii_4363_contlevel_err IS 'Error of above.';


--
-- Name: pfsArm; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."pfsArm" (
    "frameId" integer NOT NULL,
    spectrograph integer,
    arm character varying,
    "armNum" integer,
    "skyModel" character varying,
    "psfModel" character varying,
    flags integer,
    "processDate" timestamp without time zone,
    "pipeline2DVersion" character varying
);


ALTER TABLE ope20181122."pfsArm" OWNER TO hscana;

--
-- Name: pfsArmObj; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."pfsArmObj" (
    "pfsArmObjId" bigint NOT NULL,
    "frameId" integer,
    spectrograph integer,
    arm character varying,
    "armNum" integer,
    "pfsConfigFiberId" bigint,
    flags integer,
    "QAValue" double precision
);


ALTER TABLE ope20181122."pfsArmObj" OWNER TO hscana;

--
-- Name: pfsArmObj_pfsArmObjId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."pfsArmObj_pfsArmObjId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."pfsArmObj_pfsArmObjId_seq" OWNER TO hscana;

--
-- Name: pfsArmObj_pfsArmObjId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."pfsArmObj_pfsArmObjId_seq" OWNED BY ope20181122."pfsArmObj"."pfsArmObjId";


--
-- Name: pfsConfig; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."pfsConfig" (
    "pfsConfigId" bigint NOT NULL,
    "tileId" integer,
    num_target integer,
    num_allocated integer,
    exptime double precision,
    obsolete boolean,
    observed boolean
);


ALTER TABLE ope20181122."pfsConfig" OWNER TO hscana;

--
-- Name: pfsConfigFiber; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."pfsConfigFiber" (
    "pfsConfigFiberId" bigint NOT NULL,
    "pfsConfigId" bigint,
    "fiberId" integer,
    "targetId" bigint,
    "MCS_Centroid_x_Plan" double precision,
    "MCS_Centroid_y_Plan" double precision,
    "onSource" boolean
);


ALTER TABLE ope20181122."pfsConfigFiber" OWNER TO hscana;

--
-- Name: pfsConfigFiber_pfsConfigFiberId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."pfsConfigFiber_pfsConfigFiberId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."pfsConfigFiber_pfsConfigFiberId_seq" OWNER TO hscana;

--
-- Name: pfsConfigFiber_pfsConfigFiberId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."pfsConfigFiber_pfsConfigFiberId_seq" OWNED BY ope20181122."pfsConfigFiber"."pfsConfigFiberId";


--
-- Name: pfsConfig_pfsConfigId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."pfsConfig_pfsConfigId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."pfsConfig_pfsConfigId_seq" OWNER TO hscana;

--
-- Name: pfsConfig_pfsConfigId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."pfsConfig_pfsConfigId_seq" OWNED BY ope20181122."pfsConfig"."pfsConfigId";


--
-- Name: pfsObject; Type: TABLE; Schema: ope20181122; Owner: hscana
--

CREATE TABLE ope20181122."pfsObject" (
    "pfsObjectId" bigint NOT NULL,
    "targetId" bigint,
    "pfsVisitHash" bigint,
    "processDate" timestamp without time zone,
    "pipeline2DVersion" character varying,
    flags integer,
    "QAValue" double precision
);


ALTER TABLE ope20181122."pfsObject" OWNER TO hscana;

--
-- Name: pfsObject_pfsObjectId_seq; Type: SEQUENCE; Schema: ope20181122; Owner: hscana
--

CREATE SEQUENCE ope20181122."pfsObject_pfsObjectId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ope20181122."pfsObject_pfsObjectId_seq" OWNER TO hscana;

--
-- Name: pfsObject_pfsObjectId_seq; Type: SEQUENCE OWNED BY; Schema: ope20181122; Owner: hscana
--

ALTER SEQUENCE ope20181122."pfsObject_pfsObjectId_seq" OWNED BY ope20181122."pfsObject"."pfsObjectId";


--
-- Name: star_ga; Type: VIEW; Schema: ope20181122; Owner: hscana
--

CREATE VIEW ope20181122.star_ga AS
 SELECT ga1d.object_id,
    target.ra,
    target."dec",
    target."programId" AS program_id,
    target."targetId" AS target_id,
    target."catId" AS cat_id,
    target."catObjId" AS cat_object_id,
    ga1d.obsdate,
    ga1d.visit,
    ga1d.pfsvisithash,
    ga1d.pipeline_version,
    ga1d.process_date,
    ga1d.distance,
    ga1d.vhelio,
    ga1d.verr,
    ga1d.p_vhelio,
    ga1d.vtemplate,
    ga1d.vchi,
    ga1d.vflag,
    ga1d.sn,
    ga1d.teffphot_6g,
    ga1d.teffphoterr_6g,
    ga1d.loggphot_6g,
    ga1d.loggphoterr_6g,
    ga1d.vturbphot_6g,
    ga1d.mhphot_6g,
    ga1d.teffphot_7g,
    ga1d.teffphoterr_7g,
    ga1d.loggphot_7g,
    ga1d.loggphoterr_7g,
    ga1d.vturbphot_7g,
    ga1d.mhphot_7g,
    ga1d.teffphot_8g,
    ga1d.teffphoterr_8g,
    ga1d.loggphot_8g,
    ga1d.loggphoterr_8g,
    ga1d.vturbphot_8g,
    ga1d.mhphot_8g,
    ga1d.teffphot_9g,
    ga1d.teffphoterr_9g,
    ga1d.loggphot_9g,
    ga1d.loggphoterr_9g,
    ga1d.vturbphot_9g,
    ga1d.mhphot_9g,
    ga1d.teffphot_10g,
    ga1d.teffphoterr_10g,
    ga1d.loggphot_10g,
    ga1d.loggphoterr_10g,
    ga1d.vturbphot_10g,
    ga1d.mhphot_10g,
    ga1d.teffphot_11g,
    ga1d.teffphoterr_11g,
    ga1d.loggphot_11g,
    ga1d.loggphoterr_11g,
    ga1d.vturbphot_11g,
    ga1d.mhphot_11g,
    ga1d.teffphot_12g,
    ga1d.teffphoterr_12g,
    ga1d.loggphot_12g,
    ga1d.loggphoterr_12g,
    ga1d.vturbphot_12g,
    ga1d.mhphot_12g,
    ga1d.teffphot_13g,
    ga1d.teffphoterr_13g,
    ga1d.loggphot_13g,
    ga1d.loggphoterr_13g,
    ga1d.vturbphot_13g,
    ga1d.mhphot_13g,
    ga1d.teff,
    ga1d.tefferr,
    ga1d.logg,
    ga1d.loggerr,
    ga1d.vturb,
    ga1d.vturberr,
    ga1d.mh,
    ga1d.mherr,
    ga1d.alphafe,
    ga1d.alphafeerr,
    ga1d.feh,
    ga1d.feherr,
    ga1d.cfe,
    ga1d.cfeerr,
    ga1d.mgfe,
    ga1d.mgfeerr,
    ga1d.cafe,
    ga1d.cafeerr,
    ga1d.sife,
    ga1d.sifeerr,
    ga1d.tife,
    ga1d.tifeerr,
    ga1d.mnfe,
    ga1d.mnfeerr,
    ga1d.cofe,
    ga1d.cofeerr,
    ga1d.nife,
    ga1d.nifeerr,
    ga1d.bafe,
    ga1d.bafeerr,
    target."fiberMag_g" AS fibermag_g,
    target."fiberMag_r" AS fibermag_r,
    target."fiberMag_i" AS fibermag_i,
    target."fiberMag_z" AS fibermag_z,
    target."fiberMag_Y" AS fibermag_y,
    target."fiberMag_J" AS fibermag_j
   FROM (ope20181122."_output:ga1d" ga1d
     JOIN ope20181122."Target" target ON ((ga1d.object_id = target."objId")));


ALTER TABLE ope20181122.star_ga OWNER TO hscana;

--
-- Name: COLUMN star_ga.object_id; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.object_id IS 'PFS object ID.';


--
-- Name: COLUMN star_ga.obsdate; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.obsdate IS 'Observation date (UTC).';


--
-- Name: COLUMN star_ga.visit; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.visit IS 'Exposure number.';


--
-- Name: COLUMN star_ga.pfsvisithash; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.pfsvisithash IS 'An integer uniquely defining the set of visits contributing to a reduced spectrum.';


--
-- Name: COLUMN star_ga.pipeline_version; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.pipeline_version IS 'Pipeline version.';


--
-- Name: COLUMN star_ga.process_date; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.process_date IS 'Processed data.';


--
-- Name: COLUMN star_ga.distance; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.distance IS 'Distance to the star, based on RR Lyrae, Gaia, photometric parallax, etc.';


--
-- Name: COLUMN star_ga.vhelio; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vhelio IS 'Heliocentric velocity.';


--
-- Name: COLUMN star_ga.verr; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.verr IS 'Error on the velocity.';


--
-- Name: COLUMN star_ga.p_vhelio; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.p_vhelio IS 'Complete posterior probability distribution for vhelio.';


--
-- Name: COLUMN star_ga.vtemplate; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vtemplate IS 'Best-fit radial velocity template.';


--
-- Name: COLUMN star_ga.vchi; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vchi IS 'Chi-squared between the observed spectrum and best fit template.';


--
-- Name: COLUMN star_ga.vflag; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vflag IS 'Flag for bad value of the chi-squared.';


--
-- Name: COLUMN star_ga.sn; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.sn IS 'Signal-to-noise estimate.';


--
-- Name: COLUMN star_ga.teffphot_6g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.teffphot_6g IS 'photometric effective temperature with assumption of 6Gyr.';


--
-- Name: COLUMN star_ga.loggphot_6g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.loggphot_6g IS 'photometric surface gravity with assumption of 6Gyr.';


--
-- Name: COLUMN star_ga.vturbphot_6g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vturbphot_6g IS 'photometric microturbulent velocity with assumption of 6Gyr.';


--
-- Name: COLUMN star_ga.mhphot_6g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mhphot_6g IS 'photometric metallicity [M/H] with assumption of 6Gyr.';


--
-- Name: COLUMN star_ga.teffphot_7g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.teffphot_7g IS 'photometric effective temperature with assumption of 7Gyr.';


--
-- Name: COLUMN star_ga.loggphot_7g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.loggphot_7g IS 'photometric surface gravity with assumption of 7Gyr.';


--
-- Name: COLUMN star_ga.vturbphot_7g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vturbphot_7g IS 'photometric microturbulent velocity with assumption of 7Gyr.';


--
-- Name: COLUMN star_ga.mhphot_7g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mhphot_7g IS 'photometric metallicity [M/H] with assumption of 7Gyr.';


--
-- Name: COLUMN star_ga.teffphot_8g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.teffphot_8g IS 'photometric effective temperature with assumption of 8Gyr.';


--
-- Name: COLUMN star_ga.loggphot_8g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.loggphot_8g IS 'photometric surface gravity with assumption of 8Gyr.';


--
-- Name: COLUMN star_ga.vturbphot_8g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vturbphot_8g IS 'photometric microturbulent velocity with assumption of 8Gyr.';


--
-- Name: COLUMN star_ga.mhphot_8g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mhphot_8g IS 'photometric metallicity [M/H] with assumption of 8Gyr.';


--
-- Name: COLUMN star_ga.teffphot_9g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.teffphot_9g IS 'photometric effective temperature with assumption of 9Gyr.';


--
-- Name: COLUMN star_ga.loggphot_9g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.loggphot_9g IS 'photometric surface gravity with assumption of 9Gyr.';


--
-- Name: COLUMN star_ga.vturbphot_9g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vturbphot_9g IS 'photometric microturbulent velocity with assumption of 9Gyr.';


--
-- Name: COLUMN star_ga.mhphot_9g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mhphot_9g IS 'photometric metallicity [M/H] with assumption of 9Gyr.';


--
-- Name: COLUMN star_ga.teffphot_10g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.teffphot_10g IS 'photometric effective temperature with assumption of 10Gyr.';


--
-- Name: COLUMN star_ga.loggphot_10g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.loggphot_10g IS 'photometric surface gravity with assumption of 10Gyr.';


--
-- Name: COLUMN star_ga.vturbphot_10g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vturbphot_10g IS 'photometric microturbulent velocity with assumption of 10Gyr.';


--
-- Name: COLUMN star_ga.mhphot_10g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mhphot_10g IS 'photometric metallicity [M/H] with assumption of 10Gyr.';


--
-- Name: COLUMN star_ga.teffphot_11g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.teffphot_11g IS 'photometric effective temperature with assumption of 11Gyr.';


--
-- Name: COLUMN star_ga.loggphot_11g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.loggphot_11g IS 'photometric surface gravity with assumption of 11Gyr.';


--
-- Name: COLUMN star_ga.vturbphot_11g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vturbphot_11g IS 'photometric microturbulent velocity with assumption of 11Gyr.';


--
-- Name: COLUMN star_ga.mhphot_11g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mhphot_11g IS 'photometric metallicity [M/H] with assumption of 11Gyr.';


--
-- Name: COLUMN star_ga.teffphot_12g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.teffphot_12g IS 'photometric effective temperature with assumption of 12Gyr.';


--
-- Name: COLUMN star_ga.loggphot_12g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.loggphot_12g IS 'photometric surface gravity with assumption of 12Gyr.';


--
-- Name: COLUMN star_ga.vturbphot_12g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vturbphot_12g IS 'photometric microturbulent velocity with assumption of 12Gyr.';


--
-- Name: COLUMN star_ga.mhphot_12g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mhphot_12g IS 'photometric metallicity [M/H] with assumption of 12Gyr.';


--
-- Name: COLUMN star_ga.teffphot_13g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.teffphot_13g IS 'photometric effective temperature with assumption of 13Gyr.';


--
-- Name: COLUMN star_ga.loggphot_13g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.loggphot_13g IS 'photometric surface gravity with assumption of 13Gyr.';


--
-- Name: COLUMN star_ga.vturbphot_13g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vturbphot_13g IS 'photometric microturbulent velocity with assumption of 13Gyr.';


--
-- Name: COLUMN star_ga.mhphot_13g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mhphot_13g IS 'photometric metallicity [M/H] with assumption of 13Gyr.';


--
-- Name: COLUMN star_ga.teff; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.teff IS 'spectroscopic effective temperature.';


--
-- Name: COLUMN star_ga.logg; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.logg IS 'adopted photometric surface gravity (for well known distances) or otherwise determined final logg.';


--
-- Name: COLUMN star_ga.vturb; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.vturb IS 'adopted microturbulent velocity';


--
-- Name: COLUMN star_ga.mh; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mh IS 'adopted spectroscopic[M/H]';


--
-- Name: COLUMN star_ga.alphafe; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.alphafe IS '[alpha/Fe]';


--
-- Name: COLUMN star_ga.feh; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.feh IS '[Fe/H]';


--
-- Name: COLUMN star_ga.cfe; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.cfe IS '[C/Fe]';


--
-- Name: COLUMN star_ga.mgfe; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mgfe IS '[Mg/Fe]';


--
-- Name: COLUMN star_ga.cafe; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.cafe IS '[Ca/Fe]';


--
-- Name: COLUMN star_ga.sife; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.sife IS '[Si/Fe]';


--
-- Name: COLUMN star_ga.tife; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.tife IS '[Ti/Fe]';


--
-- Name: COLUMN star_ga.mnfe; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.mnfe IS '[Mn/Fe]';


--
-- Name: COLUMN star_ga.cofe; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.cofe IS '[Co/Fe]';


--
-- Name: COLUMN star_ga.nife; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.nife IS '[Ni/Fe]';


--
-- Name: COLUMN star_ga.bafe; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.bafe IS '[Ba/Fe]';


--
-- Name: COLUMN star_ga.fibermag_g; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.fibermag_g IS 'Fiber mag';


--
-- Name: COLUMN star_ga.fibermag_r; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.fibermag_r IS 'Fiber mag';


--
-- Name: COLUMN star_ga.fibermag_i; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.fibermag_i IS 'Fiber mag';


--
-- Name: COLUMN star_ga.fibermag_z; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.fibermag_z IS 'Fiber mag';


--
-- Name: COLUMN star_ga.fibermag_y; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.fibermag_y IS 'Fiber mag';


--
-- Name: COLUMN star_ga.fibermag_j; Type: COMMENT; Schema: ope20181122; Owner: hscana
--

COMMENT ON COLUMN ope20181122.star_ga.fibermag_j IS 'Fiber mag';


--
-- Name: BeamSwitchMode beamSwitchModeId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."BeamSwitchMode" ALTER COLUMN "beamSwitchModeId" SET DEFAULT nextval('ope20181122."BeamSwitchMode_beamSwitchModeId_seq"'::regclass);


--
-- Name: Calib calibId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Calib" ALTER COLUMN "calibId" SET DEFAULT nextval('ope20181122."Calib_calibId_seq"'::regclass);


--
-- Name: Exposure frameId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Exposure" ALTER COLUMN "frameId" SET DEFAULT nextval('ope20181122."Exposure_frameId_seq"'::regclass);


--
-- Name: InputCatalog catId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."InputCatalog" ALTER COLUMN "catId" SET DEFAULT nextval('ope20181122."InputCatalog_catId_seq"'::regclass);


--
-- Name: LineList lineId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."LineList" ALTER COLUMN "lineId" SET DEFAULT nextval('ope20181122."LineList_lineId_seq"'::regclass);


--
-- Name: ObjType objTypeId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."ObjType" ALTER COLUMN "objTypeId" SET DEFAULT nextval('ope20181122."ObjType_objTypeId_seq"'::regclass);


--
-- Name: ObsFiber obsFiberId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."ObsFiber" ALTER COLUMN "obsFiberId" SET DEFAULT nextval('ope20181122."ObsFiber_obsFiberId_seq"'::regclass);


--
-- Name: Program programId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Program" ALTER COLUMN "programId" SET DEFAULT nextval('ope20181122."Program_programId_seq"'::regclass);


--
-- Name: QAType QAType; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."QAType" ALTER COLUMN "QAType" SET DEFAULT nextval('ope20181122."QAType_QAType_seq"'::regclass);


--
-- Name: SpecLine specLineId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."SpecLine" ALTER COLUMN "specLineId" SET DEFAULT nextval('ope20181122."SpecLine_specLineId_seq"'::regclass);


--
-- Name: StarType starTypeId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."StarType" ALTER COLUMN "starTypeId" SET DEFAULT nextval('ope20181122."StarType_starTypeId_seq"'::regclass);


--
-- Name: Target targetId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Target" ALTER COLUMN "targetId" SET DEFAULT nextval('ope20181122."Target_targetId_seq"'::regclass);


--
-- Name: TargetType targetType; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."TargetType" ALTER COLUMN "targetType" SET DEFAULT nextval('ope20181122."TargetType_targetType_seq"'::regclass);


--
-- Name: Tile tileId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Tile" ALTER COLUMN "tileId" SET DEFAULT nextval('ope20181122."Tile_tileId_seq"'::regclass);


--
-- Name: VisitsToCombine pfsVisitHash; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."VisitsToCombine" ALTER COLUMN "pfsVisitHash" SET DEFAULT nextval('ope20181122."VisitsToCombine_pfsVisitHash_seq"'::regclass);


--
-- Name: pfsArmObj pfsArmObjId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsArmObj" ALTER COLUMN "pfsArmObjId" SET DEFAULT nextval('ope20181122."pfsArmObj_pfsArmObjId_seq"'::regclass);


--
-- Name: pfsConfig pfsConfigId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsConfig" ALTER COLUMN "pfsConfigId" SET DEFAULT nextval('ope20181122."pfsConfig_pfsConfigId_seq"'::regclass);


--
-- Name: pfsConfigFiber pfsConfigFiberId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsConfigFiber" ALTER COLUMN "pfsConfigFiberId" SET DEFAULT nextval('ope20181122."pfsConfigFiber_pfsConfigFiberId_seq"'::regclass);


--
-- Name: pfsObject pfsObjectId; Type: DEFAULT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsObject" ALTER COLUMN "pfsObjectId" SET DEFAULT nextval('ope20181122."pfsObject_pfsObjectId_seq"'::regclass);


--
-- Name: BeamSwitchMode BeamSwitchMode_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."BeamSwitchMode"
    ADD CONSTRAINT "BeamSwitchMode_pkey" PRIMARY KEY ("beamSwitchModeId");


--
-- Name: Calib Calib_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Calib"
    ADD CONSTRAINT "Calib_pkey" PRIMARY KEY ("calibId");


--
-- Name: Exposure Exposure_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Exposure"
    ADD CONSTRAINT "Exposure_pkey" PRIMARY KEY ("frameId");


--
-- Name: FiberPosition FiberPosition_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."FiberPosition"
    ADD CONSTRAINT "FiberPosition_pkey" PRIMARY KEY (spectrograph, arm, "armNum", "fiberId");


--
-- Name: InputCatalog InputCatalog_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."InputCatalog"
    ADD CONSTRAINT "InputCatalog_pkey" PRIMARY KEY ("catId");


--
-- Name: LineList LineList_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."LineList"
    ADD CONSTRAINT "LineList_pkey" PRIMARY KEY ("lineId");


--
-- Name: ObjType ObjType_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."ObjType"
    ADD CONSTRAINT "ObjType_pkey" PRIMARY KEY ("objTypeId");


--
-- Name: ObsFiber ObsFiber_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."ObsFiber"
    ADD CONSTRAINT "ObsFiber_pkey" PRIMARY KEY ("obsFiberId");


--
-- Name: Program Program_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Program"
    ADD CONSTRAINT "Program_pkey" PRIMARY KEY ("programId");


--
-- Name: QAType QAType_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."QAType"
    ADD CONSTRAINT "QAType_pkey" PRIMARY KEY ("QAType");


--
-- Name: SpecLine SpecLine_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."SpecLine"
    ADD CONSTRAINT "SpecLine_pkey" PRIMARY KEY ("specLineId");


--
-- Name: SpecParam SpecParam_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."SpecParam"
    ADD CONSTRAINT "SpecParam_pkey" PRIMARY KEY ("pfsObjectId");


--
-- Name: StarSpecParam StarSpecParam_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."StarSpecParam"
    ADD CONSTRAINT "StarSpecParam_pkey" PRIMARY KEY ("pfsObejctId");


--
-- Name: StarType StarType_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."StarType"
    ADD CONSTRAINT "StarType_pkey" PRIMARY KEY ("starTypeId");


--
-- Name: TargetType TargetType_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."TargetType"
    ADD CONSTRAINT "TargetType_pkey" PRIMARY KEY ("targetType");


--
-- Name: Target Target_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Target"
    ADD CONSTRAINT "Target_pkey" PRIMARY KEY ("targetId");


--
-- Name: Tile Tile_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Tile"
    ADD CONSTRAINT "Tile_pkey" PRIMARY KEY ("tileId");


--
-- Name: VisitsToCombine VisitsToCombine_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."VisitsToCombine"
    ADD CONSTRAINT "VisitsToCombine_pkey" PRIMARY KEY ("pfsVisitHash");


--
-- Name: pfsArmObj pfsArmObj_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsArmObj"
    ADD CONSTRAINT "pfsArmObj_pkey" PRIMARY KEY ("pfsArmObjId");


--
-- Name: pfsArm pfsArm_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsArm"
    ADD CONSTRAINT "pfsArm_pkey" PRIMARY KEY ("frameId");


--
-- Name: pfsConfigFiber pfsConfigFiber_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsConfigFiber"
    ADD CONSTRAINT "pfsConfigFiber_pkey" PRIMARY KEY ("pfsConfigFiberId");


--
-- Name: pfsConfig pfsConfig_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsConfig"
    ADD CONSTRAINT "pfsConfig_pkey" PRIMARY KEY ("pfsConfigId");


--
-- Name: pfsObject pfsObject_pkey; Type: CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsObject"
    ADD CONSTRAINT "pfsObject_pkey" PRIMARY KEY ("pfsObjectId");


--
-- Name: Exposure Exposure_beamSwitchModeId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Exposure"
    ADD CONSTRAINT "Exposure_beamSwitchModeId_fkey" FOREIGN KEY ("beamSwitchModeId") REFERENCES ope20181122."BeamSwitchMode"("beamSwitchModeId");


--
-- Name: Exposure Exposure_pfsConfigId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Exposure"
    ADD CONSTRAINT "Exposure_pfsConfigId_fkey" FOREIGN KEY ("pfsConfigId") REFERENCES ope20181122."pfsConfig"("pfsConfigId");


--
-- Name: ObsFiber ObsFiber_frameId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."ObsFiber"
    ADD CONSTRAINT "ObsFiber_frameId_fkey" FOREIGN KEY ("frameId") REFERENCES ope20181122."Exposure"("frameId");


--
-- Name: ObsFiber ObsFiber_pfsConfigFiberId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."ObsFiber"
    ADD CONSTRAINT "ObsFiber_pfsConfigFiberId_fkey" FOREIGN KEY ("pfsConfigFiberId") REFERENCES ope20181122."pfsConfigFiber"("pfsConfigFiberId");


--
-- Name: SpecLine SpecLine_lineId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."SpecLine"
    ADD CONSTRAINT "SpecLine_lineId_fkey" FOREIGN KEY ("lineId") REFERENCES ope20181122."LineList"("lineId");


--
-- Name: SpecLine SpecLine_pfsObjectId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."SpecLine"
    ADD CONSTRAINT "SpecLine_pfsObjectId_fkey" FOREIGN KEY ("pfsObjectId") REFERENCES ope20181122."pfsObject"("pfsObjectId");


--
-- Name: SpecParam SpecParam_objTypeId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."SpecParam"
    ADD CONSTRAINT "SpecParam_objTypeId_fkey" FOREIGN KEY ("objTypeId") REFERENCES ope20181122."ObjType"("objTypeId");


--
-- Name: SpecParam SpecParam_pfsObjectId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."SpecParam"
    ADD CONSTRAINT "SpecParam_pfsObjectId_fkey" FOREIGN KEY ("pfsObjectId") REFERENCES ope20181122."pfsObject"("pfsObjectId");


--
-- Name: StarSpecParam StarSpecParam_pfsObejctId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."StarSpecParam"
    ADD CONSTRAINT "StarSpecParam_pfsObejctId_fkey" FOREIGN KEY ("pfsObejctId") REFERENCES ope20181122."pfsObject"("pfsObjectId");


--
-- Name: StarSpecParam StarSpecParam_starTypeId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."StarSpecParam"
    ADD CONSTRAINT "StarSpecParam_starTypeId_fkey" FOREIGN KEY ("starTypeId") REFERENCES ope20181122."StarType"("starTypeId");


--
-- Name: Target Target_QATypeId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Target"
    ADD CONSTRAINT "Target_QATypeId_fkey" FOREIGN KEY ("QATypeId") REFERENCES ope20181122."QAType"("QAType");


--
-- Name: Target Target_catId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Target"
    ADD CONSTRAINT "Target_catId_fkey" FOREIGN KEY ("catId") REFERENCES ope20181122."InputCatalog"("catId");


--
-- Name: Target Target_programId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Target"
    ADD CONSTRAINT "Target_programId_fkey" FOREIGN KEY ("programId") REFERENCES ope20181122."Program"("programId");


--
-- Name: Target Target_targetTypeId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Target"
    ADD CONSTRAINT "Target_targetTypeId_fkey" FOREIGN KEY ("targetTypeId") REFERENCES ope20181122."TargetType"("targetType");


--
-- Name: Tile Tile_programId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."Tile"
    ADD CONSTRAINT "Tile_programId_fkey" FOREIGN KEY ("programId") REFERENCES ope20181122."Program"("programId");


--
-- Name: VisitsToCombine VisitsToCombine_targetid_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."VisitsToCombine"
    ADD CONSTRAINT "VisitsToCombine_targetid_fkey" FOREIGN KEY (targetid) REFERENCES ope20181122."Target"("targetId");


--
-- Name: pfsArmObj pfsArmObj_frameId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsArmObj"
    ADD CONSTRAINT "pfsArmObj_frameId_fkey" FOREIGN KEY ("frameId") REFERENCES ope20181122."pfsArm"("frameId");


--
-- Name: pfsArmObj pfsArmObj_pfsConfigFiberId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsArmObj"
    ADD CONSTRAINT "pfsArmObj_pfsConfigFiberId_fkey" FOREIGN KEY ("pfsConfigFiberId") REFERENCES ope20181122."pfsConfigFiber"("pfsConfigFiberId");


--
-- Name: pfsArm pfsArm_frameId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsArm"
    ADD CONSTRAINT "pfsArm_frameId_fkey" FOREIGN KEY ("frameId") REFERENCES ope20181122."Exposure"("frameId");


--
-- Name: pfsConfigFiber pfsConfigFiber_pfsConfigId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsConfigFiber"
    ADD CONSTRAINT "pfsConfigFiber_pfsConfigId_fkey" FOREIGN KEY ("pfsConfigId") REFERENCES ope20181122."pfsConfig"("pfsConfigId");


--
-- Name: pfsConfigFiber pfsConfigFiber_targetId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsConfigFiber"
    ADD CONSTRAINT "pfsConfigFiber_targetId_fkey" FOREIGN KEY ("targetId") REFERENCES ope20181122."Target"("targetId");


--
-- Name: pfsConfig pfsConfig_tileId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsConfig"
    ADD CONSTRAINT "pfsConfig_tileId_fkey" FOREIGN KEY ("tileId") REFERENCES ope20181122."Tile"("tileId");


--
-- Name: pfsObject pfsObject_pfsVisitHash_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsObject"
    ADD CONSTRAINT "pfsObject_pfsVisitHash_fkey" FOREIGN KEY ("pfsVisitHash") REFERENCES ope20181122."VisitsToCombine"("pfsVisitHash");


--
-- Name: pfsObject pfsObject_targetId_fkey; Type: FK CONSTRAINT; Schema: ope20181122; Owner: hscana
--

ALTER TABLE ONLY ope20181122."pfsObject"
    ADD CONSTRAINT "pfsObject_targetId_fkey" FOREIGN KEY ("targetId") REFERENCES ope20181122."Target"("targetId");


--
-- PostgreSQL database dump complete
--

