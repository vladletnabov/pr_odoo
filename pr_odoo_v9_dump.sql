--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account_account; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account (
    id integer NOT NULL,
    create_uid integer,
    internal_type character varying,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    deprecated boolean,
    currency_id integer,
    company_id integer NOT NULL,
    write_uid integer,
    note text,
    code character varying(64) NOT NULL,
    write_date timestamp without time zone,
    user_type_id integer NOT NULL,
    last_time_entries_checked timestamp without time zone,
    reconcile boolean
);


ALTER TABLE account_account OWNER TO odoouser;

--
-- Name: TABLE account_account; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account IS 'Account';


--
-- Name: COLUMN account_account.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.create_uid IS 'Created by';


--
-- Name: COLUMN account_account.internal_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.internal_type IS 'Type';


--
-- Name: COLUMN account_account.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.create_date IS 'Created on';


--
-- Name: COLUMN account_account.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.name IS 'Name';


--
-- Name: COLUMN account_account.deprecated; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.deprecated IS 'Deprecated';


--
-- Name: COLUMN account_account.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.currency_id IS 'Account Currency';


--
-- Name: COLUMN account_account.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.company_id IS 'Company';


--
-- Name: COLUMN account_account.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_account.note; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.note IS 'Internal Notes';


--
-- Name: COLUMN account_account.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.code IS 'Code';


--
-- Name: COLUMN account_account.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_account.user_type_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.user_type_id IS 'Type';


--
-- Name: COLUMN account_account.last_time_entries_checked; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.last_time_entries_checked IS 'Latest Invoices & Payments Matching Date';


--
-- Name: COLUMN account_account.reconcile; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account.reconcile IS 'Allow Reconciliation';


--
-- Name: account_account_account_tag; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_account_tag (
    account_account_id integer NOT NULL,
    account_account_tag_id integer NOT NULL
);


ALTER TABLE account_account_account_tag OWNER TO odoouser;

--
-- Name: TABLE account_account_account_tag; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_account_tag IS 'RELATION BETWEEN account_account AND account_account_tag';


--
-- Name: account_account_financial_report; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_financial_report (
    report_line_id integer NOT NULL,
    account_id integer NOT NULL
);


ALTER TABLE account_account_financial_report OWNER TO odoouser;

--
-- Name: TABLE account_account_financial_report; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_financial_report IS 'RELATION BETWEEN account_financial_report AND account_account';


--
-- Name: account_account_financial_report_type; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_financial_report_type (
    report_id integer NOT NULL,
    account_type_id integer NOT NULL
);


ALTER TABLE account_account_financial_report_type OWNER TO odoouser;

--
-- Name: TABLE account_account_financial_report_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_financial_report_type IS 'RELATION BETWEEN account_financial_report AND account_account_type';


--
-- Name: account_account_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_account_id_seq OWNER TO odoouser;

--
-- Name: account_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_account_id_seq OWNED BY account_account.id;


--
-- Name: account_account_tag; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_tag (
    id integer NOT NULL,
    create_uid integer,
    applicability character varying NOT NULL,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    color integer,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE account_account_tag OWNER TO odoouser;

--
-- Name: TABLE account_account_tag; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_tag IS 'Account Tag';


--
-- Name: COLUMN account_account_tag.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_tag.create_uid IS 'Created by';


--
-- Name: COLUMN account_account_tag.applicability; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_tag.applicability IS 'Applicability';


--
-- Name: COLUMN account_account_tag.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_tag.create_date IS 'Created on';


--
-- Name: COLUMN account_account_tag.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_tag.name IS 'Name';


--
-- Name: COLUMN account_account_tag.color; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_tag.color IS 'Color Index';


--
-- Name: COLUMN account_account_tag.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_tag.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_account_tag.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_tag.write_date IS 'Last Updated on';


--
-- Name: account_account_tag_account_tax_template_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_tag_account_tax_template_rel (
    account_tax_template_id integer NOT NULL,
    account_account_tag_id integer NOT NULL
);


ALTER TABLE account_account_tag_account_tax_template_rel OWNER TO odoouser;

--
-- Name: TABLE account_account_tag_account_tax_template_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_tag_account_tax_template_rel IS 'RELATION BETWEEN account_tax_template AND account_account_tag';


--
-- Name: account_account_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_account_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_account_tag_id_seq OWNER TO odoouser;

--
-- Name: account_account_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_account_tag_id_seq OWNED BY account_account_tag.id;


--
-- Name: account_account_tax_default_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_tax_default_rel (
    account_id integer NOT NULL,
    tax_id integer NOT NULL
);


ALTER TABLE account_account_tax_default_rel OWNER TO odoouser;

--
-- Name: TABLE account_account_tax_default_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_tax_default_rel IS 'RELATION BETWEEN account_account AND account_tax';


--
-- Name: account_account_template; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_template (
    id integer NOT NULL,
    create_uid integer,
    code character varying(64) NOT NULL,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    currency_id integer,
    chart_template_id integer,
    write_uid integer,
    note text,
    nocreate boolean,
    write_date timestamp without time zone,
    user_type_id integer NOT NULL,
    reconcile boolean
);


ALTER TABLE account_account_template OWNER TO odoouser;

--
-- Name: TABLE account_account_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_template IS 'Templates for Accounts';


--
-- Name: COLUMN account_account_template.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.create_uid IS 'Created by';


--
-- Name: COLUMN account_account_template.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.code IS 'Code';


--
-- Name: COLUMN account_account_template.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.create_date IS 'Created on';


--
-- Name: COLUMN account_account_template.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.name IS 'Name';


--
-- Name: COLUMN account_account_template.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.currency_id IS 'Account Currency';


--
-- Name: COLUMN account_account_template.chart_template_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.chart_template_id IS 'Chart Template';


--
-- Name: COLUMN account_account_template.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_account_template.note; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.note IS 'Note';


--
-- Name: COLUMN account_account_template.nocreate; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.nocreate IS 'Optional Create';


--
-- Name: COLUMN account_account_template.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_account_template.user_type_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.user_type_id IS 'Type';


--
-- Name: COLUMN account_account_template.reconcile; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_template.reconcile IS 'Allow Invoices & payments Matching';


--
-- Name: account_account_template_account_tag; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_template_account_tag (
    account_account_template_id integer NOT NULL,
    account_account_tag_id integer NOT NULL
);


ALTER TABLE account_account_template_account_tag OWNER TO odoouser;

--
-- Name: TABLE account_account_template_account_tag; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_template_account_tag IS 'RELATION BETWEEN account_account_template AND account_account_tag';


--
-- Name: account_account_template_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_account_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_account_template_id_seq OWNER TO odoouser;

--
-- Name: account_account_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_account_template_id_seq OWNED BY account_account_template.id;


--
-- Name: account_account_template_tax_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_template_tax_rel (
    account_id integer NOT NULL,
    tax_id integer NOT NULL
);


ALTER TABLE account_account_template_tax_rel OWNER TO odoouser;

--
-- Name: TABLE account_account_template_tax_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_template_tax_rel IS 'RELATION BETWEEN account_account_template AND account_tax_template';


--
-- Name: account_account_type; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_type (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    note text,
    write_date timestamp without time zone,
    include_initial_balance boolean,
    type character varying NOT NULL
);


ALTER TABLE account_account_type OWNER TO odoouser;

--
-- Name: TABLE account_account_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_type IS 'Account Type';


--
-- Name: COLUMN account_account_type.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_type.create_uid IS 'Created by';


--
-- Name: COLUMN account_account_type.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_type.create_date IS 'Created on';


--
-- Name: COLUMN account_account_type.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_type.name IS 'Account Type';


--
-- Name: COLUMN account_account_type.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_type.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_account_type.note; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_type.note IS 'Description';


--
-- Name: COLUMN account_account_type.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_type.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_account_type.include_initial_balance; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_type.include_initial_balance IS 'Bring Accounts Balance Forward';


--
-- Name: COLUMN account_account_type.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_account_type.type IS 'Type';


--
-- Name: account_account_type_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_account_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_account_type_id_seq OWNER TO odoouser;

--
-- Name: account_account_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_account_type_id_seq OWNED BY account_account_type.id;


--
-- Name: account_account_type_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_account_type_rel (
    journal_id integer NOT NULL,
    account_id integer NOT NULL
);


ALTER TABLE account_account_type_rel OWNER TO odoouser;

--
-- Name: TABLE account_account_type_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_account_type_rel IS 'RELATION BETWEEN account_journal AND account_account';


--
-- Name: account_aged_trial_balance; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_aged_trial_balance (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    period_length integer NOT NULL,
    date_from date,
    result_selection character varying NOT NULL,
    company_id integer,
    write_date timestamp without time zone,
    date_to date,
    write_uid integer,
    target_move character varying NOT NULL
);


ALTER TABLE account_aged_trial_balance OWNER TO odoouser;

--
-- Name: TABLE account_aged_trial_balance; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_aged_trial_balance IS 'Account Aged Trial balance Report';


--
-- Name: COLUMN account_aged_trial_balance.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_aged_trial_balance.create_uid IS 'Created by';


--
-- Name: COLUMN account_aged_trial_balance.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_aged_trial_balance.create_date IS 'Created on';


--
-- Name: COLUMN account_aged_trial_balance.period_length; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_aged_trial_balance.period_length IS 'Period Length (days)';


--
-- Name: COLUMN account_aged_trial_balance.date_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_aged_trial_balance.date_from IS 'Start Date';


--
-- Name: COLUMN account_aged_trial_balance.result_selection; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_aged_trial_balance.result_selection IS 'Partner''s';


--
-- Name: COLUMN account_aged_trial_balance.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_aged_trial_balance.company_id IS 'Company';


--
-- Name: COLUMN account_aged_trial_balance.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_aged_trial_balance.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_aged_trial_balance.date_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_aged_trial_balance.date_to IS 'End Date';


--
-- Name: COLUMN account_aged_trial_balance.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_aged_trial_balance.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_aged_trial_balance.target_move; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_aged_trial_balance.target_move IS 'Target Moves';


--
-- Name: account_aged_trial_balance_account_journal_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_aged_trial_balance_account_journal_rel (
    account_aged_trial_balance_id integer NOT NULL,
    account_journal_id integer NOT NULL
);


ALTER TABLE account_aged_trial_balance_account_journal_rel OWNER TO odoouser;

--
-- Name: TABLE account_aged_trial_balance_account_journal_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_aged_trial_balance_account_journal_rel IS 'RELATION BETWEEN account_aged_trial_balance AND account_journal';


--
-- Name: account_aged_trial_balance_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_aged_trial_balance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_aged_trial_balance_id_seq OWNER TO odoouser;

--
-- Name: account_aged_trial_balance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_aged_trial_balance_id_seq OWNED BY account_aged_trial_balance.id;


--
-- Name: account_analytic_account; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_analytic_account (
    id integer NOT NULL,
    code character varying,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    create_uid integer,
    message_last_post timestamp without time zone,
    company_id integer NOT NULL,
    write_uid integer,
    write_date timestamp without time zone,
    account_type character varying NOT NULL,
    partner_id integer
);


ALTER TABLE account_analytic_account OWNER TO odoouser;

--
-- Name: TABLE account_analytic_account; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_analytic_account IS 'Analytic Account';


--
-- Name: COLUMN account_analytic_account.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_account.code IS 'Reference';


--
-- Name: COLUMN account_analytic_account.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_account.create_date IS 'Created on';


--
-- Name: COLUMN account_analytic_account.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_account.name IS 'Analytic Account';


--
-- Name: COLUMN account_analytic_account.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_account.create_uid IS 'Created by';


--
-- Name: COLUMN account_analytic_account.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_account.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN account_analytic_account.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_account.company_id IS 'Company';


--
-- Name: COLUMN account_analytic_account.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_account.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_analytic_account.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_account.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_analytic_account.account_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_account.account_type IS 'State';


--
-- Name: COLUMN account_analytic_account.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_account.partner_id IS 'Customer';


--
-- Name: account_analytic_account_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_analytic_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_analytic_account_id_seq OWNER TO odoouser;

--
-- Name: account_analytic_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_analytic_account_id_seq OWNED BY account_analytic_account.id;


--
-- Name: account_analytic_account_tag_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_analytic_account_tag_rel (
    account_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE account_analytic_account_tag_rel OWNER TO odoouser;

--
-- Name: TABLE account_analytic_account_tag_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_analytic_account_tag_rel IS 'RELATION BETWEEN account_analytic_account AND account_analytic_tag';


--
-- Name: account_analytic_chart; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_analytic_chart (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    from_date date,
    to_date date,
    write_date timestamp without time zone
);


ALTER TABLE account_analytic_chart OWNER TO odoouser;

--
-- Name: TABLE account_analytic_chart; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_analytic_chart IS 'Account Analytic Chart';


--
-- Name: COLUMN account_analytic_chart.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_chart.create_uid IS 'Created by';


--
-- Name: COLUMN account_analytic_chart.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_chart.create_date IS 'Created on';


--
-- Name: COLUMN account_analytic_chart.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_chart.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_analytic_chart.from_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_chart.from_date IS 'From';


--
-- Name: COLUMN account_analytic_chart.to_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_chart.to_date IS 'To';


--
-- Name: COLUMN account_analytic_chart.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_chart.write_date IS 'Last Updated on';


--
-- Name: account_analytic_chart_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_analytic_chart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_analytic_chart_id_seq OWNER TO odoouser;

--
-- Name: account_analytic_chart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_analytic_chart_id_seq OWNED BY account_analytic_chart.id;


--
-- Name: account_analytic_line; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_analytic_line (
    id integer NOT NULL,
    create_uid integer,
    user_id integer,
    account_id integer NOT NULL,
    company_id integer,
    write_uid integer,
    amount numeric NOT NULL,
    unit_amount double precision,
    date date NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    partner_id integer,
    name character varying NOT NULL,
    code character varying(8),
    currency_id integer,
    ref character varying,
    general_account_id integer,
    move_id integer,
    product_id integer,
    product_uom_id integer,
    amount_currency numeric,
    so_line integer
);


ALTER TABLE account_analytic_line OWNER TO odoouser;

--
-- Name: TABLE account_analytic_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_analytic_line IS 'Analytic Line';


--
-- Name: COLUMN account_analytic_line.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.create_uid IS 'Created by';


--
-- Name: COLUMN account_analytic_line.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.user_id IS 'User';


--
-- Name: COLUMN account_analytic_line.account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.account_id IS 'Analytic Account';


--
-- Name: COLUMN account_analytic_line.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.company_id IS 'Company';


--
-- Name: COLUMN account_analytic_line.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_analytic_line.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.amount IS 'Amount';


--
-- Name: COLUMN account_analytic_line.unit_amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.unit_amount IS 'Quantity';


--
-- Name: COLUMN account_analytic_line.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.date IS 'Date';


--
-- Name: COLUMN account_analytic_line.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.create_date IS 'Created on';


--
-- Name: COLUMN account_analytic_line.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_analytic_line.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.partner_id IS 'Partner';


--
-- Name: COLUMN account_analytic_line.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.name IS 'Description';


--
-- Name: COLUMN account_analytic_line.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.code IS 'Code';


--
-- Name: COLUMN account_analytic_line.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.currency_id IS 'Account Currency';


--
-- Name: COLUMN account_analytic_line.ref; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.ref IS 'Ref.';


--
-- Name: COLUMN account_analytic_line.general_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.general_account_id IS 'Financial Account';


--
-- Name: COLUMN account_analytic_line.move_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.move_id IS 'Move Line';


--
-- Name: COLUMN account_analytic_line.product_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.product_id IS 'Product';


--
-- Name: COLUMN account_analytic_line.product_uom_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.product_uom_id IS 'Unit of Measure';


--
-- Name: COLUMN account_analytic_line.amount_currency; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.amount_currency IS 'Amount currency';


--
-- Name: COLUMN account_analytic_line.so_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_line.so_line IS 'Sale Order Line';


--
-- Name: account_analytic_line_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_analytic_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_analytic_line_id_seq OWNER TO odoouser;

--
-- Name: account_analytic_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_analytic_line_id_seq OWNED BY account_analytic_line.id;


--
-- Name: account_analytic_line_tag_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_analytic_line_tag_rel (
    line_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE account_analytic_line_tag_rel OWNER TO odoouser;

--
-- Name: TABLE account_analytic_line_tag_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_analytic_line_tag_rel IS 'RELATION BETWEEN account_analytic_line AND account_analytic_tag';


--
-- Name: account_analytic_tag; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_analytic_tag (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    color integer,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE account_analytic_tag OWNER TO odoouser;

--
-- Name: TABLE account_analytic_tag; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_analytic_tag IS 'Analytic Tags';


--
-- Name: COLUMN account_analytic_tag.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_tag.create_uid IS 'Created by';


--
-- Name: COLUMN account_analytic_tag.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_tag.create_date IS 'Created on';


--
-- Name: COLUMN account_analytic_tag.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_tag.name IS 'Analytic Tag';


--
-- Name: COLUMN account_analytic_tag.color; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_tag.color IS 'Color Index';


--
-- Name: COLUMN account_analytic_tag.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_tag.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_analytic_tag.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_analytic_tag.write_date IS 'Last Updated on';


--
-- Name: account_analytic_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_analytic_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_analytic_tag_id_seq OWNER TO odoouser;

--
-- Name: account_analytic_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_analytic_tag_id_seq OWNED BY account_analytic_tag.id;


--
-- Name: account_balance_report; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_balance_report (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    display_account character varying NOT NULL,
    date_from date,
    company_id integer,
    write_date timestamp without time zone,
    date_to date,
    write_uid integer,
    target_move character varying NOT NULL
);


ALTER TABLE account_balance_report OWNER TO odoouser;

--
-- Name: TABLE account_balance_report; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_balance_report IS 'Trial Balance Report';


--
-- Name: COLUMN account_balance_report.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_balance_report.create_uid IS 'Created by';


--
-- Name: COLUMN account_balance_report.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_balance_report.create_date IS 'Created on';


--
-- Name: COLUMN account_balance_report.display_account; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_balance_report.display_account IS 'Display Accounts';


--
-- Name: COLUMN account_balance_report.date_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_balance_report.date_from IS 'Start Date';


--
-- Name: COLUMN account_balance_report.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_balance_report.company_id IS 'Company';


--
-- Name: COLUMN account_balance_report.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_balance_report.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_balance_report.date_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_balance_report.date_to IS 'End Date';


--
-- Name: COLUMN account_balance_report.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_balance_report.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_balance_report.target_move; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_balance_report.target_move IS 'Target Moves';


--
-- Name: account_balance_report_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_balance_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_balance_report_id_seq OWNER TO odoouser;

--
-- Name: account_balance_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_balance_report_id_seq OWNED BY account_balance_report.id;


--
-- Name: account_balance_report_journal_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_balance_report_journal_rel (
    account_id integer NOT NULL,
    journal_id integer NOT NULL
);


ALTER TABLE account_balance_report_journal_rel OWNER TO odoouser;

--
-- Name: TABLE account_balance_report_journal_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_balance_report_journal_rel IS 'RELATION BETWEEN account_balance_report AND account_journal';


--
-- Name: account_bank_accounts_wizard; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_bank_accounts_wizard (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    bank_account_id integer NOT NULL,
    acc_name character varying NOT NULL,
    write_uid integer,
    currency_id integer,
    write_date timestamp without time zone,
    account_type character varying
);


ALTER TABLE account_bank_accounts_wizard OWNER TO odoouser;

--
-- Name: TABLE account_bank_accounts_wizard; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_bank_accounts_wizard IS 'account.bank.accounts.wizard';


--
-- Name: COLUMN account_bank_accounts_wizard.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_accounts_wizard.create_uid IS 'Created by';


--
-- Name: COLUMN account_bank_accounts_wizard.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_accounts_wizard.create_date IS 'Created on';


--
-- Name: COLUMN account_bank_accounts_wizard.bank_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_accounts_wizard.bank_account_id IS 'Bank Account';


--
-- Name: COLUMN account_bank_accounts_wizard.acc_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_accounts_wizard.acc_name IS 'Account Name.';


--
-- Name: COLUMN account_bank_accounts_wizard.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_accounts_wizard.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_bank_accounts_wizard.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_accounts_wizard.currency_id IS 'Account Currency';


--
-- Name: COLUMN account_bank_accounts_wizard.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_accounts_wizard.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_bank_accounts_wizard.account_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_accounts_wizard.account_type IS 'Account type';


--
-- Name: account_bank_accounts_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_bank_accounts_wizard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_bank_accounts_wizard_id_seq OWNER TO odoouser;

--
-- Name: account_bank_accounts_wizard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_bank_accounts_wizard_id_seq OWNED BY account_bank_accounts_wizard.id;


--
-- Name: account_bank_statement; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_bank_statement (
    id integer NOT NULL,
    create_date timestamp without time zone,
    date_done timestamp without time zone,
    balance_start numeric,
    company_id integer,
    write_uid integer,
    create_uid integer,
    user_id integer,
    message_last_post timestamp without time zone,
    journal_id integer NOT NULL,
    state character varying NOT NULL,
    cashbox_start_id integer,
    cashbox_end_id integer,
    total_entry_encoding numeric,
    write_date timestamp without time zone,
    date date NOT NULL,
    difference numeric,
    name character varying,
    balance_end numeric,
    balance_end_real numeric
);


ALTER TABLE account_bank_statement OWNER TO odoouser;

--
-- Name: TABLE account_bank_statement; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_bank_statement IS 'Bank Statement';


--
-- Name: COLUMN account_bank_statement.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.create_date IS 'Created on';


--
-- Name: COLUMN account_bank_statement.date_done; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.date_done IS 'Closed On';


--
-- Name: COLUMN account_bank_statement.balance_start; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.balance_start IS 'Starting Balance';


--
-- Name: COLUMN account_bank_statement.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.company_id IS 'Company';


--
-- Name: COLUMN account_bank_statement.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_bank_statement.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.create_uid IS 'Created by';


--
-- Name: COLUMN account_bank_statement.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.user_id IS 'Responsible';


--
-- Name: COLUMN account_bank_statement.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN account_bank_statement.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.journal_id IS 'Journal';


--
-- Name: COLUMN account_bank_statement.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.state IS 'Status';


--
-- Name: COLUMN account_bank_statement.cashbox_start_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.cashbox_start_id IS 'Starting Cashbox';


--
-- Name: COLUMN account_bank_statement.cashbox_end_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.cashbox_end_id IS 'Ending Cashbox';


--
-- Name: COLUMN account_bank_statement.total_entry_encoding; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.total_entry_encoding IS 'Transactions Subtotal';


--
-- Name: COLUMN account_bank_statement.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_bank_statement.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.date IS 'Date';


--
-- Name: COLUMN account_bank_statement.difference; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.difference IS 'Difference';


--
-- Name: COLUMN account_bank_statement.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.name IS 'Reference';


--
-- Name: COLUMN account_bank_statement.balance_end; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.balance_end IS 'Computed Balance';


--
-- Name: COLUMN account_bank_statement.balance_end_real; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement.balance_end_real IS 'Ending Balance';


--
-- Name: account_bank_statement_cashbox; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_bank_statement_cashbox (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE account_bank_statement_cashbox OWNER TO odoouser;

--
-- Name: TABLE account_bank_statement_cashbox; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_bank_statement_cashbox IS 'Account Bank Statement Cashbox Details';


--
-- Name: COLUMN account_bank_statement_cashbox.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_cashbox.create_uid IS 'Created by';


--
-- Name: COLUMN account_bank_statement_cashbox.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_cashbox.create_date IS 'Created on';


--
-- Name: COLUMN account_bank_statement_cashbox.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_cashbox.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_bank_statement_cashbox.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_cashbox.write_date IS 'Last Updated on';


--
-- Name: account_bank_statement_cashbox_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_bank_statement_cashbox_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_bank_statement_cashbox_id_seq OWNER TO odoouser;

--
-- Name: account_bank_statement_cashbox_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_bank_statement_cashbox_id_seq OWNED BY account_bank_statement_cashbox.id;


--
-- Name: account_bank_statement_closebalance; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_bank_statement_closebalance (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE account_bank_statement_closebalance OWNER TO odoouser;

--
-- Name: TABLE account_bank_statement_closebalance; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_bank_statement_closebalance IS 'Account Bank Statement closing balance';


--
-- Name: COLUMN account_bank_statement_closebalance.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_closebalance.create_uid IS 'Created by';


--
-- Name: COLUMN account_bank_statement_closebalance.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_closebalance.create_date IS 'Created on';


--
-- Name: COLUMN account_bank_statement_closebalance.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_closebalance.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_bank_statement_closebalance.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_closebalance.write_uid IS 'Last Updated by';


--
-- Name: account_bank_statement_closebalance_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_bank_statement_closebalance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_bank_statement_closebalance_id_seq OWNER TO odoouser;

--
-- Name: account_bank_statement_closebalance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_bank_statement_closebalance_id_seq OWNED BY account_bank_statement_closebalance.id;


--
-- Name: account_bank_statement_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_bank_statement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_bank_statement_id_seq OWNER TO odoouser;

--
-- Name: account_bank_statement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_bank_statement_id_seq OWNED BY account_bank_statement.id;


--
-- Name: account_bank_statement_import; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_bank_statement_import (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    data_file bytea NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE account_bank_statement_import OWNER TO odoouser;

--
-- Name: TABLE account_bank_statement_import; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_bank_statement_import IS 'Import Bank Statement';


--
-- Name: COLUMN account_bank_statement_import.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_import.create_uid IS 'Created by';


--
-- Name: COLUMN account_bank_statement_import.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_import.create_date IS 'Created on';


--
-- Name: COLUMN account_bank_statement_import.data_file; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_import.data_file IS 'Bank Statement File';


--
-- Name: COLUMN account_bank_statement_import.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_import.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_bank_statement_import.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_import.write_date IS 'Last Updated on';


--
-- Name: account_bank_statement_import_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_bank_statement_import_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_bank_statement_import_id_seq OWNER TO odoouser;

--
-- Name: account_bank_statement_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_bank_statement_import_id_seq OWNED BY account_bank_statement_import.id;


--
-- Name: account_bank_statement_import_journal_creation; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_bank_statement_import_journal_creation (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    journal_id integer NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE account_bank_statement_import_journal_creation OWNER TO odoouser;

--
-- Name: TABLE account_bank_statement_import_journal_creation; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_bank_statement_import_journal_creation IS 'Import Bank Statement Journal Creation Wizard';


--
-- Name: COLUMN account_bank_statement_import_journal_creation.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_import_journal_creation.create_uid IS 'Created by';


--
-- Name: COLUMN account_bank_statement_import_journal_creation.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_import_journal_creation.create_date IS 'Created on';


--
-- Name: COLUMN account_bank_statement_import_journal_creation.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_import_journal_creation.journal_id IS 'Journal id';


--
-- Name: COLUMN account_bank_statement_import_journal_creation.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_import_journal_creation.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_bank_statement_import_journal_creation.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_import_journal_creation.write_date IS 'Last Updated on';


--
-- Name: account_bank_statement_import_journal_creation_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_bank_statement_import_journal_creation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_bank_statement_import_journal_creation_id_seq OWNER TO odoouser;

--
-- Name: account_bank_statement_import_journal_creation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_bank_statement_import_journal_creation_id_seq OWNED BY account_bank_statement_import_journal_creation.id;


--
-- Name: account_bank_statement_line; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_bank_statement_line (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    statement_id integer NOT NULL,
    name character varying NOT NULL,
    sequence integer,
    partner_name character varying,
    ref character varying,
    currency_id integer,
    journal_id integer,
    company_id integer,
    note text,
    amount numeric,
    write_date timestamp without time zone,
    bank_account_id integer,
    date date NOT NULL,
    amount_currency numeric,
    write_uid integer,
    partner_id integer,
    account_id integer,
    unique_import_id character varying
);


ALTER TABLE account_bank_statement_line OWNER TO odoouser;

--
-- Name: TABLE account_bank_statement_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_bank_statement_line IS 'Bank Statement Line';


--
-- Name: COLUMN account_bank_statement_line.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.create_uid IS 'Created by';


--
-- Name: COLUMN account_bank_statement_line.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.create_date IS 'Created on';


--
-- Name: COLUMN account_bank_statement_line.statement_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.statement_id IS 'Statement';


--
-- Name: COLUMN account_bank_statement_line.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.name IS 'Memo';


--
-- Name: COLUMN account_bank_statement_line.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.sequence IS 'Sequence';


--
-- Name: COLUMN account_bank_statement_line.partner_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.partner_name IS 'Partner name';


--
-- Name: COLUMN account_bank_statement_line.ref; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.ref IS 'Reference';


--
-- Name: COLUMN account_bank_statement_line.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.currency_id IS 'Currency';


--
-- Name: COLUMN account_bank_statement_line.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.journal_id IS 'Journal';


--
-- Name: COLUMN account_bank_statement_line.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.company_id IS 'Company';


--
-- Name: COLUMN account_bank_statement_line.note; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.note IS 'Notes';


--
-- Name: COLUMN account_bank_statement_line.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.amount IS 'Amount';


--
-- Name: COLUMN account_bank_statement_line.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_bank_statement_line.bank_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.bank_account_id IS 'Bank Account';


--
-- Name: COLUMN account_bank_statement_line.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.date IS 'Date';


--
-- Name: COLUMN account_bank_statement_line.amount_currency; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.amount_currency IS 'Amount currency';


--
-- Name: COLUMN account_bank_statement_line.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_bank_statement_line.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.partner_id IS 'Partner';


--
-- Name: COLUMN account_bank_statement_line.account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.account_id IS 'Counterpart Account';


--
-- Name: COLUMN account_bank_statement_line.unique_import_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_bank_statement_line.unique_import_id IS 'Import ID';


--
-- Name: account_bank_statement_line_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_bank_statement_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_bank_statement_line_id_seq OWNER TO odoouser;

--
-- Name: account_bank_statement_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_bank_statement_line_id_seq OWNED BY account_bank_statement_line.id;


--
-- Name: account_cashbox_line; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_cashbox_line (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    number integer,
    cashbox_id integer,
    write_uid integer,
    write_date timestamp without time zone,
    coin_value numeric NOT NULL
);


ALTER TABLE account_cashbox_line OWNER TO odoouser;

--
-- Name: TABLE account_cashbox_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_cashbox_line IS 'CashBox Line';


--
-- Name: COLUMN account_cashbox_line.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_cashbox_line.create_uid IS 'Created by';


--
-- Name: COLUMN account_cashbox_line.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_cashbox_line.create_date IS 'Created on';


--
-- Name: COLUMN account_cashbox_line.number; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_cashbox_line.number IS 'Number of Coins/Bills';


--
-- Name: COLUMN account_cashbox_line.cashbox_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_cashbox_line.cashbox_id IS 'Cashbox';


--
-- Name: COLUMN account_cashbox_line.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_cashbox_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_cashbox_line.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_cashbox_line.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_cashbox_line.coin_value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_cashbox_line.coin_value IS 'Coin/Bill Value';


--
-- Name: account_cashbox_line_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_cashbox_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_cashbox_line_id_seq OWNER TO odoouser;

--
-- Name: account_cashbox_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_cashbox_line_id_seq OWNED BY account_cashbox_line.id;


--
-- Name: account_chart_template; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_chart_template (
    id integer NOT NULL,
    bank_account_code_prefix character varying,
    cash_account_code_prefix character varying,
    create_date timestamp without time zone,
    write_uid integer,
    currency_id integer NOT NULL,
    visible boolean,
    property_account_receivable_id integer,
    property_stock_valuation_account_id integer,
    create_uid integer,
    complete_tax_set boolean,
    property_stock_account_output_categ_id integer,
    transfer_account_id integer NOT NULL,
    company_id integer,
    expense_currency_exchange_account_id integer,
    parent_id integer,
    property_account_income_categ_id integer,
    property_stock_account_input_categ_id integer,
    property_account_income_id integer,
    property_account_expense_categ_id integer,
    write_date timestamp without time zone,
    use_anglo_saxon boolean,
    code_digits integer NOT NULL,
    name character varying NOT NULL,
    property_account_expense_id integer,
    property_account_payable_id integer,
    income_currency_exchange_account_id integer
);


ALTER TABLE account_chart_template OWNER TO odoouser;

--
-- Name: TABLE account_chart_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_chart_template IS 'Templates for Account Chart';


--
-- Name: COLUMN account_chart_template.bank_account_code_prefix; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.bank_account_code_prefix IS 'Prefix of the bank accounts';


--
-- Name: COLUMN account_chart_template.cash_account_code_prefix; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.cash_account_code_prefix IS 'Prefix of the main cash accounts';


--
-- Name: COLUMN account_chart_template.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.create_date IS 'Created on';


--
-- Name: COLUMN account_chart_template.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_chart_template.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.currency_id IS 'Currency';


--
-- Name: COLUMN account_chart_template.visible; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.visible IS 'Can be Visible?';


--
-- Name: COLUMN account_chart_template.property_account_receivable_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.property_account_receivable_id IS 'Receivable Account';


--
-- Name: COLUMN account_chart_template.property_stock_valuation_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.property_stock_valuation_account_id IS 'Account Template for Stock Valuation';


--
-- Name: COLUMN account_chart_template.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.create_uid IS 'Created by';


--
-- Name: COLUMN account_chart_template.complete_tax_set; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.complete_tax_set IS 'Complete Set of Taxes';


--
-- Name: COLUMN account_chart_template.property_stock_account_output_categ_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.property_stock_account_output_categ_id IS 'Output Account for Stock Valuation';


--
-- Name: COLUMN account_chart_template.transfer_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.transfer_account_id IS 'Transfer Account';


--
-- Name: COLUMN account_chart_template.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.company_id IS 'Company';


--
-- Name: COLUMN account_chart_template.expense_currency_exchange_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.expense_currency_exchange_account_id IS 'Loss Exchange Rate Account';


--
-- Name: COLUMN account_chart_template.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.parent_id IS 'Parent Chart Template';


--
-- Name: COLUMN account_chart_template.property_account_income_categ_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.property_account_income_categ_id IS 'Category of Income Account';


--
-- Name: COLUMN account_chart_template.property_stock_account_input_categ_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.property_stock_account_input_categ_id IS 'Input Account for Stock Valuation';


--
-- Name: COLUMN account_chart_template.property_account_income_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.property_account_income_id IS 'Income Account on Product Template';


--
-- Name: COLUMN account_chart_template.property_account_expense_categ_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.property_account_expense_categ_id IS 'Category of Expense Account';


--
-- Name: COLUMN account_chart_template.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_chart_template.use_anglo_saxon; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.use_anglo_saxon IS 'Use Anglo-Saxon accounting';


--
-- Name: COLUMN account_chart_template.code_digits; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.code_digits IS '# of Digits';


--
-- Name: COLUMN account_chart_template.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.name IS 'Name';


--
-- Name: COLUMN account_chart_template.property_account_expense_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.property_account_expense_id IS 'Expense Account on Product Template';


--
-- Name: COLUMN account_chart_template.property_account_payable_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.property_account_payable_id IS 'Payable Account';


--
-- Name: COLUMN account_chart_template.income_currency_exchange_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_chart_template.income_currency_exchange_account_id IS 'Gain Exchange Rate Account';


--
-- Name: account_chart_template_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_chart_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_chart_template_id_seq OWNER TO odoouser;

--
-- Name: account_chart_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_chart_template_id_seq OWNED BY account_chart_template.id;


--
-- Name: account_common_account_report; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_common_account_report (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    display_account character varying NOT NULL,
    date_from date,
    company_id integer,
    write_date timestamp without time zone,
    date_to date,
    write_uid integer,
    target_move character varying NOT NULL
);


ALTER TABLE account_common_account_report OWNER TO odoouser;

--
-- Name: TABLE account_common_account_report; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_common_account_report IS 'Account Common Account Report';


--
-- Name: COLUMN account_common_account_report.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_account_report.create_uid IS 'Created by';


--
-- Name: COLUMN account_common_account_report.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_account_report.create_date IS 'Created on';


--
-- Name: COLUMN account_common_account_report.display_account; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_account_report.display_account IS 'Display Accounts';


--
-- Name: COLUMN account_common_account_report.date_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_account_report.date_from IS 'Start Date';


--
-- Name: COLUMN account_common_account_report.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_account_report.company_id IS 'Company';


--
-- Name: COLUMN account_common_account_report.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_account_report.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_common_account_report.date_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_account_report.date_to IS 'End Date';


--
-- Name: COLUMN account_common_account_report.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_account_report.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_common_account_report.target_move; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_account_report.target_move IS 'Target Moves';


--
-- Name: account_common_account_report_account_journal_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_common_account_report_account_journal_rel (
    account_common_account_report_id integer NOT NULL,
    account_journal_id integer NOT NULL
);


ALTER TABLE account_common_account_report_account_journal_rel OWNER TO odoouser;

--
-- Name: TABLE account_common_account_report_account_journal_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_common_account_report_account_journal_rel IS 'RELATION BETWEEN account_common_account_report AND account_journal';


--
-- Name: account_common_account_report_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_common_account_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_common_account_report_id_seq OWNER TO odoouser;

--
-- Name: account_common_account_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_common_account_report_id_seq OWNED BY account_common_account_report.id;


--
-- Name: account_common_partner_report; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_common_partner_report (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    date_from date,
    result_selection character varying NOT NULL,
    company_id integer,
    write_date timestamp without time zone,
    date_to date,
    write_uid integer,
    target_move character varying NOT NULL
);


ALTER TABLE account_common_partner_report OWNER TO odoouser;

--
-- Name: TABLE account_common_partner_report; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_common_partner_report IS 'Account Common Partner Report';


--
-- Name: COLUMN account_common_partner_report.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_partner_report.create_uid IS 'Created by';


--
-- Name: COLUMN account_common_partner_report.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_partner_report.create_date IS 'Created on';


--
-- Name: COLUMN account_common_partner_report.date_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_partner_report.date_from IS 'Start Date';


--
-- Name: COLUMN account_common_partner_report.result_selection; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_partner_report.result_selection IS 'Partner''s';


--
-- Name: COLUMN account_common_partner_report.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_partner_report.company_id IS 'Company';


--
-- Name: COLUMN account_common_partner_report.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_partner_report.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_common_partner_report.date_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_partner_report.date_to IS 'End Date';


--
-- Name: COLUMN account_common_partner_report.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_partner_report.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_common_partner_report.target_move; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_partner_report.target_move IS 'Target Moves';


--
-- Name: account_common_partner_report_account_journal_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_common_partner_report_account_journal_rel (
    account_common_partner_report_id integer NOT NULL,
    account_journal_id integer NOT NULL
);


ALTER TABLE account_common_partner_report_account_journal_rel OWNER TO odoouser;

--
-- Name: TABLE account_common_partner_report_account_journal_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_common_partner_report_account_journal_rel IS 'RELATION BETWEEN account_common_partner_report AND account_journal';


--
-- Name: account_common_partner_report_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_common_partner_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_common_partner_report_id_seq OWNER TO odoouser;

--
-- Name: account_common_partner_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_common_partner_report_id_seq OWNED BY account_common_partner_report.id;


--
-- Name: account_common_report; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_common_report (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    date_from date,
    company_id integer,
    write_date timestamp without time zone,
    date_to date,
    write_uid integer,
    target_move character varying NOT NULL
);


ALTER TABLE account_common_report OWNER TO odoouser;

--
-- Name: TABLE account_common_report; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_common_report IS 'Account Common Report';


--
-- Name: COLUMN account_common_report.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_report.create_uid IS 'Created by';


--
-- Name: COLUMN account_common_report.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_report.create_date IS 'Created on';


--
-- Name: COLUMN account_common_report.date_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_report.date_from IS 'Start Date';


--
-- Name: COLUMN account_common_report.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_report.company_id IS 'Company';


--
-- Name: COLUMN account_common_report.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_report.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_common_report.date_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_report.date_to IS 'End Date';


--
-- Name: COLUMN account_common_report.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_report.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_common_report.target_move; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_common_report.target_move IS 'Target Moves';


--
-- Name: account_common_report_account_journal_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_common_report_account_journal_rel (
    account_common_report_id integer NOT NULL,
    account_journal_id integer NOT NULL
);


ALTER TABLE account_common_report_account_journal_rel OWNER TO odoouser;

--
-- Name: TABLE account_common_report_account_journal_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_common_report_account_journal_rel IS 'RELATION BETWEEN account_common_report AND account_journal';


--
-- Name: account_common_report_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_common_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_common_report_id_seq OWNER TO odoouser;

--
-- Name: account_common_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_common_report_id_seq OWNED BY account_common_report.id;


--
-- Name: account_config_settings; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_config_settings (
    id integer NOT NULL,
    create_date timestamp without time zone,
    module_account_asset boolean,
    write_uid integer,
    module_account_accountant boolean,
    module_account_plaid boolean,
    create_uid integer,
    complete_tax_set boolean,
    template_transfer_account_id integer,
    module_account_bank_statement_import_qif boolean,
    module_account_budget boolean,
    company_id integer NOT NULL,
    group_multi_currency boolean,
    group_proforma_invoices boolean,
    has_chart_of_accounts boolean,
    has_default_company boolean,
    purchase_tax_rate double precision,
    module_account_bank_statement_import_ofx boolean,
    default_purchase_tax_id integer,
    group_analytic_accounting boolean,
    write_date timestamp without time zone,
    sale_tax_rate double precision,
    module_account_batch_deposit boolean,
    module_account_yodlee boolean,
    module_account_tax_cash_basis boolean,
    chart_template_id integer,
    default_sale_tax_id integer,
    sale_tax_id integer,
    module_account_sepa boolean,
    module_account_reports boolean,
    module_l10n_us_check_printing boolean,
    module_account_reports_followup boolean,
    purchase_tax_id integer,
    module_payment_paypal boolean,
    module_payment_buckaroo boolean,
    module_payment_adyen boolean,
    module_payment_ogone boolean,
    module_payment_transfer boolean,
    group_analytic_account_for_sales boolean,
    default_acquirer integer
);


ALTER TABLE account_config_settings OWNER TO odoouser;

--
-- Name: TABLE account_config_settings; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_config_settings IS 'account.config.settings';


--
-- Name: COLUMN account_config_settings.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.create_date IS 'Created on';


--
-- Name: COLUMN account_config_settings.module_account_asset; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_asset IS 'Assets management';


--
-- Name: COLUMN account_config_settings.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_config_settings.module_account_accountant; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_accountant IS 'Full accounting features: journals, legal statements, chart of accounts, etc.';


--
-- Name: COLUMN account_config_settings.module_account_plaid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_plaid IS 'Plaid Connector';


--
-- Name: COLUMN account_config_settings.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.create_uid IS 'Created by';


--
-- Name: COLUMN account_config_settings.complete_tax_set; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.complete_tax_set IS 'Complete set of taxes';


--
-- Name: COLUMN account_config_settings.template_transfer_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.template_transfer_account_id IS 'Template transfer account id';


--
-- Name: COLUMN account_config_settings.module_account_bank_statement_import_qif; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_bank_statement_import_qif IS 'Import .qif files';


--
-- Name: COLUMN account_config_settings.module_account_budget; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_budget IS 'Budget management';


--
-- Name: COLUMN account_config_settings.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.company_id IS 'Company';


--
-- Name: COLUMN account_config_settings.group_multi_currency; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.group_multi_currency IS 'Allow multi currencies';


--
-- Name: COLUMN account_config_settings.group_proforma_invoices; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.group_proforma_invoices IS 'Allow pro-forma invoices';


--
-- Name: COLUMN account_config_settings.has_chart_of_accounts; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.has_chart_of_accounts IS 'Company has a chart of accounts';


--
-- Name: COLUMN account_config_settings.has_default_company; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.has_default_company IS 'Has default company';


--
-- Name: COLUMN account_config_settings.purchase_tax_rate; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.purchase_tax_rate IS 'Purchase tax (%)';


--
-- Name: COLUMN account_config_settings.module_account_bank_statement_import_ofx; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_bank_statement_import_ofx IS 'Import in .ofx format';


--
-- Name: COLUMN account_config_settings.default_purchase_tax_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.default_purchase_tax_id IS 'Default Purchase Tax';


--
-- Name: COLUMN account_config_settings.group_analytic_accounting; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.group_analytic_accounting IS 'Analytic accounting';


--
-- Name: COLUMN account_config_settings.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_config_settings.sale_tax_rate; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.sale_tax_rate IS 'Sales tax (%)';


--
-- Name: COLUMN account_config_settings.module_account_batch_deposit; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_batch_deposit IS 'Use batch deposit';


--
-- Name: COLUMN account_config_settings.module_account_yodlee; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_yodlee IS 'Bank Interface - Sync your bank feeds automatically';


--
-- Name: COLUMN account_config_settings.module_account_tax_cash_basis; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_tax_cash_basis IS 'Allow Tax Cash Basis';


--
-- Name: COLUMN account_config_settings.chart_template_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.chart_template_id IS 'Template';


--
-- Name: COLUMN account_config_settings.default_sale_tax_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.default_sale_tax_id IS 'Default Sale Tax';


--
-- Name: COLUMN account_config_settings.sale_tax_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.sale_tax_id IS 'Default sale tax';


--
-- Name: COLUMN account_config_settings.module_account_sepa; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_sepa IS 'Use SEPA payments';


--
-- Name: COLUMN account_config_settings.module_account_reports; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_reports IS 'Get dynamic accounting reports';


--
-- Name: COLUMN account_config_settings.module_l10n_us_check_printing; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_l10n_us_check_printing IS 'Allow check printing and deposits';


--
-- Name: COLUMN account_config_settings.module_account_reports_followup; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_account_reports_followup IS 'Enable payment followup management';


--
-- Name: COLUMN account_config_settings.purchase_tax_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.purchase_tax_id IS 'Default purchase tax';


--
-- Name: COLUMN account_config_settings.module_payment_paypal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_payment_paypal IS 'Paypal';


--
-- Name: COLUMN account_config_settings.module_payment_buckaroo; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_payment_buckaroo IS 'Buckaroo';


--
-- Name: COLUMN account_config_settings.module_payment_adyen; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_payment_adyen IS 'Adyen';


--
-- Name: COLUMN account_config_settings.module_payment_ogone; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_payment_ogone IS 'Ogone';


--
-- Name: COLUMN account_config_settings.module_payment_transfer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.module_payment_transfer IS 'Wire Transfer';


--
-- Name: COLUMN account_config_settings.group_analytic_account_for_sales; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.group_analytic_account_for_sales IS 'Analytic accounting for sales';


--
-- Name: COLUMN account_config_settings.default_acquirer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_config_settings.default_acquirer IS 'Default Acquirer';


--
-- Name: account_config_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_config_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_config_settings_id_seq OWNER TO odoouser;

--
-- Name: account_config_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_config_settings_id_seq OWNED BY account_config_settings.id;


--
-- Name: account_financial_report; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_financial_report (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    sequence integer,
    level integer,
    style_overwrite integer,
    sign integer NOT NULL,
    parent_id integer,
    write_date timestamp without time zone,
    account_report_id integer,
    display_detail character varying,
    write_uid integer,
    type character varying
);


ALTER TABLE account_financial_report OWNER TO odoouser;

--
-- Name: TABLE account_financial_report; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_financial_report IS 'Account Report';


--
-- Name: COLUMN account_financial_report.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.create_uid IS 'Created by';


--
-- Name: COLUMN account_financial_report.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.create_date IS 'Created on';


--
-- Name: COLUMN account_financial_report.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.name IS 'Report Name';


--
-- Name: COLUMN account_financial_report.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.sequence IS 'Sequence';


--
-- Name: COLUMN account_financial_report.level; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.level IS 'Level';


--
-- Name: COLUMN account_financial_report.style_overwrite; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.style_overwrite IS 'Financial Report Style';


--
-- Name: COLUMN account_financial_report.sign; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.sign IS 'Sign on Reports';


--
-- Name: COLUMN account_financial_report.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.parent_id IS 'Parent';


--
-- Name: COLUMN account_financial_report.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_financial_report.account_report_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.account_report_id IS 'Report Value';


--
-- Name: COLUMN account_financial_report.display_detail; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.display_detail IS 'Display details';


--
-- Name: COLUMN account_financial_report.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_financial_report.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_financial_report.type IS 'Type';


--
-- Name: account_financial_report_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_financial_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_financial_report_id_seq OWNER TO odoouser;

--
-- Name: account_financial_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_financial_report_id_seq OWNED BY account_financial_report.id;


--
-- Name: account_fiscal_position; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_fiscal_position (
    id integer NOT NULL,
    create_uid integer,
    country_group_id integer,
    create_date timestamp without time zone,
    zip_to integer,
    name character varying NOT NULL,
    sequence integer,
    country_id integer,
    company_id integer,
    auto_apply boolean,
    write_uid integer,
    note text,
    zip_from integer,
    write_date timestamp without time zone,
    vat_required boolean,
    active boolean
);


ALTER TABLE account_fiscal_position OWNER TO odoouser;

--
-- Name: TABLE account_fiscal_position; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_fiscal_position IS 'Fiscal Position';


--
-- Name: COLUMN account_fiscal_position.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.create_uid IS 'Created by';


--
-- Name: COLUMN account_fiscal_position.country_group_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.country_group_id IS 'Country Group';


--
-- Name: COLUMN account_fiscal_position.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.create_date IS 'Created on';


--
-- Name: COLUMN account_fiscal_position.zip_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.zip_to IS 'Zip Range To';


--
-- Name: COLUMN account_fiscal_position.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.name IS 'Fiscal Position';


--
-- Name: COLUMN account_fiscal_position.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.sequence IS 'Sequence';


--
-- Name: COLUMN account_fiscal_position.country_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.country_id IS 'Country';


--
-- Name: COLUMN account_fiscal_position.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.company_id IS 'Company';


--
-- Name: COLUMN account_fiscal_position.auto_apply; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.auto_apply IS 'Detect Automatically';


--
-- Name: COLUMN account_fiscal_position.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_fiscal_position.note; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.note IS 'Notes';


--
-- Name: COLUMN account_fiscal_position.zip_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.zip_from IS 'Zip Range From';


--
-- Name: COLUMN account_fiscal_position.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_fiscal_position.vat_required; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.vat_required IS 'VAT required';


--
-- Name: COLUMN account_fiscal_position.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position.active IS 'Active';


--
-- Name: account_fiscal_position_account; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_fiscal_position_account (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    position_id integer NOT NULL,
    write_uid integer,
    account_dest_id integer NOT NULL,
    write_date timestamp without time zone,
    account_src_id integer NOT NULL
);


ALTER TABLE account_fiscal_position_account OWNER TO odoouser;

--
-- Name: TABLE account_fiscal_position_account; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_fiscal_position_account IS 'Accounts Fiscal Position';


--
-- Name: COLUMN account_fiscal_position_account.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account.create_uid IS 'Created by';


--
-- Name: COLUMN account_fiscal_position_account.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account.create_date IS 'Created on';


--
-- Name: COLUMN account_fiscal_position_account.position_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account.position_id IS 'Fiscal Position';


--
-- Name: COLUMN account_fiscal_position_account.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_fiscal_position_account.account_dest_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account.account_dest_id IS 'Account to Use Instead';


--
-- Name: COLUMN account_fiscal_position_account.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_fiscal_position_account.account_src_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account.account_src_id IS 'Account on Product';


--
-- Name: account_fiscal_position_account_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_fiscal_position_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_fiscal_position_account_id_seq OWNER TO odoouser;

--
-- Name: account_fiscal_position_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_fiscal_position_account_id_seq OWNED BY account_fiscal_position_account.id;


--
-- Name: account_fiscal_position_account_template; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_fiscal_position_account_template (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    position_id integer NOT NULL,
    write_uid integer,
    account_dest_id integer NOT NULL,
    write_date timestamp without time zone,
    account_src_id integer NOT NULL
);


ALTER TABLE account_fiscal_position_account_template OWNER TO odoouser;

--
-- Name: TABLE account_fiscal_position_account_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_fiscal_position_account_template IS 'Template Account Fiscal Mapping';


--
-- Name: COLUMN account_fiscal_position_account_template.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account_template.create_uid IS 'Created by';


--
-- Name: COLUMN account_fiscal_position_account_template.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account_template.create_date IS 'Created on';


--
-- Name: COLUMN account_fiscal_position_account_template.position_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account_template.position_id IS 'Fiscal Mapping';


--
-- Name: COLUMN account_fiscal_position_account_template.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_fiscal_position_account_template.account_dest_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account_template.account_dest_id IS 'Account Destination';


--
-- Name: COLUMN account_fiscal_position_account_template.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account_template.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_fiscal_position_account_template.account_src_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_account_template.account_src_id IS 'Account Source';


--
-- Name: account_fiscal_position_account_template_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_fiscal_position_account_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_fiscal_position_account_template_id_seq OWNER TO odoouser;

--
-- Name: account_fiscal_position_account_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_fiscal_position_account_template_id_seq OWNED BY account_fiscal_position_account_template.id;


--
-- Name: account_fiscal_position_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_fiscal_position_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_fiscal_position_id_seq OWNER TO odoouser;

--
-- Name: account_fiscal_position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_fiscal_position_id_seq OWNED BY account_fiscal_position.id;


--
-- Name: account_fiscal_position_res_country_state_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_fiscal_position_res_country_state_rel (
    account_fiscal_position_id integer NOT NULL,
    res_country_state_id integer NOT NULL
);


ALTER TABLE account_fiscal_position_res_country_state_rel OWNER TO odoouser;

--
-- Name: TABLE account_fiscal_position_res_country_state_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_fiscal_position_res_country_state_rel IS 'RELATION BETWEEN account_fiscal_position AND res_country_state';


--
-- Name: account_fiscal_position_tax; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_fiscal_position_tax (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    position_id integer NOT NULL,
    tax_src_id integer NOT NULL,
    write_uid integer,
    tax_dest_id integer,
    write_date timestamp without time zone
);


ALTER TABLE account_fiscal_position_tax OWNER TO odoouser;

--
-- Name: TABLE account_fiscal_position_tax; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_fiscal_position_tax IS 'Taxes Fiscal Position';


--
-- Name: COLUMN account_fiscal_position_tax.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax.create_uid IS 'Created by';


--
-- Name: COLUMN account_fiscal_position_tax.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax.create_date IS 'Created on';


--
-- Name: COLUMN account_fiscal_position_tax.position_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax.position_id IS 'Fiscal Position';


--
-- Name: COLUMN account_fiscal_position_tax.tax_src_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax.tax_src_id IS 'Tax on Product';


--
-- Name: COLUMN account_fiscal_position_tax.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_fiscal_position_tax.tax_dest_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax.tax_dest_id IS 'Tax to Apply';


--
-- Name: COLUMN account_fiscal_position_tax.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax.write_date IS 'Last Updated on';


--
-- Name: account_fiscal_position_tax_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_fiscal_position_tax_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_fiscal_position_tax_id_seq OWNER TO odoouser;

--
-- Name: account_fiscal_position_tax_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_fiscal_position_tax_id_seq OWNED BY account_fiscal_position_tax.id;


--
-- Name: account_fiscal_position_tax_template; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_fiscal_position_tax_template (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    position_id integer NOT NULL,
    tax_src_id integer NOT NULL,
    write_uid integer,
    tax_dest_id integer,
    write_date timestamp without time zone
);


ALTER TABLE account_fiscal_position_tax_template OWNER TO odoouser;

--
-- Name: TABLE account_fiscal_position_tax_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_fiscal_position_tax_template IS 'Template Tax Fiscal Position';


--
-- Name: COLUMN account_fiscal_position_tax_template.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax_template.create_uid IS 'Created by';


--
-- Name: COLUMN account_fiscal_position_tax_template.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax_template.create_date IS 'Created on';


--
-- Name: COLUMN account_fiscal_position_tax_template.position_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax_template.position_id IS 'Fiscal Position';


--
-- Name: COLUMN account_fiscal_position_tax_template.tax_src_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax_template.tax_src_id IS 'Tax Source';


--
-- Name: COLUMN account_fiscal_position_tax_template.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_fiscal_position_tax_template.tax_dest_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax_template.tax_dest_id IS 'Replacement Tax';


--
-- Name: COLUMN account_fiscal_position_tax_template.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_tax_template.write_date IS 'Last Updated on';


--
-- Name: account_fiscal_position_tax_template_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_fiscal_position_tax_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_fiscal_position_tax_template_id_seq OWNER TO odoouser;

--
-- Name: account_fiscal_position_tax_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_fiscal_position_tax_template_id_seq OWNED BY account_fiscal_position_tax_template.id;


--
-- Name: account_fiscal_position_template; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_fiscal_position_template (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    chart_template_id integer NOT NULL,
    write_uid integer,
    note text,
    write_date timestamp without time zone
);


ALTER TABLE account_fiscal_position_template OWNER TO odoouser;

--
-- Name: TABLE account_fiscal_position_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_fiscal_position_template IS 'Template for Fiscal Position';


--
-- Name: COLUMN account_fiscal_position_template.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_template.create_uid IS 'Created by';


--
-- Name: COLUMN account_fiscal_position_template.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_template.create_date IS 'Created on';


--
-- Name: COLUMN account_fiscal_position_template.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_template.name IS 'Fiscal Position Template';


--
-- Name: COLUMN account_fiscal_position_template.chart_template_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_template.chart_template_id IS 'Chart Template';


--
-- Name: COLUMN account_fiscal_position_template.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_fiscal_position_template.note; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_template.note IS 'Notes';


--
-- Name: COLUMN account_fiscal_position_template.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_fiscal_position_template.write_date IS 'Last Updated on';


--
-- Name: account_fiscal_position_template_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_fiscal_position_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_fiscal_position_template_id_seq OWNER TO odoouser;

--
-- Name: account_fiscal_position_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_fiscal_position_template_id_seq OWNED BY account_fiscal_position_template.id;


--
-- Name: account_full_reconcile; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_full_reconcile (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE account_full_reconcile OWNER TO odoouser;

--
-- Name: TABLE account_full_reconcile; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_full_reconcile IS 'Full Reconcile';


--
-- Name: COLUMN account_full_reconcile.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_full_reconcile.create_uid IS 'Created by';


--
-- Name: COLUMN account_full_reconcile.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_full_reconcile.create_date IS 'Created on';


--
-- Name: COLUMN account_full_reconcile.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_full_reconcile.name IS 'Number';


--
-- Name: COLUMN account_full_reconcile.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_full_reconcile.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_full_reconcile.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_full_reconcile.write_date IS 'Last Updated on';


--
-- Name: account_full_reconcile_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_full_reconcile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_full_reconcile_id_seq OWNER TO odoouser;

--
-- Name: account_full_reconcile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_full_reconcile_id_seq OWNED BY account_full_reconcile.id;


--
-- Name: account_invoice; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_invoice (
    id integer NOT NULL,
    comment text,
    date_due date,
    create_date timestamp without time zone,
    reference character varying,
    reference_type character varying NOT NULL,
    number character varying,
    journal_id integer NOT NULL,
    currency_id integer NOT NULL,
    amount_total_company_signed numeric,
    partner_id integer NOT NULL,
    create_uid integer,
    amount_untaxed numeric,
    partner_bank_id integer,
    residual_company_signed numeric,
    amount_total_signed numeric,
    message_last_post timestamp without time zone,
    company_id integer NOT NULL,
    amount_tax numeric,
    state character varying,
    fiscal_position_id integer,
    type character varying,
    sent boolean,
    account_id integer NOT NULL,
    reconciled boolean,
    origin character varying,
    residual numeric,
    move_name character varying,
    date_invoice date,
    payment_term_id integer,
    write_date timestamp without time zone,
    residual_signed numeric,
    date date,
    user_id integer,
    write_uid integer,
    move_id integer,
    amount_total numeric,
    amount_untaxed_signed numeric,
    name character varying,
    commercial_partner_id integer,
    team_id integer
);


ALTER TABLE account_invoice OWNER TO odoouser;

--
-- Name: TABLE account_invoice; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_invoice IS 'Invoice';


--
-- Name: COLUMN account_invoice.comment; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.comment IS 'Additional Information';


--
-- Name: COLUMN account_invoice.date_due; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.date_due IS 'Due Date';


--
-- Name: COLUMN account_invoice.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.create_date IS 'Created on';


--
-- Name: COLUMN account_invoice.reference; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.reference IS 'Vendor Reference';


--
-- Name: COLUMN account_invoice.reference_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.reference_type IS 'Payment Reference';


--
-- Name: COLUMN account_invoice.number; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.number IS 'Number';


--
-- Name: COLUMN account_invoice.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.journal_id IS 'Journal';


--
-- Name: COLUMN account_invoice.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.currency_id IS 'Currency';


--
-- Name: COLUMN account_invoice.amount_total_company_signed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.amount_total_company_signed IS 'Total';


--
-- Name: COLUMN account_invoice.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.partner_id IS 'Partner';


--
-- Name: COLUMN account_invoice.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.create_uid IS 'Created by';


--
-- Name: COLUMN account_invoice.amount_untaxed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.amount_untaxed IS 'Untaxed Amount';


--
-- Name: COLUMN account_invoice.partner_bank_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.partner_bank_id IS 'Bank Account';


--
-- Name: COLUMN account_invoice.residual_company_signed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.residual_company_signed IS 'Amount Due';


--
-- Name: COLUMN account_invoice.amount_total_signed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.amount_total_signed IS 'Total';


--
-- Name: COLUMN account_invoice.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN account_invoice.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.company_id IS 'Company';


--
-- Name: COLUMN account_invoice.amount_tax; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.amount_tax IS 'Tax';


--
-- Name: COLUMN account_invoice.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.state IS 'Status';


--
-- Name: COLUMN account_invoice.fiscal_position_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.fiscal_position_id IS 'Fiscal Position';


--
-- Name: COLUMN account_invoice.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.type IS 'Type';


--
-- Name: COLUMN account_invoice.sent; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.sent IS 'Sent';


--
-- Name: COLUMN account_invoice.account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.account_id IS 'Account';


--
-- Name: COLUMN account_invoice.reconciled; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.reconciled IS 'Paid/Reconciled';


--
-- Name: COLUMN account_invoice.origin; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.origin IS 'Source Document';


--
-- Name: COLUMN account_invoice.residual; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.residual IS 'Amount Due';


--
-- Name: COLUMN account_invoice.move_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.move_name IS 'Journal Entry';


--
-- Name: COLUMN account_invoice.date_invoice; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.date_invoice IS 'Invoice Date';


--
-- Name: COLUMN account_invoice.payment_term_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.payment_term_id IS 'Payment Term';


--
-- Name: COLUMN account_invoice.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_invoice.residual_signed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.residual_signed IS 'Amount Due';


--
-- Name: COLUMN account_invoice.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.date IS 'Accounting Date';


--
-- Name: COLUMN account_invoice.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.user_id IS 'Salesperson';


--
-- Name: COLUMN account_invoice.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_invoice.move_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.move_id IS 'Journal Entry';


--
-- Name: COLUMN account_invoice.amount_total; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.amount_total IS 'Total';


--
-- Name: COLUMN account_invoice.amount_untaxed_signed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.amount_untaxed_signed IS 'Untaxed Amount';


--
-- Name: COLUMN account_invoice.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.name IS 'Reference/Description';


--
-- Name: COLUMN account_invoice.commercial_partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.commercial_partner_id IS 'Commercial Entity';


--
-- Name: COLUMN account_invoice.team_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice.team_id IS 'Sales Team';


--
-- Name: account_invoice_account_move_line_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_invoice_account_move_line_rel (
    account_invoice_id integer NOT NULL,
    account_move_line_id integer NOT NULL
);


ALTER TABLE account_invoice_account_move_line_rel OWNER TO odoouser;

--
-- Name: TABLE account_invoice_account_move_line_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_invoice_account_move_line_rel IS 'RELATION BETWEEN account_invoice AND account_move_line';


--
-- Name: account_invoice_cancel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_invoice_cancel (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE account_invoice_cancel OWNER TO odoouser;

--
-- Name: TABLE account_invoice_cancel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_invoice_cancel IS 'Cancel the Selected Invoices';


--
-- Name: COLUMN account_invoice_cancel.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_cancel.create_uid IS 'Created by';


--
-- Name: COLUMN account_invoice_cancel.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_cancel.create_date IS 'Created on';


--
-- Name: COLUMN account_invoice_cancel.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_cancel.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_invoice_cancel.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_cancel.write_uid IS 'Last Updated by';


--
-- Name: account_invoice_cancel_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_invoice_cancel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_invoice_cancel_id_seq OWNER TO odoouser;

--
-- Name: account_invoice_cancel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_invoice_cancel_id_seq OWNED BY account_invoice_cancel.id;


--
-- Name: account_invoice_confirm; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_invoice_confirm (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE account_invoice_confirm OWNER TO odoouser;

--
-- Name: TABLE account_invoice_confirm; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_invoice_confirm IS 'Confirm the selected invoices';


--
-- Name: COLUMN account_invoice_confirm.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_confirm.create_uid IS 'Created by';


--
-- Name: COLUMN account_invoice_confirm.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_confirm.create_date IS 'Created on';


--
-- Name: COLUMN account_invoice_confirm.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_confirm.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_invoice_confirm.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_confirm.write_uid IS 'Last Updated by';


--
-- Name: account_invoice_confirm_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_invoice_confirm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_invoice_confirm_id_seq OWNER TO odoouser;

--
-- Name: account_invoice_confirm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_invoice_confirm_id_seq OWNED BY account_invoice_confirm.id;


--
-- Name: account_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_invoice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_invoice_id_seq OWNER TO odoouser;

--
-- Name: account_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_invoice_id_seq OWNED BY account_invoice.id;


--
-- Name: account_invoice_line; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_invoice_line (
    id integer NOT NULL,
    origin character varying,
    create_date timestamp without time zone,
    sequence integer,
    price_unit numeric NOT NULL,
    price_subtotal numeric,
    write_uid integer,
    currency_id integer,
    uom_id integer,
    partner_id integer,
    create_uid integer,
    company_id integer,
    account_analytic_id integer,
    account_id integer NOT NULL,
    discount numeric,
    write_date timestamp without time zone,
    price_subtotal_signed numeric,
    name text NOT NULL,
    product_id integer,
    invoice_id integer,
    quantity numeric NOT NULL
);


ALTER TABLE account_invoice_line OWNER TO odoouser;

--
-- Name: TABLE account_invoice_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_invoice_line IS 'Invoice Line';


--
-- Name: COLUMN account_invoice_line.origin; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.origin IS 'Source Document';


--
-- Name: COLUMN account_invoice_line.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.create_date IS 'Created on';


--
-- Name: COLUMN account_invoice_line.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.sequence IS 'Sequence';


--
-- Name: COLUMN account_invoice_line.price_unit; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.price_unit IS 'Unit Price';


--
-- Name: COLUMN account_invoice_line.price_subtotal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.price_subtotal IS 'Amount';


--
-- Name: COLUMN account_invoice_line.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_invoice_line.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.currency_id IS 'Currency';


--
-- Name: COLUMN account_invoice_line.uom_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.uom_id IS 'Unit of Measure';


--
-- Name: COLUMN account_invoice_line.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.partner_id IS 'Partner';


--
-- Name: COLUMN account_invoice_line.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.create_uid IS 'Created by';


--
-- Name: COLUMN account_invoice_line.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.company_id IS 'Company';


--
-- Name: COLUMN account_invoice_line.account_analytic_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.account_analytic_id IS 'Analytic Account';


--
-- Name: COLUMN account_invoice_line.account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.account_id IS 'Account';


--
-- Name: COLUMN account_invoice_line.discount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.discount IS 'Discount (%)';


--
-- Name: COLUMN account_invoice_line.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_invoice_line.price_subtotal_signed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.price_subtotal_signed IS 'Amount Signed';


--
-- Name: COLUMN account_invoice_line.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.name IS 'Description';


--
-- Name: COLUMN account_invoice_line.product_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.product_id IS 'Product';


--
-- Name: COLUMN account_invoice_line.invoice_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.invoice_id IS 'Invoice Reference';


--
-- Name: COLUMN account_invoice_line.quantity; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_line.quantity IS 'Quantity';


--
-- Name: account_invoice_line_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_invoice_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_invoice_line_id_seq OWNER TO odoouser;

--
-- Name: account_invoice_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_invoice_line_id_seq OWNED BY account_invoice_line.id;


--
-- Name: account_invoice_line_tax; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_invoice_line_tax (
    invoice_line_id integer NOT NULL,
    tax_id integer NOT NULL
);


ALTER TABLE account_invoice_line_tax OWNER TO odoouser;

--
-- Name: TABLE account_invoice_line_tax; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_invoice_line_tax IS 'RELATION BETWEEN account_invoice_line AND account_tax';


--
-- Name: account_invoice_payment_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_invoice_payment_rel (
    payment_id integer NOT NULL,
    invoice_id integer NOT NULL
);


ALTER TABLE account_invoice_payment_rel OWNER TO odoouser;

--
-- Name: TABLE account_invoice_payment_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_invoice_payment_rel IS 'RELATION BETWEEN account_payment AND account_invoice';


--
-- Name: account_invoice_refund; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_invoice_refund (
    id integer NOT NULL,
    create_uid integer,
    filter_refund character varying NOT NULL,
    create_date timestamp without time zone,
    description character varying NOT NULL,
    write_uid integer,
    date_invoice date NOT NULL,
    write_date timestamp without time zone,
    date date
);


ALTER TABLE account_invoice_refund OWNER TO odoouser;

--
-- Name: TABLE account_invoice_refund; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_invoice_refund IS 'Invoice Refund';


--
-- Name: COLUMN account_invoice_refund.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_refund.create_uid IS 'Created by';


--
-- Name: COLUMN account_invoice_refund.filter_refund; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_refund.filter_refund IS 'Refund Method';


--
-- Name: COLUMN account_invoice_refund.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_refund.create_date IS 'Created on';


--
-- Name: COLUMN account_invoice_refund.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_refund.description IS 'Reason';


--
-- Name: COLUMN account_invoice_refund.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_refund.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_invoice_refund.date_invoice; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_refund.date_invoice IS 'Refund Date';


--
-- Name: COLUMN account_invoice_refund.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_refund.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_invoice_refund.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_refund.date IS 'Accounting Date';


--
-- Name: account_invoice_refund_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_invoice_refund_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_invoice_refund_id_seq OWNER TO odoouser;

--
-- Name: account_invoice_refund_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_invoice_refund_id_seq OWNED BY account_invoice_refund.id;


--
-- Name: product_product; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_product (
    id integer NOT NULL,
    create_date timestamp without time zone,
    weight numeric,
    default_code character varying,
    name_template character varying,
    create_uid integer,
    message_last_post timestamp without time zone,
    product_tmpl_id integer NOT NULL,
    barcode character varying,
    volume double precision,
    write_date timestamp without time zone,
    active boolean,
    write_uid integer
);


ALTER TABLE product_product OWNER TO odoouser;

--
-- Name: TABLE product_product; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_product IS 'Product';


--
-- Name: COLUMN product_product.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.create_date IS 'Created on';


--
-- Name: COLUMN product_product.weight; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.weight IS 'Gross Weight';


--
-- Name: COLUMN product_product.default_code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.default_code IS 'Internal Reference';


--
-- Name: COLUMN product_product.name_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.name_template IS 'Template Name';


--
-- Name: COLUMN product_product.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.create_uid IS 'Created by';


--
-- Name: COLUMN product_product.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN product_product.product_tmpl_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.product_tmpl_id IS 'Product Template';


--
-- Name: COLUMN product_product.barcode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.barcode IS 'Barcode';


--
-- Name: COLUMN product_product.volume; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.volume IS 'Volume';


--
-- Name: COLUMN product_product.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_product.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.active IS 'Active';


--
-- Name: COLUMN product_product.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_product.write_uid IS 'Last Updated by';


--
-- Name: product_template; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_template (
    id integer NOT NULL,
    warranty double precision,
    list_price numeric,
    weight numeric,
    sequence integer,
    color integer,
    write_uid integer,
    uom_id integer NOT NULL,
    description_purchase text,
    create_date timestamp without time zone,
    create_uid integer,
    sale_ok boolean,
    categ_id integer NOT NULL,
    product_manager integer,
    message_last_post timestamp without time zone,
    company_id integer,
    state character varying,
    uom_po_id integer NOT NULL,
    description_sale text,
    description text,
    volume numeric,
    write_date timestamp without time zone,
    active boolean,
    rental boolean,
    name character varying NOT NULL,
    type character varying NOT NULL,
    track_service character varying,
    invoice_policy character varying,
    website_meta_title character varying,
    website_published boolean,
    website_meta_description text,
    website_description text,
    website_size_x integer,
    website_size_y integer,
    website_meta_keywords character varying,
    website_sequence integer
);


ALTER TABLE product_template OWNER TO odoouser;

--
-- Name: TABLE product_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_template IS 'Product Template';


--
-- Name: COLUMN product_template.warranty; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.warranty IS 'Warranty';


--
-- Name: COLUMN product_template.list_price; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.list_price IS 'Sale Price';


--
-- Name: COLUMN product_template.weight; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.weight IS 'Gross Weight';


--
-- Name: COLUMN product_template.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.sequence IS 'Sequence';


--
-- Name: COLUMN product_template.color; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.color IS 'Color Index';


--
-- Name: COLUMN product_template.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_template.uom_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.uom_id IS 'Unit of Measure';


--
-- Name: COLUMN product_template.description_purchase; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.description_purchase IS 'Purchase Description';


--
-- Name: COLUMN product_template.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.create_date IS 'Created on';


--
-- Name: COLUMN product_template.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.create_uid IS 'Created by';


--
-- Name: COLUMN product_template.sale_ok; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.sale_ok IS 'Can be Sold';


--
-- Name: COLUMN product_template.categ_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.categ_id IS 'Internal Category';


--
-- Name: COLUMN product_template.product_manager; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.product_manager IS 'Product Manager';


--
-- Name: COLUMN product_template.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN product_template.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.company_id IS 'Company';


--
-- Name: COLUMN product_template.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.state IS 'Status';


--
-- Name: COLUMN product_template.uom_po_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.uom_po_id IS 'Purchase Unit of Measure';


--
-- Name: COLUMN product_template.description_sale; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.description_sale IS 'Sale Description';


--
-- Name: COLUMN product_template.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.description IS 'Description';


--
-- Name: COLUMN product_template.volume; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.volume IS 'Volume';


--
-- Name: COLUMN product_template.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_template.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.active IS 'Active';


--
-- Name: COLUMN product_template.rental; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.rental IS 'Can be Rent';


--
-- Name: COLUMN product_template.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.name IS 'Name';


--
-- Name: COLUMN product_template.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.type IS 'Product Type';


--
-- Name: COLUMN product_template.track_service; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.track_service IS 'Track Service';


--
-- Name: COLUMN product_template.invoice_policy; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.invoice_policy IS 'Invoicing Policy';


--
-- Name: COLUMN product_template.website_meta_title; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.website_meta_title IS 'Website meta title';


--
-- Name: COLUMN product_template.website_published; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.website_published IS 'Visible in Website';


--
-- Name: COLUMN product_template.website_meta_description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.website_meta_description IS 'Website meta description';


--
-- Name: COLUMN product_template.website_description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.website_description IS 'Description for the website';


--
-- Name: COLUMN product_template.website_size_x; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.website_size_x IS 'Size X';


--
-- Name: COLUMN product_template.website_size_y; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.website_size_y IS 'Size Y';


--
-- Name: COLUMN product_template.website_meta_keywords; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.website_meta_keywords IS 'Website meta keywords';


--
-- Name: COLUMN product_template.website_sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_template.website_sequence IS 'Sequence';


--
-- Name: product_uom; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_uom (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    rounding numeric NOT NULL,
    write_uid integer,
    active boolean,
    write_date timestamp without time zone,
    factor numeric NOT NULL,
    uom_type character varying NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_uom_factor_gt_zero CHECK ((factor <> (0)::numeric))
);


ALTER TABLE product_uom OWNER TO odoouser;

--
-- Name: TABLE product_uom; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_uom IS 'Product Unit of Measure';


--
-- Name: COLUMN product_uom.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom.create_uid IS 'Created by';


--
-- Name: COLUMN product_uom.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom.create_date IS 'Created on';


--
-- Name: COLUMN product_uom.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom.name IS 'Unit of Measure';


--
-- Name: COLUMN product_uom.rounding; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom.rounding IS 'Rounding Precision';


--
-- Name: COLUMN product_uom.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_uom.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom.active IS 'Active';


--
-- Name: COLUMN product_uom.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_uom.factor; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom.factor IS 'Ratio';


--
-- Name: COLUMN product_uom.uom_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom.uom_type IS 'Type';


--
-- Name: COLUMN product_uom.category_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom.category_id IS 'Unit of Measure Category';


--
-- Name: res_company; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_company (
    id integer NOT NULL,
    name character varying NOT NULL,
    partner_id integer NOT NULL,
    currency_id integer NOT NULL,
    rml_footer text,
    create_date timestamp without time zone,
    rml_header text NOT NULL,
    rml_paper_format character varying NOT NULL,
    write_uid integer,
    logo_web bytea,
    font integer,
    account_no character varying,
    parent_id integer,
    email character varying(64),
    create_uid integer,
    custom_footer boolean,
    phone character varying(64),
    rml_header2 text NOT NULL,
    rml_header3 text NOT NULL,
    write_date timestamp without time zone,
    rml_header1 character varying,
    company_registry character varying(64),
    paperformat_id integer,
    fiscalyear_lock_date date,
    bank_account_code_prefix character varying,
    cash_account_code_prefix character varying,
    anglo_saxon_accounting boolean,
    fiscalyear_last_day integer NOT NULL,
    property_stock_account_input_categ_id integer,
    property_stock_valuation_account_id integer,
    expects_chart_of_accounts boolean,
    transfer_account_id integer,
    property_stock_account_output_categ_id integer,
    currency_exchange_journal_id integer,
    period_lock_date date,
    paypal_account character varying(128),
    accounts_code_digits integer,
    chart_template_id integer,
    overdue_msg text,
    fiscalyear_last_month integer NOT NULL,
    tax_calculation_rounding_method character varying,
    sale_note text
);


ALTER TABLE res_company OWNER TO odoouser;

--
-- Name: COLUMN res_company.rml_footer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.rml_footer IS 'Report Footer';


--
-- Name: COLUMN res_company.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.create_date IS 'Created on';


--
-- Name: COLUMN res_company.rml_header; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.rml_header IS 'RML Header';


--
-- Name: COLUMN res_company.rml_paper_format; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.rml_paper_format IS 'Paper Format';


--
-- Name: COLUMN res_company.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_company.logo_web; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.logo_web IS 'Logo Web';


--
-- Name: COLUMN res_company.font; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.font IS 'Font';


--
-- Name: COLUMN res_company.account_no; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.account_no IS 'Account No.';


--
-- Name: COLUMN res_company.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.parent_id IS 'Parent Company';


--
-- Name: COLUMN res_company.email; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.email IS 'Email';


--
-- Name: COLUMN res_company.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.create_uid IS 'Created by';


--
-- Name: COLUMN res_company.custom_footer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.custom_footer IS 'Custom Footer';


--
-- Name: COLUMN res_company.phone; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.phone IS 'Phone';


--
-- Name: COLUMN res_company.rml_header2; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.rml_header2 IS 'RML Internal Header';


--
-- Name: COLUMN res_company.rml_header3; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.rml_header3 IS 'RML Internal Header for Landscape Reports';


--
-- Name: COLUMN res_company.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_company.rml_header1; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.rml_header1 IS 'Company Tagline';


--
-- Name: COLUMN res_company.company_registry; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.company_registry IS 'Company Registry';


--
-- Name: COLUMN res_company.paperformat_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.paperformat_id IS 'Paper format';


--
-- Name: COLUMN res_company.fiscalyear_lock_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.fiscalyear_lock_date IS 'Lock Date';


--
-- Name: COLUMN res_company.bank_account_code_prefix; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.bank_account_code_prefix IS 'Prefix of the bank accounts';


--
-- Name: COLUMN res_company.cash_account_code_prefix; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.cash_account_code_prefix IS 'Prefix of the cash accounts';


--
-- Name: COLUMN res_company.anglo_saxon_accounting; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.anglo_saxon_accounting IS 'Use anglo-saxon accounting';


--
-- Name: COLUMN res_company.fiscalyear_last_day; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.fiscalyear_last_day IS 'Fiscalyear last day';


--
-- Name: COLUMN res_company.property_stock_account_input_categ_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.property_stock_account_input_categ_id IS 'Input Account for Stock Valuation';


--
-- Name: COLUMN res_company.property_stock_valuation_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.property_stock_valuation_account_id IS 'Account Template for Stock Valuation';


--
-- Name: COLUMN res_company.expects_chart_of_accounts; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.expects_chart_of_accounts IS 'Expects a Chart of Accounts';


--
-- Name: COLUMN res_company.transfer_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.transfer_account_id IS 'Inter-Banks Transfer Account';


--
-- Name: COLUMN res_company.property_stock_account_output_categ_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.property_stock_account_output_categ_id IS 'Output Account for Stock Valuation';


--
-- Name: COLUMN res_company.currency_exchange_journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.currency_exchange_journal_id IS 'Exchange Gain or Loss Journal';


--
-- Name: COLUMN res_company.period_lock_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.period_lock_date IS 'Lock Date for Non-Advisers';


--
-- Name: COLUMN res_company.paypal_account; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.paypal_account IS 'Paypal Account';


--
-- Name: COLUMN res_company.accounts_code_digits; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.accounts_code_digits IS 'Number of digits in an account code';


--
-- Name: COLUMN res_company.chart_template_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.chart_template_id IS 'Chart template id';


--
-- Name: COLUMN res_company.overdue_msg; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.overdue_msg IS 'Overdue Payments Message';


--
-- Name: COLUMN res_company.fiscalyear_last_month; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.fiscalyear_last_month IS 'Fiscalyear last month';


--
-- Name: COLUMN res_company.tax_calculation_rounding_method; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.tax_calculation_rounding_method IS 'Tax Calculation Rounding Method';


--
-- Name: COLUMN res_company.sale_note; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_company.sale_note IS 'Default Terms and Conditions';


--
-- Name: res_currency_rate; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_currency_rate (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name timestamp without time zone NOT NULL,
    company_id integer,
    write_uid integer,
    currency_id integer,
    rate numeric,
    write_date timestamp without time zone
);


ALTER TABLE res_currency_rate OWNER TO odoouser;

--
-- Name: TABLE res_currency_rate; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_currency_rate IS 'Currency Rate';


--
-- Name: COLUMN res_currency_rate.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency_rate.create_uid IS 'Created by';


--
-- Name: COLUMN res_currency_rate.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency_rate.create_date IS 'Created on';


--
-- Name: COLUMN res_currency_rate.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency_rate.name IS 'Date';


--
-- Name: COLUMN res_currency_rate.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency_rate.company_id IS 'Company';


--
-- Name: COLUMN res_currency_rate.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency_rate.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_currency_rate.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency_rate.currency_id IS 'Currency';


--
-- Name: COLUMN res_currency_rate.rate; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency_rate.rate IS 'Rate';


--
-- Name: COLUMN res_currency_rate.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency_rate.write_date IS 'Last Updated on';


--
-- Name: res_partner; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_partner (
    id integer NOT NULL,
    name character varying,
    company_id integer,
    comment text,
    function character varying,
    create_date timestamp without time zone,
    color integer,
    company_type character varying,
    date date,
    street character varying,
    city character varying,
    display_name character varying,
    zip character varying(24),
    title integer,
    country_id integer,
    parent_id integer,
    supplier boolean,
    ref character varying,
    email character varying,
    is_company boolean,
    website character varying,
    customer boolean,
    fax character varying,
    street2 character varying,
    barcode character varying,
    employee boolean,
    credit_limit double precision,
    write_date timestamp without time zone,
    active boolean,
    tz character varying(64),
    write_uid integer,
    lang character varying,
    create_uid integer,
    phone character varying,
    mobile character varying,
    type character varying,
    use_parent_address boolean,
    user_id integer,
    birthdate character varying,
    vat character varying,
    state_id integer,
    commercial_partner_id integer,
    notify_email character varying NOT NULL,
    message_last_post timestamp without time zone,
    opt_out boolean,
    signup_type character varying,
    signup_expiration timestamp without time zone,
    signup_token character varying,
    team_id integer,
    calendar_last_notif_ack timestamp without time zone,
    last_time_entries_checked timestamp without time zone,
    debit_limit numeric,
    last_website_so_id integer,
    CONSTRAINT res_partner_check_name CHECK (((((type)::text = 'contact'::text) AND (name IS NOT NULL)) OR ((type)::text <> 'contact'::text)))
);


ALTER TABLE res_partner OWNER TO odoouser;

--
-- Name: COLUMN res_partner.comment; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.comment IS 'Notes';


--
-- Name: COLUMN res_partner.function; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.function IS 'Job Position';


--
-- Name: COLUMN res_partner.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.create_date IS 'Created on';


--
-- Name: COLUMN res_partner.color; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.color IS 'Color Index';


--
-- Name: COLUMN res_partner.company_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.company_type IS 'Company Type';


--
-- Name: COLUMN res_partner.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.date IS 'Date';


--
-- Name: COLUMN res_partner.street; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.street IS 'Street';


--
-- Name: COLUMN res_partner.city; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.city IS 'City';


--
-- Name: COLUMN res_partner.display_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.display_name IS 'Name';


--
-- Name: COLUMN res_partner.zip; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.zip IS 'Zip';


--
-- Name: COLUMN res_partner.title; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.title IS 'Title';


--
-- Name: COLUMN res_partner.country_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.country_id IS 'Country';


--
-- Name: COLUMN res_partner.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.parent_id IS 'Related Company';


--
-- Name: COLUMN res_partner.supplier; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.supplier IS 'Is a Vendor';


--
-- Name: COLUMN res_partner.ref; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.ref IS 'Internal Reference';


--
-- Name: COLUMN res_partner.email; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.email IS 'Email';


--
-- Name: COLUMN res_partner.is_company; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.is_company IS 'Is a Company';


--
-- Name: COLUMN res_partner.website; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.website IS 'Website';


--
-- Name: COLUMN res_partner.customer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.customer IS 'Is a Customer';


--
-- Name: COLUMN res_partner.fax; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.fax IS 'Fax';


--
-- Name: COLUMN res_partner.street2; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.street2 IS 'Street2';


--
-- Name: COLUMN res_partner.barcode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.barcode IS 'Barcode';


--
-- Name: COLUMN res_partner.employee; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.employee IS 'Employee';


--
-- Name: COLUMN res_partner.credit_limit; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.credit_limit IS 'Credit Limit';


--
-- Name: COLUMN res_partner.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_partner.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.active IS 'Active';


--
-- Name: COLUMN res_partner.tz; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.tz IS 'Timezone';


--
-- Name: COLUMN res_partner.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_partner.lang; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.lang IS 'Language';


--
-- Name: COLUMN res_partner.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.create_uid IS 'Created by';


--
-- Name: COLUMN res_partner.phone; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.phone IS 'Phone';


--
-- Name: COLUMN res_partner.mobile; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.mobile IS 'Mobile';


--
-- Name: COLUMN res_partner.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.type IS 'Address Type';


--
-- Name: COLUMN res_partner.use_parent_address; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.use_parent_address IS 'Use Company Address';


--
-- Name: COLUMN res_partner.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.user_id IS 'Salesperson';


--
-- Name: COLUMN res_partner.birthdate; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.birthdate IS 'Birthdate';


--
-- Name: COLUMN res_partner.vat; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.vat IS 'TIN';


--
-- Name: COLUMN res_partner.state_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.state_id IS 'State';


--
-- Name: COLUMN res_partner.commercial_partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.commercial_partner_id IS 'Commercial Entity';


--
-- Name: COLUMN res_partner.notify_email; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.notify_email IS 'Email Messages and Notifications';


--
-- Name: COLUMN res_partner.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN res_partner.opt_out; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.opt_out IS 'Opt-Out';


--
-- Name: COLUMN res_partner.signup_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.signup_type IS 'Signup Token Type';


--
-- Name: COLUMN res_partner.signup_expiration; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.signup_expiration IS 'Signup Expiration';


--
-- Name: COLUMN res_partner.signup_token; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.signup_token IS 'Signup Token';


--
-- Name: COLUMN res_partner.team_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.team_id IS 'Sales Team';


--
-- Name: COLUMN res_partner.calendar_last_notif_ack; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.calendar_last_notif_ack IS 'Last notification marked as read from base Calendar';


--
-- Name: COLUMN res_partner.last_time_entries_checked; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.last_time_entries_checked IS 'Latest Invoices & Payments Matching Date';


--
-- Name: COLUMN res_partner.debit_limit; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.debit_limit IS 'Payable Limit';


--
-- Name: COLUMN res_partner.last_website_so_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner.last_website_so_id IS 'Last Online Sale Order';


--
-- Name: account_invoice_report; Type: VIEW; Schema: public; Owner: odoouser
--

CREATE VIEW account_invoice_report AS
 WITH currency_rate AS (
         SELECT r.currency_id,
            COALESCE(r.company_id, c.id) AS company_id,
            r.rate,
            r.name AS date_start,
            ( SELECT r2.name
                   FROM res_currency_rate r2
                  WHERE ((r2.name > r.name) AND (r2.currency_id = r.currency_id) AND ((r2.company_id IS NULL) OR (r2.company_id = c.id)))
                  ORDER BY r2.name
                 LIMIT 1) AS date_end
           FROM (res_currency_rate r
             JOIN res_company c ON (((r.company_id IS NULL) OR (r.company_id = c.id))))
        )
 SELECT sub.id,
    sub.date,
    sub.product_id,
    sub.partner_id,
    sub.country_id,
    sub.account_analytic_id,
    sub.payment_term_id,
    sub.uom_name,
    sub.currency_id,
    sub.journal_id,
    sub.fiscal_position_id,
    sub.user_id,
    sub.company_id,
    sub.nbr,
    sub.type,
    sub.state,
    sub.categ_id,
    sub.date_due,
    sub.account_id,
    sub.account_line_id,
    sub.partner_bank_id,
    sub.product_qty,
    sub.price_total,
    sub.price_average,
    COALESCE(cr.rate, (1)::numeric) AS currency_rate,
    sub.residual,
    sub.commercial_partner_id,
    sub.team_id
   FROM (( SELECT ail.id,
            ai.date_invoice AS date,
            ail.product_id,
            ai.partner_id,
            ai.payment_term_id,
            ail.account_analytic_id,
            u2.name AS uom_name,
            ai.currency_id,
            ai.journal_id,
            ai.fiscal_position_id,
            ai.user_id,
            ai.company_id,
            1 AS nbr,
            ai.type,
            ai.state,
            pt.categ_id,
            ai.date_due,
            ai.account_id,
            ail.account_id AS account_line_id,
            ai.partner_bank_id,
            sum(
                CASE
                    WHEN ((ai.type)::text = ANY (ARRAY[('out_refund'::character varying)::text, ('in_invoice'::character varying)::text])) THEN (((- ail.quantity) / u.factor) * u2.factor)
                    ELSE ((ail.quantity / u.factor) * u2.factor)
                END) AS product_qty,
            sum(((abs(ail.price_subtotal_signed) * (
                CASE
                    WHEN (ail.price_subtotal < (0)::numeric) THEN '-1'::integer
                    ELSE 1
                END)::numeric) * (
                CASE
                    WHEN ((ai.type)::text = ANY (ARRAY[('out_refund'::character varying)::text, ('in_invoice'::character varying)::text])) THEN '-1'::integer
                    ELSE 1
                END)::numeric)) AS price_total,
            (sum(abs(ail.price_subtotal_signed)) /
                CASE
                    WHEN (sum(((ail.quantity / u.factor) * u2.factor)) <> (0)::numeric) THEN sum(((ail.quantity / u.factor) * u2.factor))
                    ELSE (1)::numeric
                END) AS price_average,
            (((ai.residual_company_signed / (( SELECT count(*) AS count
                   FROM account_invoice_line l
                  WHERE (l.invoice_id = ai.id)))::numeric) * (count(*))::numeric) * (
                CASE
                    WHEN ((ai.type)::text = ANY (ARRAY[('in_refund'::character varying)::text, ('in_invoice'::character varying)::text])) THEN '-1'::integer
                    ELSE 1
                END)::numeric) AS residual,
            ai.commercial_partner_id,
            partner.country_id,
            ai.team_id
           FROM ((((((account_invoice_line ail
             JOIN account_invoice ai ON ((ai.id = ail.invoice_id)))
             JOIN res_partner partner ON ((ai.commercial_partner_id = partner.id)))
             LEFT JOIN product_product pr ON ((pr.id = ail.product_id)))
             LEFT JOIN product_template pt ON ((pt.id = pr.product_tmpl_id)))
             LEFT JOIN product_uom u ON ((u.id = ail.uom_id)))
             LEFT JOIN product_uom u2 ON ((u2.id = pt.uom_id)))
          GROUP BY ail.id, ail.product_id, ail.account_analytic_id, ai.date_invoice, ai.id, ai.partner_id, ai.payment_term_id, u2.name, u2.id, ai.currency_id, ai.journal_id, ai.fiscal_position_id, ai.user_id, ai.company_id, ai.type, ai.state, pt.categ_id, ai.date_due, ai.account_id, ail.account_id, ai.partner_bank_id, ai.residual_company_signed, ai.amount_total_company_signed, ai.commercial_partner_id, partner.country_id, ai.team_id) sub
     LEFT JOIN currency_rate cr ON (((cr.currency_id = sub.currency_id) AND (cr.company_id = sub.company_id) AND (cr.date_start <= COALESCE((sub.date)::timestamp with time zone, now())) AND ((cr.date_end IS NULL) OR (cr.date_end > COALESCE((sub.date)::timestamp with time zone, now()))))));


ALTER TABLE account_invoice_report OWNER TO odoouser;

--
-- Name: account_invoice_tax; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_invoice_tax (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    account_id integer NOT NULL,
    name character varying NOT NULL,
    sequence integer,
    invoice_id integer,
    manual boolean,
    company_id integer,
    write_uid integer,
    currency_id integer,
    amount numeric,
    write_date timestamp without time zone,
    account_analytic_id integer,
    tax_id integer
);


ALTER TABLE account_invoice_tax OWNER TO odoouser;

--
-- Name: TABLE account_invoice_tax; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_invoice_tax IS 'Invoice Tax';


--
-- Name: COLUMN account_invoice_tax.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.create_uid IS 'Created by';


--
-- Name: COLUMN account_invoice_tax.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.create_date IS 'Created on';


--
-- Name: COLUMN account_invoice_tax.account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.account_id IS 'Tax Account';


--
-- Name: COLUMN account_invoice_tax.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.name IS 'Tax Description';


--
-- Name: COLUMN account_invoice_tax.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.sequence IS 'Sequence';


--
-- Name: COLUMN account_invoice_tax.invoice_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.invoice_id IS 'Invoice';


--
-- Name: COLUMN account_invoice_tax.manual; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.manual IS 'Manual';


--
-- Name: COLUMN account_invoice_tax.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.company_id IS 'Company';


--
-- Name: COLUMN account_invoice_tax.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_invoice_tax.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.currency_id IS 'Currency';


--
-- Name: COLUMN account_invoice_tax.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.amount IS 'Amount';


--
-- Name: COLUMN account_invoice_tax.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_invoice_tax.account_analytic_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.account_analytic_id IS 'Analytic account';


--
-- Name: COLUMN account_invoice_tax.tax_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_invoice_tax.tax_id IS 'Tax';


--
-- Name: account_invoice_tax_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_invoice_tax_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_invoice_tax_id_seq OWNER TO odoouser;

--
-- Name: account_invoice_tax_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_invoice_tax_id_seq OWNED BY account_invoice_tax.id;


--
-- Name: account_journal; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_journal (
    id integer NOT NULL,
    code character varying(5) NOT NULL,
    create_date timestamp without time zone,
    sequence integer,
    write_uid integer,
    currency_id integer,
    at_least_one_inbound boolean,
    bank_statements_source character varying,
    create_uid integer,
    group_invoice_lines boolean,
    company_id integer NOT NULL,
    bank_account_id integer,
    profit_account_id integer,
    display_on_footer boolean,
    type character varying NOT NULL,
    default_debit_account_id integer,
    show_on_dashboard boolean,
    default_credit_account_id integer,
    sequence_id integer NOT NULL,
    write_date timestamp without time zone,
    refund_sequence_id integer,
    loss_account_id integer,
    update_posted boolean,
    name character varying NOT NULL,
    at_least_one_outbound boolean,
    refund_sequence boolean
);


ALTER TABLE account_journal OWNER TO odoouser;

--
-- Name: TABLE account_journal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_journal IS 'Journal';


--
-- Name: COLUMN account_journal.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.code IS 'Short Code';


--
-- Name: COLUMN account_journal.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.create_date IS 'Created on';


--
-- Name: COLUMN account_journal.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.sequence IS 'Sequence';


--
-- Name: COLUMN account_journal.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_journal.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.currency_id IS 'Currency';


--
-- Name: COLUMN account_journal.at_least_one_inbound; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.at_least_one_inbound IS 'At least one inbound';


--
-- Name: COLUMN account_journal.bank_statements_source; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.bank_statements_source IS 'Bank Feeds';


--
-- Name: COLUMN account_journal.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.create_uid IS 'Created by';


--
-- Name: COLUMN account_journal.group_invoice_lines; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.group_invoice_lines IS 'Group Invoice Lines';


--
-- Name: COLUMN account_journal.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.company_id IS 'Company';


--
-- Name: COLUMN account_journal.bank_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.bank_account_id IS 'Bank Account';


--
-- Name: COLUMN account_journal.profit_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.profit_account_id IS 'Profit Account';


--
-- Name: COLUMN account_journal.display_on_footer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.display_on_footer IS 'Show in Invoices Footer';


--
-- Name: COLUMN account_journal.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.type IS 'Type';


--
-- Name: COLUMN account_journal.default_debit_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.default_debit_account_id IS 'Default Debit Account';


--
-- Name: COLUMN account_journal.show_on_dashboard; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.show_on_dashboard IS 'Show journal on dashboard';


--
-- Name: COLUMN account_journal.default_credit_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.default_credit_account_id IS 'Default Credit Account';


--
-- Name: COLUMN account_journal.sequence_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.sequence_id IS 'Entry Sequence';


--
-- Name: COLUMN account_journal.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_journal.refund_sequence_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.refund_sequence_id IS 'Refund Entry Sequence';


--
-- Name: COLUMN account_journal.loss_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.loss_account_id IS 'Loss Account';


--
-- Name: COLUMN account_journal.update_posted; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.update_posted IS 'Allow Cancelling Entries';


--
-- Name: COLUMN account_journal.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.name IS 'Journal Name';


--
-- Name: COLUMN account_journal.at_least_one_outbound; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.at_least_one_outbound IS 'At least one outbound';


--
-- Name: COLUMN account_journal.refund_sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_journal.refund_sequence IS 'Dedicated Refund Sequence';


--
-- Name: account_journal_accounting_report_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_journal_accounting_report_rel (
    accounting_report_id integer NOT NULL,
    account_journal_id integer NOT NULL
);


ALTER TABLE account_journal_accounting_report_rel OWNER TO odoouser;

--
-- Name: TABLE account_journal_accounting_report_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_journal_accounting_report_rel IS 'RELATION BETWEEN accounting_report AND account_journal';


--
-- Name: account_journal_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_journal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_journal_id_seq OWNER TO odoouser;

--
-- Name: account_journal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_journal_id_seq OWNED BY account_journal.id;


--
-- Name: account_journal_inbound_payment_method_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_journal_inbound_payment_method_rel (
    journal_id integer NOT NULL,
    inbound_payment_method integer NOT NULL
);


ALTER TABLE account_journal_inbound_payment_method_rel OWNER TO odoouser;

--
-- Name: TABLE account_journal_inbound_payment_method_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_journal_inbound_payment_method_rel IS 'RELATION BETWEEN account_journal AND account_payment_method';


--
-- Name: account_journal_outbound_payment_method_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_journal_outbound_payment_method_rel (
    journal_id integer NOT NULL,
    outbound_payment_method integer NOT NULL
);


ALTER TABLE account_journal_outbound_payment_method_rel OWNER TO odoouser;

--
-- Name: TABLE account_journal_outbound_payment_method_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_journal_outbound_payment_method_rel IS 'RELATION BETWEEN account_journal AND account_payment_method';


--
-- Name: account_journal_type_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_journal_type_rel (
    journal_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE account_journal_type_rel OWNER TO odoouser;

--
-- Name: TABLE account_journal_type_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_journal_type_rel IS 'RELATION BETWEEN account_journal AND account_account_type';


--
-- Name: account_move; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_move (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    statement_line_id integer,
    ref character varying,
    journal_id integer NOT NULL,
    company_id integer,
    currency_id integer,
    state character varying NOT NULL,
    rate_diff_partial_rec_id integer,
    matched_percentage numeric,
    write_date timestamp without time zone,
    narration text,
    date date NOT NULL,
    amount numeric,
    write_uid integer,
    partner_id integer,
    name character varying NOT NULL
);


ALTER TABLE account_move OWNER TO odoouser;

--
-- Name: TABLE account_move; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_move IS 'Account Entry';


--
-- Name: COLUMN account_move.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.create_uid IS 'Created by';


--
-- Name: COLUMN account_move.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.create_date IS 'Created on';


--
-- Name: COLUMN account_move.statement_line_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.statement_line_id IS 'Bank statement line reconciled with this entry';


--
-- Name: COLUMN account_move.ref; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.ref IS 'Reference';


--
-- Name: COLUMN account_move.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.journal_id IS 'Journal';


--
-- Name: COLUMN account_move.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.company_id IS 'Company';


--
-- Name: COLUMN account_move.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.currency_id IS 'Currency';


--
-- Name: COLUMN account_move.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.state IS 'Status';


--
-- Name: COLUMN account_move.rate_diff_partial_rec_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.rate_diff_partial_rec_id IS 'Exchange Rate Entry of';


--
-- Name: COLUMN account_move.matched_percentage; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.matched_percentage IS 'Percentage Matched';


--
-- Name: COLUMN account_move.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_move.narration; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.narration IS 'Internal Note';


--
-- Name: COLUMN account_move.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.date IS 'Date';


--
-- Name: COLUMN account_move.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.amount IS 'Amount';


--
-- Name: COLUMN account_move.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_move.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.partner_id IS 'Partner';


--
-- Name: COLUMN account_move.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move.name IS 'Number';


--
-- Name: account_move_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_move_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_move_id_seq OWNER TO odoouser;

--
-- Name: account_move_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_move_id_seq OWNED BY account_move.id;


--
-- Name: account_move_line; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_move_line (
    id integer NOT NULL,
    create_date timestamp without time zone,
    statement_id integer,
    account_id integer NOT NULL,
    company_id integer,
    currency_id integer,
    date_maturity date NOT NULL,
    user_type_id integer,
    partner_id integer,
    blocked boolean,
    analytic_account_id integer,
    create_uid integer,
    amount_residual numeric,
    journal_id integer NOT NULL,
    amount_residual_currency numeric,
    debit numeric,
    ref character varying,
    debit_cash_basis numeric,
    reconciled boolean,
    credit numeric,
    balance_cash_basis numeric,
    write_date timestamp without time zone,
    date date NOT NULL,
    write_uid integer,
    move_id integer NOT NULL,
    name character varying NOT NULL,
    payment_id integer,
    company_currency_id integer,
    product_id integer,
    invoice_id integer,
    tax_line_id integer,
    credit_cash_basis numeric,
    product_uom_id integer,
    amount_currency numeric,
    balance numeric,
    quantity numeric,
    full_reconcile_id integer,
    CONSTRAINT account_move_line_credit_debit1 CHECK (((credit * debit) = (0)::numeric)),
    CONSTRAINT account_move_line_credit_debit2 CHECK (((credit + debit) >= (0)::numeric))
);


ALTER TABLE account_move_line OWNER TO odoouser;

--
-- Name: TABLE account_move_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_move_line IS 'Journal Item';


--
-- Name: COLUMN account_move_line.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.create_date IS 'Created on';


--
-- Name: COLUMN account_move_line.statement_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.statement_id IS 'Statement';


--
-- Name: COLUMN account_move_line.account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.account_id IS 'Account';


--
-- Name: COLUMN account_move_line.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.company_id IS 'Company';


--
-- Name: COLUMN account_move_line.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.currency_id IS 'Currency';


--
-- Name: COLUMN account_move_line.date_maturity; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.date_maturity IS 'Due date';


--
-- Name: COLUMN account_move_line.user_type_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.user_type_id IS 'Type';


--
-- Name: COLUMN account_move_line.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.partner_id IS 'Partner';


--
-- Name: COLUMN account_move_line.blocked; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.blocked IS 'No Follow-up';


--
-- Name: COLUMN account_move_line.analytic_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.analytic_account_id IS 'Analytic Account';


--
-- Name: COLUMN account_move_line.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.create_uid IS 'Created by';


--
-- Name: COLUMN account_move_line.amount_residual; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.amount_residual IS 'Residual Amount';


--
-- Name: COLUMN account_move_line.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.journal_id IS 'Journal';


--
-- Name: COLUMN account_move_line.amount_residual_currency; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.amount_residual_currency IS 'Residual Amount in Currency';


--
-- Name: COLUMN account_move_line.debit; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.debit IS 'Debit';


--
-- Name: COLUMN account_move_line.ref; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.ref IS 'Partner Reference';


--
-- Name: COLUMN account_move_line.debit_cash_basis; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.debit_cash_basis IS 'Debit cash basis';


--
-- Name: COLUMN account_move_line.reconciled; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.reconciled IS 'Reconciled';


--
-- Name: COLUMN account_move_line.credit; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.credit IS 'Credit';


--
-- Name: COLUMN account_move_line.balance_cash_basis; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.balance_cash_basis IS 'Balance cash basis';


--
-- Name: COLUMN account_move_line.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_move_line.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.date IS 'Date';


--
-- Name: COLUMN account_move_line.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_move_line.move_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.move_id IS 'Journal Entry';


--
-- Name: COLUMN account_move_line.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.name IS 'Label';


--
-- Name: COLUMN account_move_line.payment_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.payment_id IS 'Originator Payment';


--
-- Name: COLUMN account_move_line.company_currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.company_currency_id IS 'Currency';


--
-- Name: COLUMN account_move_line.product_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.product_id IS 'Product';


--
-- Name: COLUMN account_move_line.invoice_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.invoice_id IS 'Invoice id';


--
-- Name: COLUMN account_move_line.tax_line_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.tax_line_id IS 'Originator tax';


--
-- Name: COLUMN account_move_line.credit_cash_basis; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.credit_cash_basis IS 'Credit cash basis';


--
-- Name: COLUMN account_move_line.product_uom_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.product_uom_id IS 'Unit of Measure';


--
-- Name: COLUMN account_move_line.amount_currency; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.amount_currency IS 'Amount currency';


--
-- Name: COLUMN account_move_line.balance; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.balance IS 'Balance';


--
-- Name: COLUMN account_move_line.quantity; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.quantity IS 'Quantity';


--
-- Name: COLUMN account_move_line.full_reconcile_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line.full_reconcile_id IS 'Matching Number';


--
-- Name: account_move_line_account_tax_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_move_line_account_tax_rel (
    account_move_line_id integer NOT NULL,
    account_tax_id integer NOT NULL
);


ALTER TABLE account_move_line_account_tax_rel OWNER TO odoouser;

--
-- Name: TABLE account_move_line_account_tax_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_move_line_account_tax_rel IS 'RELATION BETWEEN account_move_line AND account_tax';


--
-- Name: account_move_line_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_move_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_move_line_id_seq OWNER TO odoouser;

--
-- Name: account_move_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_move_line_id_seq OWNED BY account_move_line.id;


--
-- Name: account_move_line_reconcile; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_move_line_reconcile (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    writeoff numeric,
    company_id integer NOT NULL,
    write_uid integer,
    credit numeric,
    write_date timestamp without time zone,
    debit numeric,
    trans_nbr integer
);


ALTER TABLE account_move_line_reconcile OWNER TO odoouser;

--
-- Name: TABLE account_move_line_reconcile; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_move_line_reconcile IS 'Account move line reconcile';


--
-- Name: COLUMN account_move_line_reconcile.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile.create_uid IS 'Created by';


--
-- Name: COLUMN account_move_line_reconcile.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile.create_date IS 'Created on';


--
-- Name: COLUMN account_move_line_reconcile.writeoff; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile.writeoff IS 'Write-Off amount';


--
-- Name: COLUMN account_move_line_reconcile.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile.company_id IS 'Company';


--
-- Name: COLUMN account_move_line_reconcile.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_move_line_reconcile.credit; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile.credit IS 'Credit amount';


--
-- Name: COLUMN account_move_line_reconcile.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_move_line_reconcile.debit; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile.debit IS 'Debit amount';


--
-- Name: COLUMN account_move_line_reconcile.trans_nbr; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile.trans_nbr IS '# of Transaction';


--
-- Name: account_move_line_reconcile_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_move_line_reconcile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_move_line_reconcile_id_seq OWNER TO odoouser;

--
-- Name: account_move_line_reconcile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_move_line_reconcile_id_seq OWNED BY account_move_line_reconcile.id;


--
-- Name: account_move_line_reconcile_writeoff; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_move_line_reconcile_writeoff (
    id integer NOT NULL,
    comment character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    writeoff_acc_id integer NOT NULL,
    journal_id integer NOT NULL,
    analytic_id integer,
    write_date timestamp without time zone,
    date_p date,
    write_uid integer
);


ALTER TABLE account_move_line_reconcile_writeoff OWNER TO odoouser;

--
-- Name: TABLE account_move_line_reconcile_writeoff; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_move_line_reconcile_writeoff IS 'Account move line reconcile (writeoff)';


--
-- Name: COLUMN account_move_line_reconcile_writeoff.comment; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile_writeoff.comment IS 'Comment';


--
-- Name: COLUMN account_move_line_reconcile_writeoff.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile_writeoff.create_uid IS 'Created by';


--
-- Name: COLUMN account_move_line_reconcile_writeoff.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile_writeoff.create_date IS 'Created on';


--
-- Name: COLUMN account_move_line_reconcile_writeoff.writeoff_acc_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile_writeoff.writeoff_acc_id IS 'Write-Off account';


--
-- Name: COLUMN account_move_line_reconcile_writeoff.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile_writeoff.journal_id IS 'Write-Off Journal';


--
-- Name: COLUMN account_move_line_reconcile_writeoff.analytic_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile_writeoff.analytic_id IS 'Analytic Account';


--
-- Name: COLUMN account_move_line_reconcile_writeoff.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile_writeoff.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_move_line_reconcile_writeoff.date_p; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile_writeoff.date_p IS 'Date';


--
-- Name: COLUMN account_move_line_reconcile_writeoff.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_line_reconcile_writeoff.write_uid IS 'Last Updated by';


--
-- Name: account_move_line_reconcile_writeoff_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_move_line_reconcile_writeoff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_move_line_reconcile_writeoff_id_seq OWNER TO odoouser;

--
-- Name: account_move_line_reconcile_writeoff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_move_line_reconcile_writeoff_id_seq OWNED BY account_move_line_reconcile_writeoff.id;


--
-- Name: account_move_reversal; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_move_reversal (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    journal_id integer,
    write_uid integer,
    write_date timestamp without time zone,
    date date NOT NULL
);


ALTER TABLE account_move_reversal OWNER TO odoouser;

--
-- Name: TABLE account_move_reversal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_move_reversal IS 'Account move reversal';


--
-- Name: COLUMN account_move_reversal.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_reversal.create_uid IS 'Created by';


--
-- Name: COLUMN account_move_reversal.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_reversal.create_date IS 'Created on';


--
-- Name: COLUMN account_move_reversal.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_reversal.journal_id IS 'Use Specific Journal';


--
-- Name: COLUMN account_move_reversal.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_reversal.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_move_reversal.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_reversal.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_move_reversal.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_move_reversal.date IS 'Reversal date';


--
-- Name: account_move_reversal_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_move_reversal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_move_reversal_id_seq OWNER TO odoouser;

--
-- Name: account_move_reversal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_move_reversal_id_seq OWNED BY account_move_reversal.id;


--
-- Name: account_operation_template; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_operation_template (
    id integer NOT NULL,
    second_analytic_account_id integer,
    create_date timestamp without time zone,
    sequence integer NOT NULL,
    second_amount_type character varying NOT NULL,
    second_journal_id integer,
    write_uid integer,
    analytic_account_id integer,
    create_uid integer,
    second_tax_id integer,
    has_second_line boolean,
    journal_id integer,
    label character varying,
    second_label character varying,
    second_account_id integer,
    account_id integer,
    company_id integer NOT NULL,
    write_date timestamp without time zone,
    tax_id integer,
    amount_type character varying NOT NULL,
    name character varying NOT NULL,
    amount numeric NOT NULL,
    second_amount numeric NOT NULL
);


ALTER TABLE account_operation_template OWNER TO odoouser;

--
-- Name: TABLE account_operation_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_operation_template IS 'Preset to create journal entries during a invoices and payments matching';


--
-- Name: COLUMN account_operation_template.second_analytic_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.second_analytic_account_id IS 'Analytic Account';


--
-- Name: COLUMN account_operation_template.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.create_date IS 'Created on';


--
-- Name: COLUMN account_operation_template.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.sequence IS 'Sequence';


--
-- Name: COLUMN account_operation_template.second_amount_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.second_amount_type IS 'Amount type';


--
-- Name: COLUMN account_operation_template.second_journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.second_journal_id IS 'Journal';


--
-- Name: COLUMN account_operation_template.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_operation_template.analytic_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.analytic_account_id IS 'Analytic Account';


--
-- Name: COLUMN account_operation_template.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.create_uid IS 'Created by';


--
-- Name: COLUMN account_operation_template.second_tax_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.second_tax_id IS 'Tax';


--
-- Name: COLUMN account_operation_template.has_second_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.has_second_line IS 'Add a second line';


--
-- Name: COLUMN account_operation_template.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.journal_id IS 'Journal';


--
-- Name: COLUMN account_operation_template.label; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.label IS 'Journal Item Label';


--
-- Name: COLUMN account_operation_template.second_label; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.second_label IS 'Journal Item Label';


--
-- Name: COLUMN account_operation_template.second_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.second_account_id IS 'Account';


--
-- Name: COLUMN account_operation_template.account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.account_id IS 'Account';


--
-- Name: COLUMN account_operation_template.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.company_id IS 'Company';


--
-- Name: COLUMN account_operation_template.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_operation_template.tax_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.tax_id IS 'Tax';


--
-- Name: COLUMN account_operation_template.amount_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.amount_type IS 'Amount type';


--
-- Name: COLUMN account_operation_template.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.name IS 'Button Label';


--
-- Name: COLUMN account_operation_template.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.amount IS 'Amount';


--
-- Name: COLUMN account_operation_template.second_amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_operation_template.second_amount IS 'Amount';


--
-- Name: account_operation_template_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_operation_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_operation_template_id_seq OWNER TO odoouser;

--
-- Name: account_operation_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_operation_template_id_seq OWNED BY account_operation_template.id;


--
-- Name: account_partial_reconcile; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_partial_reconcile (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    credit_move_id integer NOT NULL,
    company_id integer,
    write_uid integer,
    currency_id integer,
    amount numeric,
    debit_move_id integer NOT NULL,
    write_date timestamp without time zone,
    amount_currency numeric,
    full_reconcile_id integer
);


ALTER TABLE account_partial_reconcile OWNER TO odoouser;

--
-- Name: TABLE account_partial_reconcile; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_partial_reconcile IS 'Partial Reconcile';


--
-- Name: COLUMN account_partial_reconcile.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.create_uid IS 'Created by';


--
-- Name: COLUMN account_partial_reconcile.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.create_date IS 'Created on';


--
-- Name: COLUMN account_partial_reconcile.credit_move_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.credit_move_id IS 'Credit move id';


--
-- Name: COLUMN account_partial_reconcile.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.company_id IS 'Currency';


--
-- Name: COLUMN account_partial_reconcile.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_partial_reconcile.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.currency_id IS 'Currency';


--
-- Name: COLUMN account_partial_reconcile.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.amount IS 'Amount';


--
-- Name: COLUMN account_partial_reconcile.debit_move_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.debit_move_id IS 'Debit move id';


--
-- Name: COLUMN account_partial_reconcile.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_partial_reconcile.amount_currency; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.amount_currency IS 'Amount in Currency';


--
-- Name: COLUMN account_partial_reconcile.full_reconcile_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_partial_reconcile.full_reconcile_id IS 'Full Reconcile';


--
-- Name: account_partial_reconcile_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_partial_reconcile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_partial_reconcile_id_seq OWNER TO odoouser;

--
-- Name: account_partial_reconcile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_partial_reconcile_id_seq OWNED BY account_partial_reconcile.id;


--
-- Name: account_payment; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_payment (
    id integer NOT NULL,
    create_date timestamp without time zone,
    communication character varying,
    company_id integer,
    currency_id integer NOT NULL,
    partner_id integer,
    payment_method_id integer NOT NULL,
    payment_date date NOT NULL,
    payment_difference_handling character varying,
    journal_id integer NOT NULL,
    state character varying,
    writeoff_account_id integer,
    create_uid integer,
    partner_type character varying,
    write_date timestamp without time zone,
    write_uid integer,
    name character varying,
    destination_journal_id integer,
    amount numeric NOT NULL,
    payment_type character varying NOT NULL,
    payment_reference character varying
);


ALTER TABLE account_payment OWNER TO odoouser;

--
-- Name: TABLE account_payment; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_payment IS 'Payments';


--
-- Name: COLUMN account_payment.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.create_date IS 'Created on';


--
-- Name: COLUMN account_payment.communication; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.communication IS 'Memo';


--
-- Name: COLUMN account_payment.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.company_id IS 'Company';


--
-- Name: COLUMN account_payment.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.currency_id IS 'Currency';


--
-- Name: COLUMN account_payment.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.partner_id IS 'Partner';


--
-- Name: COLUMN account_payment.payment_method_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.payment_method_id IS 'Payment Type';


--
-- Name: COLUMN account_payment.payment_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.payment_date IS 'Payment Date';


--
-- Name: COLUMN account_payment.payment_difference_handling; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.payment_difference_handling IS 'Payment Difference';


--
-- Name: COLUMN account_payment.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.journal_id IS 'Payment Method';


--
-- Name: COLUMN account_payment.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.state IS 'Status';


--
-- Name: COLUMN account_payment.writeoff_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.writeoff_account_id IS 'Difference Account';


--
-- Name: COLUMN account_payment.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.create_uid IS 'Created by';


--
-- Name: COLUMN account_payment.partner_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.partner_type IS 'Partner type';


--
-- Name: COLUMN account_payment.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_payment.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_payment.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.name IS 'Name';


--
-- Name: COLUMN account_payment.destination_journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.destination_journal_id IS 'Transfer To';


--
-- Name: COLUMN account_payment.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.amount IS 'Payment Amount';


--
-- Name: COLUMN account_payment.payment_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.payment_type IS 'Payment Type';


--
-- Name: COLUMN account_payment.payment_reference; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment.payment_reference IS 'Payment reference';


--
-- Name: account_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_payment_id_seq OWNER TO odoouser;

--
-- Name: account_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_payment_id_seq OWNED BY account_payment.id;


--
-- Name: account_payment_method; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_payment_method (
    id integer NOT NULL,
    create_uid integer,
    code character varying NOT NULL,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    payment_type character varying NOT NULL,
    write_date timestamp without time zone
);


ALTER TABLE account_payment_method OWNER TO odoouser;

--
-- Name: TABLE account_payment_method; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_payment_method IS 'Payment Methods';


--
-- Name: COLUMN account_payment_method.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_method.create_uid IS 'Created by';


--
-- Name: COLUMN account_payment_method.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_method.code IS 'Code';


--
-- Name: COLUMN account_payment_method.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_method.create_date IS 'Created on';


--
-- Name: COLUMN account_payment_method.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_method.name IS 'Name';


--
-- Name: COLUMN account_payment_method.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_method.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_payment_method.payment_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_method.payment_type IS 'Payment type';


--
-- Name: COLUMN account_payment_method.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_method.write_date IS 'Last Updated on';


--
-- Name: account_payment_method_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_payment_method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_payment_method_id_seq OWNER TO odoouser;

--
-- Name: account_payment_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_payment_method_id_seq OWNED BY account_payment_method.id;


--
-- Name: account_payment_term; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_payment_term (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    company_id integer NOT NULL,
    write_uid integer,
    note text,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE account_payment_term OWNER TO odoouser;

--
-- Name: TABLE account_payment_term; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_payment_term IS 'Payment Term';


--
-- Name: COLUMN account_payment_term.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term.create_uid IS 'Created by';


--
-- Name: COLUMN account_payment_term.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term.create_date IS 'Created on';


--
-- Name: COLUMN account_payment_term.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term.name IS 'Payment Term';


--
-- Name: COLUMN account_payment_term.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term.company_id IS 'Company';


--
-- Name: COLUMN account_payment_term.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_payment_term.note; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term.note IS 'Description on the Invoice';


--
-- Name: COLUMN account_payment_term.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_payment_term.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term.active IS 'Active';


--
-- Name: account_payment_term_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_payment_term_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_payment_term_id_seq OWNER TO odoouser;

--
-- Name: account_payment_term_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_payment_term_id_seq OWNED BY account_payment_term.id;


--
-- Name: account_payment_term_line; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_payment_term_line (
    id integer NOT NULL,
    payment_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    option character varying NOT NULL,
    sequence integer,
    days integer NOT NULL,
    value character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone,
    value_amount numeric
);


ALTER TABLE account_payment_term_line OWNER TO odoouser;

--
-- Name: TABLE account_payment_term_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_payment_term_line IS 'Payment Term Line';


--
-- Name: COLUMN account_payment_term_line.payment_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term_line.payment_id IS 'Payment Term';


--
-- Name: COLUMN account_payment_term_line.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term_line.create_uid IS 'Created by';


--
-- Name: COLUMN account_payment_term_line.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term_line.create_date IS 'Created on';


--
-- Name: COLUMN account_payment_term_line.option; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term_line.option IS 'Options';


--
-- Name: COLUMN account_payment_term_line.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term_line.sequence IS 'Sequence';


--
-- Name: COLUMN account_payment_term_line.days; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term_line.days IS 'Number of Days';


--
-- Name: COLUMN account_payment_term_line.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term_line.value IS 'Type';


--
-- Name: COLUMN account_payment_term_line.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_payment_term_line.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term_line.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_payment_term_line.value_amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_payment_term_line.value_amount IS 'Value';


--
-- Name: account_payment_term_line_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_payment_term_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_payment_term_line_id_seq OWNER TO odoouser;

--
-- Name: account_payment_term_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_payment_term_line_id_seq OWNED BY account_payment_term_line.id;


--
-- Name: account_register_payments; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_register_payments (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    payment_date date NOT NULL,
    communication character varying,
    journal_id integer NOT NULL,
    write_uid integer,
    currency_id integer NOT NULL,
    partner_type character varying,
    amount numeric NOT NULL,
    payment_type character varying NOT NULL,
    write_date timestamp without time zone,
    partner_id integer,
    payment_method_id integer NOT NULL
);


ALTER TABLE account_register_payments OWNER TO odoouser;

--
-- Name: TABLE account_register_payments; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_register_payments IS 'Register payments on multiple invoices';


--
-- Name: COLUMN account_register_payments.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.create_uid IS 'Created by';


--
-- Name: COLUMN account_register_payments.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.create_date IS 'Created on';


--
-- Name: COLUMN account_register_payments.payment_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.payment_date IS 'Payment Date';


--
-- Name: COLUMN account_register_payments.communication; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.communication IS 'Memo';


--
-- Name: COLUMN account_register_payments.journal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.journal_id IS 'Payment Method';


--
-- Name: COLUMN account_register_payments.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_register_payments.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.currency_id IS 'Currency';


--
-- Name: COLUMN account_register_payments.partner_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.partner_type IS 'Partner type';


--
-- Name: COLUMN account_register_payments.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.amount IS 'Payment Amount';


--
-- Name: COLUMN account_register_payments.payment_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.payment_type IS 'Payment Type';


--
-- Name: COLUMN account_register_payments.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_register_payments.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.partner_id IS 'Partner';


--
-- Name: COLUMN account_register_payments.payment_method_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_register_payments.payment_method_id IS 'Payment Type';


--
-- Name: account_register_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_register_payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_register_payments_id_seq OWNER TO odoouser;

--
-- Name: account_register_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_register_payments_id_seq OWNED BY account_register_payments.id;


--
-- Name: account_report_general_ledger; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_report_general_ledger (
    id integer NOT NULL,
    create_uid integer,
    initial_balance boolean,
    create_date timestamp without time zone,
    display_account character varying NOT NULL,
    date_from date,
    company_id integer,
    sortby character varying NOT NULL,
    write_date timestamp without time zone,
    date_to date,
    write_uid integer,
    target_move character varying NOT NULL
);


ALTER TABLE account_report_general_ledger OWNER TO odoouser;

--
-- Name: TABLE account_report_general_ledger; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_report_general_ledger IS 'General Ledger Report';


--
-- Name: COLUMN account_report_general_ledger.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.create_uid IS 'Created by';


--
-- Name: COLUMN account_report_general_ledger.initial_balance; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.initial_balance IS 'Include Initial Balances';


--
-- Name: COLUMN account_report_general_ledger.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.create_date IS 'Created on';


--
-- Name: COLUMN account_report_general_ledger.display_account; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.display_account IS 'Display Accounts';


--
-- Name: COLUMN account_report_general_ledger.date_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.date_from IS 'Start Date';


--
-- Name: COLUMN account_report_general_ledger.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.company_id IS 'Company';


--
-- Name: COLUMN account_report_general_ledger.sortby; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.sortby IS 'Sort by';


--
-- Name: COLUMN account_report_general_ledger.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_report_general_ledger.date_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.date_to IS 'End Date';


--
-- Name: COLUMN account_report_general_ledger.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_report_general_ledger.target_move; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_report_general_ledger.target_move IS 'Target Moves';


--
-- Name: account_report_general_ledger_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_report_general_ledger_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_report_general_ledger_id_seq OWNER TO odoouser;

--
-- Name: account_report_general_ledger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_report_general_ledger_id_seq OWNED BY account_report_general_ledger.id;


--
-- Name: account_report_general_ledger_journal_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_report_general_ledger_journal_rel (
    account_id integer NOT NULL,
    journal_id integer NOT NULL
);


ALTER TABLE account_report_general_ledger_journal_rel OWNER TO odoouser;

--
-- Name: TABLE account_report_general_ledger_journal_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_report_general_ledger_journal_rel IS 'RELATION BETWEEN account_report_general_ledger AND account_journal';


--
-- Name: account_tax; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_tax (
    id integer NOT NULL,
    amount_type character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    description character varying,
    name character varying NOT NULL,
    sequence integer NOT NULL,
    tax_group_id integer NOT NULL,
    company_id integer NOT NULL,
    type_tax_use character varying NOT NULL,
    write_uid integer,
    analytic boolean,
    amount numeric NOT NULL,
    include_base_amount boolean,
    write_date timestamp without time zone,
    price_include boolean,
    active boolean,
    refund_account_id integer,
    account_id integer
);


ALTER TABLE account_tax OWNER TO odoouser;

--
-- Name: TABLE account_tax; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_tax IS 'Tax';


--
-- Name: COLUMN account_tax.amount_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.amount_type IS 'Tax Computation';


--
-- Name: COLUMN account_tax.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.create_uid IS 'Created by';


--
-- Name: COLUMN account_tax.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.create_date IS 'Created on';


--
-- Name: COLUMN account_tax.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.description IS 'Label on Invoices';


--
-- Name: COLUMN account_tax.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.name IS 'Tax Name';


--
-- Name: COLUMN account_tax.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.sequence IS 'Sequence';


--
-- Name: COLUMN account_tax.tax_group_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.tax_group_id IS 'Tax Group';


--
-- Name: COLUMN account_tax.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.company_id IS 'Company';


--
-- Name: COLUMN account_tax.type_tax_use; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.type_tax_use IS 'Tax Scope';


--
-- Name: COLUMN account_tax.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_tax.analytic; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.analytic IS 'Include in Analytic Cost';


--
-- Name: COLUMN account_tax.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.amount IS 'Amount';


--
-- Name: COLUMN account_tax.include_base_amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.include_base_amount IS 'Affect Base of Subsequent Taxes';


--
-- Name: COLUMN account_tax.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_tax.price_include; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.price_include IS 'Included in Price';


--
-- Name: COLUMN account_tax.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.active IS 'Active';


--
-- Name: COLUMN account_tax.refund_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.refund_account_id IS 'Tax Account on Refunds';


--
-- Name: COLUMN account_tax.account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax.account_id IS 'Tax Account';


--
-- Name: account_tax_account_tag; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_tax_account_tag (
    account_tax_id integer NOT NULL,
    account_account_tag_id integer NOT NULL
);


ALTER TABLE account_tax_account_tag OWNER TO odoouser;

--
-- Name: TABLE account_tax_account_tag; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_tax_account_tag IS 'RELATION BETWEEN account_tax AND account_account_tag';


--
-- Name: account_tax_filiation_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_tax_filiation_rel (
    parent_tax integer NOT NULL,
    child_tax integer NOT NULL
);


ALTER TABLE account_tax_filiation_rel OWNER TO odoouser;

--
-- Name: TABLE account_tax_filiation_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_tax_filiation_rel IS 'RELATION BETWEEN account_tax AND account_tax';


--
-- Name: account_tax_group; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_tax_group (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    sequence integer,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE account_tax_group OWNER TO odoouser;

--
-- Name: TABLE account_tax_group; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_tax_group IS 'account.tax.group';


--
-- Name: COLUMN account_tax_group.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_group.create_uid IS 'Created by';


--
-- Name: COLUMN account_tax_group.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_group.create_date IS 'Created on';


--
-- Name: COLUMN account_tax_group.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_group.name IS 'Name';


--
-- Name: COLUMN account_tax_group.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_group.sequence IS 'Sequence';


--
-- Name: COLUMN account_tax_group.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_group.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_tax_group.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_group.write_date IS 'Last Updated on';


--
-- Name: account_tax_group_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_tax_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_tax_group_id_seq OWNER TO odoouser;

--
-- Name: account_tax_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_tax_group_id_seq OWNED BY account_tax_group.id;


--
-- Name: account_tax_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_tax_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_tax_id_seq OWNER TO odoouser;

--
-- Name: account_tax_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_tax_id_seq OWNED BY account_tax.id;


--
-- Name: account_tax_sale_advance_payment_inv_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_tax_sale_advance_payment_inv_rel (
    sale_advance_payment_inv_id integer NOT NULL,
    account_tax_id integer NOT NULL
);


ALTER TABLE account_tax_sale_advance_payment_inv_rel OWNER TO odoouser;

--
-- Name: TABLE account_tax_sale_advance_payment_inv_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_tax_sale_advance_payment_inv_rel IS 'RELATION BETWEEN sale_advance_payment_inv AND account_tax';


--
-- Name: account_tax_sale_order_line_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_tax_sale_order_line_rel (
    sale_order_line_id integer NOT NULL,
    account_tax_id integer NOT NULL
);


ALTER TABLE account_tax_sale_order_line_rel OWNER TO odoouser;

--
-- Name: TABLE account_tax_sale_order_line_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_tax_sale_order_line_rel IS 'RELATION BETWEEN sale_order_line AND account_tax';


--
-- Name: account_tax_template; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_tax_template (
    id integer NOT NULL,
    amount_type character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    description character varying,
    name character varying NOT NULL,
    sequence integer NOT NULL,
    price_include boolean,
    chart_template_id integer NOT NULL,
    company_id integer NOT NULL,
    type_tax_use character varying NOT NULL,
    write_uid integer,
    analytic boolean,
    amount numeric NOT NULL,
    include_base_amount boolean,
    write_date timestamp without time zone,
    active boolean,
    refund_account_id integer,
    account_id integer
);


ALTER TABLE account_tax_template OWNER TO odoouser;

--
-- Name: TABLE account_tax_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_tax_template IS 'Templates for Taxes';


--
-- Name: COLUMN account_tax_template.amount_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.amount_type IS 'Tax Computation';


--
-- Name: COLUMN account_tax_template.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.create_uid IS 'Created by';


--
-- Name: COLUMN account_tax_template.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.create_date IS 'Created on';


--
-- Name: COLUMN account_tax_template.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.description IS 'Display on Invoices';


--
-- Name: COLUMN account_tax_template.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.name IS 'Tax Name';


--
-- Name: COLUMN account_tax_template.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.sequence IS 'Sequence';


--
-- Name: COLUMN account_tax_template.price_include; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.price_include IS 'Included in Price';


--
-- Name: COLUMN account_tax_template.chart_template_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.chart_template_id IS 'Chart Template';


--
-- Name: COLUMN account_tax_template.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.company_id IS 'Company';


--
-- Name: COLUMN account_tax_template.type_tax_use; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.type_tax_use IS 'Tax Scope';


--
-- Name: COLUMN account_tax_template.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN account_tax_template.analytic; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.analytic IS 'Analytic Cost';


--
-- Name: COLUMN account_tax_template.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.amount IS 'Amount';


--
-- Name: COLUMN account_tax_template.include_base_amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.include_base_amount IS 'Affect Subsequent Taxes';


--
-- Name: COLUMN account_tax_template.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_tax_template.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.active IS 'Active';


--
-- Name: COLUMN account_tax_template.refund_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.refund_account_id IS 'Tax Account on Refunds';


--
-- Name: COLUMN account_tax_template.account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_tax_template.account_id IS 'Tax Account';


--
-- Name: account_tax_template_filiation_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_tax_template_filiation_rel (
    parent_tax integer NOT NULL,
    child_tax integer NOT NULL
);


ALTER TABLE account_tax_template_filiation_rel OWNER TO odoouser;

--
-- Name: TABLE account_tax_template_filiation_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_tax_template_filiation_rel IS 'RELATION BETWEEN account_tax_template AND account_tax_template';


--
-- Name: account_tax_template_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_tax_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_tax_template_id_seq OWNER TO odoouser;

--
-- Name: account_tax_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_tax_template_id_seq OWNED BY account_tax_template.id;


--
-- Name: account_unreconcile; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE account_unreconcile (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE account_unreconcile OWNER TO odoouser;

--
-- Name: TABLE account_unreconcile; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE account_unreconcile IS 'Account Unreconcile';


--
-- Name: COLUMN account_unreconcile.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_unreconcile.create_uid IS 'Created by';


--
-- Name: COLUMN account_unreconcile.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_unreconcile.create_date IS 'Created on';


--
-- Name: COLUMN account_unreconcile.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_unreconcile.write_date IS 'Last Updated on';


--
-- Name: COLUMN account_unreconcile.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN account_unreconcile.write_uid IS 'Last Updated by';


--
-- Name: account_unreconcile_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE account_unreconcile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE account_unreconcile_id_seq OWNER TO odoouser;

--
-- Name: account_unreconcile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE account_unreconcile_id_seq OWNED BY account_unreconcile.id;


--
-- Name: accounting_report; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE accounting_report (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    filter_cmp character varying NOT NULL,
    date_from date,
    enable_filter boolean,
    company_id integer,
    date_to_cmp date,
    date_from_cmp date,
    label_filter character varying,
    debit_credit boolean,
    write_date timestamp without time zone,
    date_to date,
    account_report_id integer NOT NULL,
    write_uid integer,
    target_move character varying NOT NULL
);


ALTER TABLE accounting_report OWNER TO odoouser;

--
-- Name: TABLE accounting_report; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE accounting_report IS 'Accounting Report';


--
-- Name: COLUMN accounting_report.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.create_uid IS 'Created by';


--
-- Name: COLUMN accounting_report.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.create_date IS 'Created on';


--
-- Name: COLUMN accounting_report.filter_cmp; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.filter_cmp IS 'Filter by';


--
-- Name: COLUMN accounting_report.date_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.date_from IS 'Start Date';


--
-- Name: COLUMN accounting_report.enable_filter; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.enable_filter IS 'Enable Comparison';


--
-- Name: COLUMN accounting_report.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.company_id IS 'Company';


--
-- Name: COLUMN accounting_report.date_to_cmp; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.date_to_cmp IS 'End Date';


--
-- Name: COLUMN accounting_report.date_from_cmp; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.date_from_cmp IS 'Start Date';


--
-- Name: COLUMN accounting_report.label_filter; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.label_filter IS 'Column Label';


--
-- Name: COLUMN accounting_report.debit_credit; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.debit_credit IS 'Display Debit/Credit Columns';


--
-- Name: COLUMN accounting_report.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.write_date IS 'Last Updated on';


--
-- Name: COLUMN accounting_report.date_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.date_to IS 'End Date';


--
-- Name: COLUMN accounting_report.account_report_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.account_report_id IS 'Account Reports';


--
-- Name: COLUMN accounting_report.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.write_uid IS 'Last Updated by';


--
-- Name: COLUMN accounting_report.target_move; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN accounting_report.target_move IS 'Target Moves';


--
-- Name: accounting_report_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE accounting_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE accounting_report_id_seq OWNER TO odoouser;

--
-- Name: accounting_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE accounting_report_id_seq OWNED BY accounting_report.id;


--
-- Name: base_action_rule; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_action_rule (
    id integer NOT NULL,
    create_date timestamp without time zone,
    filter_pre_id integer,
    sequence integer,
    write_uid integer,
    trg_date_range_type character varying,
    trg_date_range integer,
    create_uid integer,
    filter_pre_domain character varying,
    on_change_fields character varying,
    filter_id integer,
    model_id integer NOT NULL,
    trg_date_id integer,
    write_date timestamp without time zone,
    active boolean,
    kind character varying,
    filter_domain character varying,
    name character varying NOT NULL,
    act_user_id integer,
    last_run timestamp without time zone,
    trg_date_calendar_id integer
);


ALTER TABLE base_action_rule OWNER TO odoouser;

--
-- Name: TABLE base_action_rule; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_action_rule IS 'Action Rules';


--
-- Name: COLUMN base_action_rule.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.create_date IS 'Create Date';


--
-- Name: COLUMN base_action_rule.filter_pre_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.filter_pre_id IS 'Before Update Filter';


--
-- Name: COLUMN base_action_rule.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.sequence IS 'Sequence';


--
-- Name: COLUMN base_action_rule.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_action_rule.trg_date_range_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.trg_date_range_type IS 'Delay type';


--
-- Name: COLUMN base_action_rule.trg_date_range; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.trg_date_range IS 'Delay after trigger date';


--
-- Name: COLUMN base_action_rule.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.create_uid IS 'Created by';


--
-- Name: COLUMN base_action_rule.filter_pre_domain; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.filter_pre_domain IS 'Before Update Domain';


--
-- Name: COLUMN base_action_rule.on_change_fields; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.on_change_fields IS 'On Change Fields Trigger';


--
-- Name: COLUMN base_action_rule.filter_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.filter_id IS 'Filter';


--
-- Name: COLUMN base_action_rule.model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.model_id IS 'Related Document Model';


--
-- Name: COLUMN base_action_rule.trg_date_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.trg_date_id IS 'Trigger Date';


--
-- Name: COLUMN base_action_rule.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_action_rule.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.active IS 'Active';


--
-- Name: COLUMN base_action_rule.kind; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.kind IS 'When to Run';


--
-- Name: COLUMN base_action_rule.filter_domain; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.filter_domain IS 'Domain';


--
-- Name: COLUMN base_action_rule.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.name IS 'Rule Name';


--
-- Name: COLUMN base_action_rule.act_user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.act_user_id IS 'Set Responsible';


--
-- Name: COLUMN base_action_rule.last_run; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.last_run IS 'Last Run';


--
-- Name: COLUMN base_action_rule.trg_date_calendar_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule.trg_date_calendar_id IS 'Use Calendar';


--
-- Name: base_action_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_action_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_action_rule_id_seq OWNER TO odoouser;

--
-- Name: base_action_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_action_rule_id_seq OWNED BY base_action_rule.id;


--
-- Name: base_action_rule_ir_act_server_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_action_rule_ir_act_server_rel (
    base_action_rule_id integer NOT NULL,
    ir_act_server_id integer NOT NULL
);


ALTER TABLE base_action_rule_ir_act_server_rel OWNER TO odoouser;

--
-- Name: TABLE base_action_rule_ir_act_server_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_action_rule_ir_act_server_rel IS 'RELATION BETWEEN base_action_rule AND ir_act_server';


--
-- Name: base_action_rule_lead_test; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_action_rule_lead_test (
    id integer NOT NULL,
    customer boolean,
    create_uid integer,
    user_id integer,
    name character varying NOT NULL,
    date_action_last timestamp without time zone,
    write_uid integer,
    state character varying,
    write_date timestamp without time zone,
    active boolean,
    create_date timestamp without time zone,
    partner_id integer
);


ALTER TABLE base_action_rule_lead_test OWNER TO odoouser;

--
-- Name: TABLE base_action_rule_lead_test; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_action_rule_lead_test IS 'Action Rule Test';


--
-- Name: COLUMN base_action_rule_lead_test.customer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.customer IS 'Is a Customer';


--
-- Name: COLUMN base_action_rule_lead_test.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.create_uid IS 'Created by';


--
-- Name: COLUMN base_action_rule_lead_test.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.user_id IS 'Responsible';


--
-- Name: COLUMN base_action_rule_lead_test.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.name IS 'Subject';


--
-- Name: COLUMN base_action_rule_lead_test.date_action_last; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.date_action_last IS 'Last Action';


--
-- Name: COLUMN base_action_rule_lead_test.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_action_rule_lead_test.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.state IS 'Status';


--
-- Name: COLUMN base_action_rule_lead_test.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_action_rule_lead_test.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.active IS 'Active';


--
-- Name: COLUMN base_action_rule_lead_test.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.create_date IS 'Created on';


--
-- Name: COLUMN base_action_rule_lead_test.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_lead_test.partner_id IS 'Partner';


--
-- Name: base_action_rule_lead_test_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_action_rule_lead_test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_action_rule_lead_test_id_seq OWNER TO odoouser;

--
-- Name: base_action_rule_lead_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_action_rule_lead_test_id_seq OWNED BY base_action_rule_lead_test.id;


--
-- Name: base_action_rule_line_test; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_action_rule_line_test (
    id integer NOT NULL,
    create_uid integer,
    user_id integer,
    lead_id integer,
    write_uid integer,
    write_date timestamp without time zone,
    create_date timestamp without time zone,
    name character varying
);


ALTER TABLE base_action_rule_line_test OWNER TO odoouser;

--
-- Name: TABLE base_action_rule_line_test; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_action_rule_line_test IS 'Action Rule Line Test';


--
-- Name: COLUMN base_action_rule_line_test.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_line_test.create_uid IS 'Created by';


--
-- Name: COLUMN base_action_rule_line_test.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_line_test.user_id IS 'User id';


--
-- Name: COLUMN base_action_rule_line_test.lead_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_line_test.lead_id IS 'Lead id';


--
-- Name: COLUMN base_action_rule_line_test.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_line_test.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_action_rule_line_test.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_line_test.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_action_rule_line_test.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_line_test.create_date IS 'Created on';


--
-- Name: COLUMN base_action_rule_line_test.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_action_rule_line_test.name IS 'Name';


--
-- Name: base_action_rule_line_test_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_action_rule_line_test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_action_rule_line_test_id_seq OWNER TO odoouser;

--
-- Name: base_action_rule_line_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_action_rule_line_test_id_seq OWNED BY base_action_rule_line_test.id;


--
-- Name: base_action_rule_res_partner_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_action_rule_res_partner_rel (
    base_action_rule_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE base_action_rule_res_partner_rel OWNER TO odoouser;

--
-- Name: TABLE base_action_rule_res_partner_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_action_rule_res_partner_rel IS 'RELATION BETWEEN base_action_rule AND res_partner';


--
-- Name: base_config_settings; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_config_settings (
    id integer NOT NULL,
    create_uid integer,
    group_light_multi_company boolean,
    create_date timestamp without time zone,
    module_google_drive boolean,
    module_inter_company_rules boolean,
    module_base_import boolean,
    write_uid integer,
    module_portal boolean,
    module_google_calendar boolean,
    write_date timestamp without time zone,
    module_share boolean,
    module_auth_oauth boolean,
    company_share_partner boolean,
    fail_counter integer,
    alias_domain character varying,
    auth_signup_reset_password boolean,
    auth_signup_uninvited boolean,
    auth_signup_template_user_id integer,
    company_share_product boolean,
    group_product_variant boolean
);


ALTER TABLE base_config_settings OWNER TO odoouser;

--
-- Name: TABLE base_config_settings; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_config_settings IS 'base.config.settings';


--
-- Name: COLUMN base_config_settings.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.create_uid IS 'Created by';


--
-- Name: COLUMN base_config_settings.group_light_multi_company; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.group_light_multi_company IS 'Manage multiple companies';


--
-- Name: COLUMN base_config_settings.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.create_date IS 'Created on';


--
-- Name: COLUMN base_config_settings.module_google_drive; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.module_google_drive IS 'Attach Google documents to any record';


--
-- Name: COLUMN base_config_settings.module_inter_company_rules; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.module_inter_company_rules IS 'Manage Inter Company';


--
-- Name: COLUMN base_config_settings.module_base_import; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.module_base_import IS 'Allow users to import data from CSV/XLS/XLSX/ODS files';


--
-- Name: COLUMN base_config_settings.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_config_settings.module_portal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.module_portal IS 'Activate the customer portal';


--
-- Name: COLUMN base_config_settings.module_google_calendar; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.module_google_calendar IS 'Allow the users to synchronize their calendar  with Google Calendar';


--
-- Name: COLUMN base_config_settings.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_config_settings.module_share; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.module_share IS 'Allow documents sharing';


--
-- Name: COLUMN base_config_settings.module_auth_oauth; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.module_auth_oauth IS 'Use external authentication providers, sign in with Google...';


--
-- Name: COLUMN base_config_settings.company_share_partner; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.company_share_partner IS 'Share partners to all companies';


--
-- Name: COLUMN base_config_settings.fail_counter; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.fail_counter IS 'Fail Mail';


--
-- Name: COLUMN base_config_settings.alias_domain; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.alias_domain IS 'Alias Domain';


--
-- Name: COLUMN base_config_settings.auth_signup_reset_password; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.auth_signup_reset_password IS 'Enable password reset from Login page';


--
-- Name: COLUMN base_config_settings.auth_signup_uninvited; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.auth_signup_uninvited IS 'Allow external users to sign up';


--
-- Name: COLUMN base_config_settings.auth_signup_template_user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.auth_signup_template_user_id IS 'Template user for new users created through signup';


--
-- Name: COLUMN base_config_settings.company_share_product; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.company_share_product IS 'Share product to all companies';


--
-- Name: COLUMN base_config_settings.group_product_variant; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_config_settings.group_product_variant IS 'Manage Product Variants';


--
-- Name: base_config_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_config_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_config_settings_id_seq OWNER TO odoouser;

--
-- Name: base_config_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_config_settings_id_seq OWNED BY base_config_settings.id;


--
-- Name: base_import_import; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_import (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    file_type character varying,
    file_name character varying,
    write_uid integer,
    file bytea,
    res_model character varying
);


ALTER TABLE base_import_import OWNER TO odoouser;

--
-- Name: TABLE base_import_import; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_import IS 'base_import.import';


--
-- Name: COLUMN base_import_import.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_import.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_import.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_import.create_date IS 'Created on';


--
-- Name: COLUMN base_import_import.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_import.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_import_import.file_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_import.file_type IS 'File Type';


--
-- Name: COLUMN base_import_import.file_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_import.file_name IS 'File Name';


--
-- Name: COLUMN base_import_import.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_import.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_import.file; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_import.file IS 'File';


--
-- Name: COLUMN base_import_import.res_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_import.res_model IS 'Model';


--
-- Name: base_import_import_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_import_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_import_id_seq OWNER TO odoouser;

--
-- Name: base_import_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_import_id_seq OWNED BY base_import_import.id;


--
-- Name: base_import_tests_models_char; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_char (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value character varying,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_char OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_char; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_char IS 'base_import.tests.models.char';


--
-- Name: COLUMN base_import_tests_models_char.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_char.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_char_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_char_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_char_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_char_id_seq OWNED BY base_import_tests_models_char.id;


--
-- Name: base_import_tests_models_char_noreadonly; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_char_noreadonly (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value character varying,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_char_noreadonly OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_char_noreadonly; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_char_noreadonly IS 'base_import.tests.models.char.noreadonly';


--
-- Name: COLUMN base_import_tests_models_char_noreadonly.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_noreadonly.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char_noreadonly.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_noreadonly.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char_noreadonly.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_noreadonly.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_char_noreadonly.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_noreadonly.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char_noreadonly.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_noreadonly.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_noreadonly_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_char_noreadonly_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_char_noreadonly_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_char_noreadonly_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_char_noreadonly_id_seq OWNED BY base_import_tests_models_char_noreadonly.id;


--
-- Name: base_import_tests_models_char_readonly; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_char_readonly (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value character varying,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_char_readonly OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_char_readonly; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_char_readonly IS 'base_import.tests.models.char.readonly';


--
-- Name: COLUMN base_import_tests_models_char_readonly.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_readonly.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char_readonly.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_readonly.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char_readonly.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_readonly.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_char_readonly.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_readonly.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char_readonly.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_readonly.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_readonly_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_char_readonly_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_char_readonly_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_char_readonly_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_char_readonly_id_seq OWNED BY base_import_tests_models_char_readonly.id;


--
-- Name: base_import_tests_models_char_required; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_char_required (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_char_required OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_char_required; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_char_required IS 'base_import.tests.models.char.required';


--
-- Name: COLUMN base_import_tests_models_char_required.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_required.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char_required.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_required.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char_required.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_required.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_char_required.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_required.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char_required.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_required.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_required_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_char_required_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_char_required_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_char_required_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_char_required_id_seq OWNED BY base_import_tests_models_char_required.id;


--
-- Name: base_import_tests_models_char_states; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_char_states (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value character varying,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_char_states OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_char_states; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_char_states IS 'base_import.tests.models.char.states';


--
-- Name: COLUMN base_import_tests_models_char_states.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_states.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char_states.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_states.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char_states.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_states.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_char_states.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_states.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char_states.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_states.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_states_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_char_states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_char_states_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_char_states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_char_states_id_seq OWNED BY base_import_tests_models_char_states.id;


--
-- Name: base_import_tests_models_char_stillreadonly; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_char_stillreadonly (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value character varying,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_char_stillreadonly OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_char_stillreadonly; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_char_stillreadonly IS 'base_import.tests.models.char.stillreadonly';


--
-- Name: COLUMN base_import_tests_models_char_stillreadonly.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_stillreadonly.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char_stillreadonly.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_stillreadonly.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char_stillreadonly.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_stillreadonly.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_char_stillreadonly.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_stillreadonly.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char_stillreadonly.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_char_stillreadonly.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_stillreadonly_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_char_stillreadonly_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_char_stillreadonly_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_char_stillreadonly_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_char_stillreadonly_id_seq OWNED BY base_import_tests_models_char_stillreadonly.id;


--
-- Name: base_import_tests_models_m2o; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_m2o (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value integer,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_m2o OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_m2o; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_m2o IS 'base_import.tests.models.m2o';


--
-- Name: COLUMN base_import_tests_models_m2o.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_m2o.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_m2o.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_m2o.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_m2o.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_m2o_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_m2o_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_m2o_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_m2o_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_m2o_id_seq OWNED BY base_import_tests_models_m2o.id;


--
-- Name: base_import_tests_models_m2o_related; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_m2o_related (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value integer,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_m2o_related OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_m2o_related; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_m2o_related IS 'base_import.tests.models.m2o.related';


--
-- Name: COLUMN base_import_tests_models_m2o_related.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_related.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_m2o_related.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_related.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_m2o_related.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_related.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_m2o_related.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_related.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_m2o_related.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_related.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_m2o_related_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_m2o_related_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_m2o_related_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_m2o_related_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_m2o_related_id_seq OWNED BY base_import_tests_models_m2o_related.id;


--
-- Name: base_import_tests_models_m2o_required; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_m2o_required (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value integer NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_m2o_required OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_m2o_required; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_m2o_required IS 'base_import.tests.models.m2o.required';


--
-- Name: COLUMN base_import_tests_models_m2o_required.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_required.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_m2o_required.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_required.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_m2o_required.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_required.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_m2o_required.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_required.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_m2o_required.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_required.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_m2o_required_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_m2o_required_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_m2o_required_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_m2o_required_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_m2o_required_id_seq OWNED BY base_import_tests_models_m2o_required.id;


--
-- Name: base_import_tests_models_m2o_required_related; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_m2o_required_related (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value integer,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_m2o_required_related OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_m2o_required_related; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_m2o_required_related IS 'base_import.tests.models.m2o.required.related';


--
-- Name: COLUMN base_import_tests_models_m2o_required_related.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_required_related.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_m2o_required_related.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_required_related.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_m2o_required_related.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_required_related.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_m2o_required_related.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_required_related.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_m2o_required_related.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_m2o_required_related.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_m2o_required_related_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_m2o_required_related_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_m2o_required_related_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_m2o_required_related_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_m2o_required_related_id_seq OWNED BY base_import_tests_models_m2o_required_related.id;


--
-- Name: base_import_tests_models_o2m; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_o2m (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_o2m OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_o2m; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_o2m IS 'base_import.tests.models.o2m';


--
-- Name: COLUMN base_import_tests_models_o2m.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_o2m.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_o2m.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_o2m.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_o2m.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_o2m.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_o2m.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_o2m.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_o2m_child; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_o2m_child (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    value integer,
    write_uid integer,
    parent_id integer,
    write_date timestamp without time zone
);


ALTER TABLE base_import_tests_models_o2m_child OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_o2m_child; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_o2m_child IS 'base_import.tests.models.o2m.child';


--
-- Name: COLUMN base_import_tests_models_o2m_child.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_o2m_child.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_o2m_child.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_o2m_child.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_o2m_child.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_o2m_child.value IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_o2m_child.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_o2m_child.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_o2m_child.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_o2m_child.parent_id IS 'unknown';


--
-- Name: COLUMN base_import_tests_models_o2m_child.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_o2m_child.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_o2m_child_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_o2m_child_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_o2m_child_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_o2m_child_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_o2m_child_id_seq OWNED BY base_import_tests_models_o2m_child.id;


--
-- Name: base_import_tests_models_o2m_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_o2m_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_o2m_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_o2m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_o2m_id_seq OWNED BY base_import_tests_models_o2m.id;


--
-- Name: base_import_tests_models_preview; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_import_tests_models_preview (
    id integer NOT NULL,
    create_uid integer,
    othervalue integer,
    create_date timestamp without time zone,
    name character varying,
    write_uid integer,
    write_date timestamp without time zone,
    somevalue integer NOT NULL
);


ALTER TABLE base_import_tests_models_preview OWNER TO odoouser;

--
-- Name: TABLE base_import_tests_models_preview; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_import_tests_models_preview IS 'base_import.tests.models.preview';


--
-- Name: COLUMN base_import_tests_models_preview.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_preview.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_preview.othervalue; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_preview.othervalue IS 'Other Variable';


--
-- Name: COLUMN base_import_tests_models_preview.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_preview.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_preview.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_preview.name IS 'Name';


--
-- Name: COLUMN base_import_tests_models_preview.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_preview.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_preview.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_preview.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_import_tests_models_preview.somevalue; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_import_tests_models_preview.somevalue IS 'Some Value';


--
-- Name: base_import_tests_models_preview_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_import_tests_models_preview_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_import_tests_models_preview_id_seq OWNER TO odoouser;

--
-- Name: base_import_tests_models_preview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_import_tests_models_preview_id_seq OWNED BY base_import_tests_models_preview.id;


--
-- Name: base_language_export; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_language_export (
    id integer NOT NULL,
    lang character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying,
    format character varying NOT NULL,
    write_uid integer,
    state character varying,
    write_date timestamp without time zone,
    data bytea
);


ALTER TABLE base_language_export OWNER TO odoouser;

--
-- Name: TABLE base_language_export; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_language_export IS 'base.language.export';


--
-- Name: COLUMN base_language_export.lang; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_export.lang IS 'Language';


--
-- Name: COLUMN base_language_export.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_export.create_uid IS 'Created by';


--
-- Name: COLUMN base_language_export.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_export.create_date IS 'Created on';


--
-- Name: COLUMN base_language_export.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_export.name IS 'File Name';


--
-- Name: COLUMN base_language_export.format; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_export.format IS 'File Format';


--
-- Name: COLUMN base_language_export.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_export.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_language_export.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_export.state IS 'unknown';


--
-- Name: COLUMN base_language_export.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_export.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_language_export.data; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_export.data IS 'File';


--
-- Name: base_language_export_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_language_export_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_language_export_id_seq OWNER TO odoouser;

--
-- Name: base_language_export_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_language_export_id_seq OWNED BY base_language_export.id;


--
-- Name: base_language_import; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_language_import (
    id integer NOT NULL,
    create_uid integer,
    code character varying(5) NOT NULL,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    filename character varying NOT NULL,
    write_date timestamp without time zone,
    write_uid integer,
    data bytea NOT NULL,
    overwrite boolean
);


ALTER TABLE base_language_import OWNER TO odoouser;

--
-- Name: TABLE base_language_import; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_language_import IS 'Language Import';


--
-- Name: COLUMN base_language_import.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_import.create_uid IS 'Created by';


--
-- Name: COLUMN base_language_import.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_import.code IS 'ISO Code';


--
-- Name: COLUMN base_language_import.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_import.create_date IS 'Created on';


--
-- Name: COLUMN base_language_import.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_import.name IS 'Language Name';


--
-- Name: COLUMN base_language_import.filename; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_import.filename IS 'File Name';


--
-- Name: COLUMN base_language_import.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_import.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_language_import.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_import.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_language_import.data; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_import.data IS 'File';


--
-- Name: COLUMN base_language_import.overwrite; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_import.overwrite IS 'Overwrite Existing Terms';


--
-- Name: base_language_import_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_language_import_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_language_import_id_seq OWNER TO odoouser;

--
-- Name: base_language_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_language_import_id_seq OWNED BY base_language_import.id;


--
-- Name: base_language_install; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_language_install (
    id integer NOT NULL,
    lang character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    state character varying,
    write_date timestamp without time zone,
    overwrite boolean
);


ALTER TABLE base_language_install OWNER TO odoouser;

--
-- Name: TABLE base_language_install; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_language_install IS 'Install Language';


--
-- Name: COLUMN base_language_install.lang; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_install.lang IS 'Language';


--
-- Name: COLUMN base_language_install.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_install.create_uid IS 'Created by';


--
-- Name: COLUMN base_language_install.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_install.create_date IS 'Created on';


--
-- Name: COLUMN base_language_install.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_install.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_language_install.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_install.state IS 'Status';


--
-- Name: COLUMN base_language_install.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_install.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_language_install.overwrite; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_language_install.overwrite IS 'Overwrite Existing Terms';


--
-- Name: base_language_install_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_language_install_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_language_install_id_seq OWNER TO odoouser;

--
-- Name: base_language_install_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_language_install_id_seq OWNED BY base_language_install.id;


--
-- Name: base_language_install_website_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_language_install_website_rel (
    base_language_install_id integer NOT NULL,
    website_id integer NOT NULL
);


ALTER TABLE base_language_install_website_rel OWNER TO odoouser;

--
-- Name: TABLE base_language_install_website_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_language_install_website_rel IS 'RELATION BETWEEN base_language_install AND website';


--
-- Name: base_module_configuration; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_module_configuration (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE base_module_configuration OWNER TO odoouser;

--
-- Name: TABLE base_module_configuration; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_module_configuration IS 'base.module.configuration';


--
-- Name: COLUMN base_module_configuration.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_configuration.create_uid IS 'Created by';


--
-- Name: COLUMN base_module_configuration.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_configuration.create_date IS 'Created on';


--
-- Name: COLUMN base_module_configuration.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_configuration.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_module_configuration.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_configuration.write_uid IS 'Last Updated by';


--
-- Name: base_module_configuration_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_module_configuration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_module_configuration_id_seq OWNER TO odoouser;

--
-- Name: base_module_configuration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_module_configuration_id_seq OWNED BY base_module_configuration.id;


--
-- Name: base_module_update; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_module_update (
    id integer NOT NULL,
    create_uid integer,
    updated integer,
    added integer,
    create_date timestamp without time zone,
    write_uid integer,
    state character varying,
    write_date timestamp without time zone
);


ALTER TABLE base_module_update OWNER TO odoouser;

--
-- Name: TABLE base_module_update; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_module_update IS 'Update Module';


--
-- Name: COLUMN base_module_update.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_update.create_uid IS 'Created by';


--
-- Name: COLUMN base_module_update.updated; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_update.updated IS 'Number of modules updated';


--
-- Name: COLUMN base_module_update.added; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_update.added IS 'Number of modules added';


--
-- Name: COLUMN base_module_update.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_update.create_date IS 'Created on';


--
-- Name: COLUMN base_module_update.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_update.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_module_update.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_update.state IS 'Status';


--
-- Name: COLUMN base_module_update.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_update.write_date IS 'Last Updated on';


--
-- Name: base_module_update_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_module_update_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_module_update_id_seq OWNER TO odoouser;

--
-- Name: base_module_update_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_module_update_id_seq OWNED BY base_module_update.id;


--
-- Name: base_module_upgrade; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_module_upgrade (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    module_info text
);


ALTER TABLE base_module_upgrade OWNER TO odoouser;

--
-- Name: TABLE base_module_upgrade; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_module_upgrade IS 'Module Upgrade';


--
-- Name: COLUMN base_module_upgrade.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_upgrade.create_uid IS 'Created by';


--
-- Name: COLUMN base_module_upgrade.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_upgrade.create_date IS 'Created on';


--
-- Name: COLUMN base_module_upgrade.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_upgrade.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_module_upgrade.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_upgrade.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_module_upgrade.module_info; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_module_upgrade.module_info IS 'Apps to Update';


--
-- Name: base_module_upgrade_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_module_upgrade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_module_upgrade_id_seq OWNER TO odoouser;

--
-- Name: base_module_upgrade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_module_upgrade_id_seq OWNED BY base_module_upgrade.id;


--
-- Name: base_partner_merge_automatic_wizard; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_partner_merge_automatic_wizard (
    id integer NOT NULL,
    exclude_journal_item boolean,
    create_uid integer,
    maximum_group integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    group_by_vat boolean,
    group_by_email boolean,
    group_by_parent_id boolean,
    exclude_contact boolean,
    group_by_is_company boolean,
    write_uid integer,
    state character varying NOT NULL,
    current_line_id integer,
    group_by_name boolean,
    number_group integer,
    dst_partner_id integer
);


ALTER TABLE base_partner_merge_automatic_wizard OWNER TO odoouser;

--
-- Name: TABLE base_partner_merge_automatic_wizard; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_partner_merge_automatic_wizard IS 'base.partner.merge.automatic.wizard';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.exclude_journal_item; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.exclude_journal_item IS 'Journal Items associated to the contact';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.create_uid IS 'Created by';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.maximum_group; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.maximum_group IS 'Maximum of Group of Contacts';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.create_date IS 'Created on';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.group_by_vat; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.group_by_vat IS 'VAT';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.group_by_email; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.group_by_email IS 'Email';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.group_by_parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.group_by_parent_id IS 'Parent Company';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.exclude_contact; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.exclude_contact IS 'A user associated to the contact';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.group_by_is_company; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.group_by_is_company IS 'Is Company';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.state IS 'State';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.current_line_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.current_line_id IS 'Current Line';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.group_by_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.group_by_name IS 'Name';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.number_group; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.number_group IS 'Group of Contacts';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.dst_partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_automatic_wizard.dst_partner_id IS 'Destination Contact';


--
-- Name: base_partner_merge_automatic_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_partner_merge_automatic_wizard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_partner_merge_automatic_wizard_id_seq OWNER TO odoouser;

--
-- Name: base_partner_merge_automatic_wizard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_partner_merge_automatic_wizard_id_seq OWNED BY base_partner_merge_automatic_wizard.id;


--
-- Name: base_partner_merge_automatic_wizard_res_partner_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_partner_merge_automatic_wizard_res_partner_rel (
    base_partner_merge_automatic_wizard_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE base_partner_merge_automatic_wizard_res_partner_rel OWNER TO odoouser;

--
-- Name: TABLE base_partner_merge_automatic_wizard_res_partner_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_partner_merge_automatic_wizard_res_partner_rel IS 'RELATION BETWEEN base_partner_merge_automatic_wizard AND res_partner';


--
-- Name: base_partner_merge_line; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_partner_merge_line (
    id integer NOT NULL,
    create_uid integer,
    wizard_id integer,
    write_uid integer,
    write_date timestamp without time zone,
    create_date timestamp without time zone,
    aggr_ids character varying NOT NULL,
    min_id integer
);


ALTER TABLE base_partner_merge_line OWNER TO odoouser;

--
-- Name: TABLE base_partner_merge_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_partner_merge_line IS 'base.partner.merge.line';


--
-- Name: COLUMN base_partner_merge_line.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_line.create_uid IS 'Created by';


--
-- Name: COLUMN base_partner_merge_line.wizard_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_line.wizard_id IS 'Wizard';


--
-- Name: COLUMN base_partner_merge_line.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_partner_merge_line.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_line.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_partner_merge_line.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_line.create_date IS 'Created on';


--
-- Name: COLUMN base_partner_merge_line.aggr_ids; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_line.aggr_ids IS 'Ids';


--
-- Name: COLUMN base_partner_merge_line.min_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_partner_merge_line.min_id IS 'MinID';


--
-- Name: base_partner_merge_line_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_partner_merge_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_partner_merge_line_id_seq OWNER TO odoouser;

--
-- Name: base_partner_merge_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_partner_merge_line_id_seq OWNED BY base_partner_merge_line.id;


--
-- Name: base_setup_terminology; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_setup_terminology (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    partner character varying NOT NULL
);


ALTER TABLE base_setup_terminology OWNER TO odoouser;

--
-- Name: TABLE base_setup_terminology; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_setup_terminology IS 'base.setup.terminology';


--
-- Name: COLUMN base_setup_terminology.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_setup_terminology.create_uid IS 'Created by';


--
-- Name: COLUMN base_setup_terminology.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_setup_terminology.create_date IS 'Created on';


--
-- Name: COLUMN base_setup_terminology.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_setup_terminology.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_setup_terminology.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_setup_terminology.write_date IS 'Last Updated on';


--
-- Name: COLUMN base_setup_terminology.partner; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_setup_terminology.partner IS 'How do you call a Customer';


--
-- Name: base_setup_terminology_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_setup_terminology_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_setup_terminology_id_seq OWNER TO odoouser;

--
-- Name: base_setup_terminology_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_setup_terminology_id_seq OWNED BY base_setup_terminology.id;


--
-- Name: base_update_translations; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE base_update_translations (
    id integer NOT NULL,
    lang character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE base_update_translations OWNER TO odoouser;

--
-- Name: TABLE base_update_translations; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE base_update_translations IS 'base.update.translations';


--
-- Name: COLUMN base_update_translations.lang; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_update_translations.lang IS 'Language';


--
-- Name: COLUMN base_update_translations.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_update_translations.create_uid IS 'Created by';


--
-- Name: COLUMN base_update_translations.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_update_translations.create_date IS 'Created on';


--
-- Name: COLUMN base_update_translations.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_update_translations.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_update_translations.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN base_update_translations.write_date IS 'Last Updated on';


--
-- Name: base_update_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE base_update_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE base_update_translations_id_seq OWNER TO odoouser;

--
-- Name: base_update_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE base_update_translations_id_seq OWNED BY base_update_translations.id;


--
-- Name: bus_bus; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE bus_bus (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    message character varying,
    channel character varying
);


ALTER TABLE bus_bus OWNER TO odoouser;

--
-- Name: TABLE bus_bus; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE bus_bus IS 'bus.bus';


--
-- Name: COLUMN bus_bus.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN bus_bus.create_uid IS 'Created by';


--
-- Name: COLUMN bus_bus.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN bus_bus.create_date IS 'Create date';


--
-- Name: COLUMN bus_bus.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN bus_bus.write_uid IS 'Last Updated by';


--
-- Name: COLUMN bus_bus.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN bus_bus.write_date IS 'Last Updated on';


--
-- Name: COLUMN bus_bus.message; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN bus_bus.message IS 'Message';


--
-- Name: COLUMN bus_bus.channel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN bus_bus.channel IS 'Channel';


--
-- Name: bus_bus_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE bus_bus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bus_bus_id_seq OWNER TO odoouser;

--
-- Name: bus_bus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE bus_bus_id_seq OWNED BY bus_bus.id;


--
-- Name: bus_presence; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE bus_presence (
    id integer NOT NULL,
    status character varying,
    last_presence timestamp without time zone,
    user_id integer NOT NULL,
    last_poll timestamp without time zone
);


ALTER TABLE bus_presence OWNER TO odoouser;

--
-- Name: TABLE bus_presence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE bus_presence IS 'User Presence';


--
-- Name: COLUMN bus_presence.status; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN bus_presence.status IS 'IM Status';


--
-- Name: COLUMN bus_presence.last_presence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN bus_presence.last_presence IS 'Last Presence';


--
-- Name: COLUMN bus_presence.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN bus_presence.user_id IS 'Users';


--
-- Name: COLUMN bus_presence.last_poll; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN bus_presence.last_poll IS 'Last Poll';


--
-- Name: bus_presence_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE bus_presence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bus_presence_id_seq OWNER TO odoouser;

--
-- Name: bus_presence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE bus_presence_id_seq OWNED BY bus_presence.id;


--
-- Name: calendar_alarm; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE calendar_alarm (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    "interval" character varying NOT NULL,
    write_uid integer,
    duration_minutes integer,
    write_date timestamp without time zone,
    duration integer NOT NULL,
    type character varying NOT NULL
);


ALTER TABLE calendar_alarm OWNER TO odoouser;

--
-- Name: TABLE calendar_alarm; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE calendar_alarm IS 'Event alarm';


--
-- Name: COLUMN calendar_alarm.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_alarm.create_uid IS 'Created by';


--
-- Name: COLUMN calendar_alarm.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_alarm.create_date IS 'Created on';


--
-- Name: COLUMN calendar_alarm.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_alarm.name IS 'Name';


--
-- Name: COLUMN calendar_alarm."interval"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_alarm."interval" IS 'Unit';


--
-- Name: COLUMN calendar_alarm.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_alarm.write_uid IS 'Last Updated by';


--
-- Name: COLUMN calendar_alarm.duration_minutes; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_alarm.duration_minutes IS 'Duration in minutes';


--
-- Name: COLUMN calendar_alarm.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_alarm.write_date IS 'Last Updated on';


--
-- Name: COLUMN calendar_alarm.duration; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_alarm.duration IS 'Amount';


--
-- Name: COLUMN calendar_alarm.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_alarm.type IS 'Type';


--
-- Name: calendar_alarm_calendar_event_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE calendar_alarm_calendar_event_rel (
    calendar_event_id integer NOT NULL,
    calendar_alarm_id integer NOT NULL
);


ALTER TABLE calendar_alarm_calendar_event_rel OWNER TO odoouser;

--
-- Name: TABLE calendar_alarm_calendar_event_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE calendar_alarm_calendar_event_rel IS 'RELATION BETWEEN calendar_event AND calendar_alarm';


--
-- Name: calendar_alarm_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE calendar_alarm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE calendar_alarm_id_seq OWNER TO odoouser;

--
-- Name: calendar_alarm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE calendar_alarm_id_seq OWNED BY calendar_alarm.id;


--
-- Name: calendar_attendee; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE calendar_attendee (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    cn character varying,
    access_token character varying,
    event_id integer,
    state character varying,
    email character varying,
    write_date timestamp without time zone,
    write_uid integer,
    partner_id integer,
    availability character varying
);


ALTER TABLE calendar_attendee OWNER TO odoouser;

--
-- Name: TABLE calendar_attendee; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE calendar_attendee IS 'Attendee information';


--
-- Name: COLUMN calendar_attendee.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.create_uid IS 'Created by';


--
-- Name: COLUMN calendar_attendee.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.create_date IS 'Created on';


--
-- Name: COLUMN calendar_attendee.cn; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.cn IS 'Common name';


--
-- Name: COLUMN calendar_attendee.access_token; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.access_token IS 'Invitation Token';


--
-- Name: COLUMN calendar_attendee.event_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.event_id IS 'Meeting linked';


--
-- Name: COLUMN calendar_attendee.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.state IS 'Status';


--
-- Name: COLUMN calendar_attendee.email; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.email IS 'Email';


--
-- Name: COLUMN calendar_attendee.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.write_date IS 'Last Updated on';


--
-- Name: COLUMN calendar_attendee.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.write_uid IS 'Last Updated by';


--
-- Name: COLUMN calendar_attendee.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.partner_id IS 'Contact';


--
-- Name: COLUMN calendar_attendee.availability; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_attendee.availability IS 'Free/Busy';


--
-- Name: calendar_attendee_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE calendar_attendee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE calendar_attendee_id_seq OWNER TO odoouser;

--
-- Name: calendar_attendee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE calendar_attendee_id_seq OWNED BY calendar_attendee.id;


--
-- Name: calendar_contacts; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE calendar_contacts (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    active boolean,
    user_id integer,
    partner_id integer NOT NULL
);


ALTER TABLE calendar_contacts OWNER TO odoouser;

--
-- Name: TABLE calendar_contacts; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE calendar_contacts IS 'calendar.contacts';


--
-- Name: COLUMN calendar_contacts.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_contacts.create_uid IS 'Created by';


--
-- Name: COLUMN calendar_contacts.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_contacts.create_date IS 'Created on';


--
-- Name: COLUMN calendar_contacts.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_contacts.write_uid IS 'Last Updated by';


--
-- Name: COLUMN calendar_contacts.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_contacts.write_date IS 'Last Updated on';


--
-- Name: COLUMN calendar_contacts.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_contacts.active IS 'active';


--
-- Name: COLUMN calendar_contacts.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_contacts.user_id IS 'Me';


--
-- Name: COLUMN calendar_contacts.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_contacts.partner_id IS 'Employee';


--
-- Name: calendar_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE calendar_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE calendar_contacts_id_seq OWNER TO odoouser;

--
-- Name: calendar_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE calendar_contacts_id_seq OWNED BY calendar_contacts.id;


--
-- Name: calendar_event; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE calendar_event (
    id integer NOT NULL,
    allday boolean,
    create_date timestamp without time zone,
    display_start character varying,
    recurrency boolean,
    start_datetime timestamp without time zone,
    write_uid integer,
    month_by character varying,
    rrule character varying,
    duration double precision,
    final_date date,
    create_uid integer,
    user_id integer,
    tu boolean,
    message_last_post timestamp without time zone,
    week_list character varying,
    day integer,
    start timestamp without time zone NOT NULL,
    state character varying,
    location character varying,
    th boolean,
    start_date date,
    fr boolean,
    recurrent_id_date timestamp without time zone,
    description text,
    stop_date date,
    stop timestamp without time zone NOT NULL,
    stop_datetime timestamp without time zone,
    write_date timestamp without time zone,
    active boolean,
    byday character varying,
    class character varying,
    count integer,
    end_type character varying,
    name character varying NOT NULL,
    we boolean,
    mo boolean,
    "interval" integer,
    su boolean,
    recurrent_id integer,
    sa boolean,
    rrule_type character varying,
    show_as character varying,
    opportunity_id integer
);


ALTER TABLE calendar_event OWNER TO odoouser;

--
-- Name: TABLE calendar_event; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE calendar_event IS 'Event';


--
-- Name: COLUMN calendar_event.allday; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.allday IS 'All Day';


--
-- Name: COLUMN calendar_event.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.create_date IS 'Created on';


--
-- Name: COLUMN calendar_event.display_start; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.display_start IS 'Date';


--
-- Name: COLUMN calendar_event.recurrency; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.recurrency IS 'Recurrent';


--
-- Name: COLUMN calendar_event.start_datetime; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.start_datetime IS 'Start DateTime';


--
-- Name: COLUMN calendar_event.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.write_uid IS 'Last Updated by';


--
-- Name: COLUMN calendar_event.month_by; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.month_by IS 'Option';


--
-- Name: COLUMN calendar_event.rrule; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.rrule IS 'Recurrent Rule';


--
-- Name: COLUMN calendar_event.duration; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.duration IS 'Duration';


--
-- Name: COLUMN calendar_event.final_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.final_date IS 'Repeat Until';


--
-- Name: COLUMN calendar_event.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.create_uid IS 'Created by';


--
-- Name: COLUMN calendar_event.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.user_id IS 'Responsible';


--
-- Name: COLUMN calendar_event.tu; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.tu IS 'Tue';


--
-- Name: COLUMN calendar_event.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN calendar_event.week_list; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.week_list IS 'Weekday';


--
-- Name: COLUMN calendar_event.day; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.day IS 'Date of month';


--
-- Name: COLUMN calendar_event.start; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.start IS 'Start';


--
-- Name: COLUMN calendar_event.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.state IS 'Status';


--
-- Name: COLUMN calendar_event.location; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.location IS 'Location';


--
-- Name: COLUMN calendar_event.th; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.th IS 'Thu';


--
-- Name: COLUMN calendar_event.start_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.start_date IS 'Start Date';


--
-- Name: COLUMN calendar_event.fr; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.fr IS 'Fri';


--
-- Name: COLUMN calendar_event.recurrent_id_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.recurrent_id_date IS 'Recurrent ID date';


--
-- Name: COLUMN calendar_event.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.description IS 'Description';


--
-- Name: COLUMN calendar_event.stop_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.stop_date IS 'End Date';


--
-- Name: COLUMN calendar_event.stop; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.stop IS 'Stop';


--
-- Name: COLUMN calendar_event.stop_datetime; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.stop_datetime IS 'End Datetime';


--
-- Name: COLUMN calendar_event.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.write_date IS 'Last Updated on';


--
-- Name: COLUMN calendar_event.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.active IS 'Active';


--
-- Name: COLUMN calendar_event.byday; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.byday IS 'By day';


--
-- Name: COLUMN calendar_event.class; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.class IS 'Privacy';


--
-- Name: COLUMN calendar_event.count; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.count IS 'Repeat';


--
-- Name: COLUMN calendar_event.end_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.end_type IS 'Recurrence Termination';


--
-- Name: COLUMN calendar_event.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.name IS 'Meeting Subject';


--
-- Name: COLUMN calendar_event.we; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.we IS 'Wed';


--
-- Name: COLUMN calendar_event.mo; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.mo IS 'Mon';


--
-- Name: COLUMN calendar_event."interval"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event."interval" IS 'Repeat Every';


--
-- Name: COLUMN calendar_event.su; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.su IS 'Sun';


--
-- Name: COLUMN calendar_event.recurrent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.recurrent_id IS 'Recurrent ID';


--
-- Name: COLUMN calendar_event.sa; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.sa IS 'Sat';


--
-- Name: COLUMN calendar_event.rrule_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.rrule_type IS 'Recurrency';


--
-- Name: COLUMN calendar_event.show_as; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.show_as IS 'Show Time as';


--
-- Name: COLUMN calendar_event.opportunity_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event.opportunity_id IS 'Opportunity';


--
-- Name: calendar_event_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE calendar_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE calendar_event_id_seq OWNER TO odoouser;

--
-- Name: calendar_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE calendar_event_id_seq OWNED BY calendar_event.id;


--
-- Name: calendar_event_res_partner_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE calendar_event_res_partner_rel (
    calendar_event_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE calendar_event_res_partner_rel OWNER TO odoouser;

--
-- Name: TABLE calendar_event_res_partner_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE calendar_event_res_partner_rel IS 'RELATION BETWEEN calendar_event AND res_partner';


--
-- Name: calendar_event_type; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE calendar_event_type (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE calendar_event_type OWNER TO odoouser;

--
-- Name: TABLE calendar_event_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE calendar_event_type IS 'Meeting Type';


--
-- Name: COLUMN calendar_event_type.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event_type.create_uid IS 'Created by';


--
-- Name: COLUMN calendar_event_type.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event_type.create_date IS 'Created on';


--
-- Name: COLUMN calendar_event_type.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event_type.name IS 'Name';


--
-- Name: COLUMN calendar_event_type.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event_type.write_uid IS 'Last Updated by';


--
-- Name: COLUMN calendar_event_type.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN calendar_event_type.write_date IS 'Last Updated on';


--
-- Name: calendar_event_type_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE calendar_event_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE calendar_event_type_id_seq OWNER TO odoouser;

--
-- Name: calendar_event_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE calendar_event_type_id_seq OWNED BY calendar_event_type.id;


--
-- Name: cash_box_in; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE cash_box_in (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    amount numeric NOT NULL,
    write_date timestamp without time zone,
    ref character varying
);


ALTER TABLE cash_box_in OWNER TO odoouser;

--
-- Name: TABLE cash_box_in; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE cash_box_in IS 'cash.box.in';


--
-- Name: COLUMN cash_box_in.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_in.create_uid IS 'Created by';


--
-- Name: COLUMN cash_box_in.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_in.create_date IS 'Created on';


--
-- Name: COLUMN cash_box_in.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_in.name IS 'Reason';


--
-- Name: COLUMN cash_box_in.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_in.write_uid IS 'Last Updated by';


--
-- Name: COLUMN cash_box_in.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_in.amount IS 'Amount';


--
-- Name: COLUMN cash_box_in.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_in.write_date IS 'Last Updated on';


--
-- Name: COLUMN cash_box_in.ref; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_in.ref IS 'Reference';


--
-- Name: cash_box_in_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE cash_box_in_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cash_box_in_id_seq OWNER TO odoouser;

--
-- Name: cash_box_in_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE cash_box_in_id_seq OWNED BY cash_box_in.id;


--
-- Name: cash_box_out; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE cash_box_out (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    amount numeric NOT NULL,
    write_date timestamp without time zone
);


ALTER TABLE cash_box_out OWNER TO odoouser;

--
-- Name: TABLE cash_box_out; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE cash_box_out IS 'cash.box.out';


--
-- Name: COLUMN cash_box_out.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_out.create_uid IS 'Created by';


--
-- Name: COLUMN cash_box_out.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_out.create_date IS 'Created on';


--
-- Name: COLUMN cash_box_out.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_out.name IS 'Reason';


--
-- Name: COLUMN cash_box_out.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_out.write_uid IS 'Last Updated by';


--
-- Name: COLUMN cash_box_out.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_out.amount IS 'Amount';


--
-- Name: COLUMN cash_box_out.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN cash_box_out.write_date IS 'Last Updated on';


--
-- Name: cash_box_out_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE cash_box_out_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cash_box_out_id_seq OWNER TO odoouser;

--
-- Name: cash_box_out_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE cash_box_out_id_seq OWNED BY cash_box_out.id;


--
-- Name: change_password_user; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE change_password_user (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    user_login character varying,
    new_passwd character varying,
    wizard_id integer NOT NULL,
    write_uid integer,
    write_date timestamp without time zone,
    user_id integer NOT NULL
);


ALTER TABLE change_password_user OWNER TO odoouser;

--
-- Name: TABLE change_password_user; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE change_password_user IS 'Change Password Wizard User';


--
-- Name: COLUMN change_password_user.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_user.create_uid IS 'Created by';


--
-- Name: COLUMN change_password_user.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_user.create_date IS 'Created on';


--
-- Name: COLUMN change_password_user.user_login; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_user.user_login IS 'User Login';


--
-- Name: COLUMN change_password_user.new_passwd; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_user.new_passwd IS 'New Password';


--
-- Name: COLUMN change_password_user.wizard_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_user.wizard_id IS 'Wizard';


--
-- Name: COLUMN change_password_user.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_user.write_uid IS 'Last Updated by';


--
-- Name: COLUMN change_password_user.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_user.write_date IS 'Last Updated on';


--
-- Name: COLUMN change_password_user.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_user.user_id IS 'User';


--
-- Name: change_password_user_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE change_password_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE change_password_user_id_seq OWNER TO odoouser;

--
-- Name: change_password_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE change_password_user_id_seq OWNED BY change_password_user.id;


--
-- Name: change_password_wizard; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE change_password_wizard (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE change_password_wizard OWNER TO odoouser;

--
-- Name: TABLE change_password_wizard; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE change_password_wizard IS 'Change Password Wizard';


--
-- Name: COLUMN change_password_wizard.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_wizard.create_uid IS 'Created by';


--
-- Name: COLUMN change_password_wizard.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_wizard.create_date IS 'Created on';


--
-- Name: COLUMN change_password_wizard.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_wizard.write_uid IS 'Last Updated by';


--
-- Name: COLUMN change_password_wizard.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN change_password_wizard.write_date IS 'Last Updated on';


--
-- Name: change_password_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE change_password_wizard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE change_password_wizard_id_seq OWNER TO odoouser;

--
-- Name: change_password_wizard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE change_password_wizard_id_seq OWNED BY change_password_wizard.id;


--
-- Name: crm_activity; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_activity (
    id integer NOT NULL,
    create_uid integer,
    days integer,
    create_date timestamp without time zone,
    sequence integer,
    activity_2_id integer,
    activity_3_id integer,
    write_uid integer,
    team_id integer,
    subtype_id integer NOT NULL,
    write_date timestamp without time zone,
    activity_1_id integer
);


ALTER TABLE crm_activity OWNER TO odoouser;

--
-- Name: TABLE crm_activity; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_activity IS 'CRM Activity';


--
-- Name: COLUMN crm_activity.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.create_uid IS 'Created by';


--
-- Name: COLUMN crm_activity.days; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.days IS 'Number of days';


--
-- Name: COLUMN crm_activity.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.create_date IS 'Created on';


--
-- Name: COLUMN crm_activity.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.sequence IS 'Sequence';


--
-- Name: COLUMN crm_activity.activity_2_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.activity_2_id IS 'Next Activity 2';


--
-- Name: COLUMN crm_activity.activity_3_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.activity_3_id IS 'Next Activity 3';


--
-- Name: COLUMN crm_activity.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.write_uid IS 'Last Updated by';


--
-- Name: COLUMN crm_activity.team_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.team_id IS 'Sales Team';


--
-- Name: COLUMN crm_activity.subtype_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.subtype_id IS 'Message Subtype';


--
-- Name: COLUMN crm_activity.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.write_date IS 'Last Updated on';


--
-- Name: COLUMN crm_activity.activity_1_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_activity.activity_1_id IS 'Next Activity 1';


--
-- Name: crm_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_activity_id_seq OWNER TO odoouser;

--
-- Name: crm_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_activity_id_seq OWNED BY crm_activity.id;


--
-- Name: crm_lead; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_lead (
    id integer NOT NULL,
    create_date timestamp without time zone,
    write_uid integer,
    partner_id integer,
    create_uid integer,
    write_date timestamp without time zone,
    date_closed timestamp without time zone,
    probability double precision,
    color integer,
    date_last_stage_update timestamp without time zone,
    date_action_last timestamp without time zone,
    campaign_id integer,
    day_close numeric,
    team_id integer,
    street character varying,
    day_open numeric,
    contact_name character varying(64),
    date_action_next timestamp without time zone,
    city character varying,
    date_conversion timestamp without time zone,
    opt_out boolean,
    zip character varying(24),
    title integer,
    partner_name character varying(64),
    planned_revenue double precision,
    message_last_post timestamp without time zone,
    company_id integer,
    priority character varying,
    next_activity_id integer,
    email_cc text,
    type character varying NOT NULL,
    function character varying,
    fax character varying,
    description text,
    street2 character varying,
    title_action character varying,
    phone character varying,
    country_id integer,
    lost_reason integer,
    state_id integer,
    active boolean,
    user_id integer,
    date_action date,
    message_bounce integer,
    name character varying NOT NULL,
    stage_id integer,
    date_open timestamp without time zone,
    date_deadline date,
    mobile character varying,
    last_activity_id integer,
    medium_id integer,
    source_id integer,
    referred character varying,
    email_from character varying(128),
    CONSTRAINT crm_lead_check_probability CHECK (((probability >= (0)::double precision) AND (probability <= (100)::double precision)))
);


ALTER TABLE crm_lead OWNER TO odoouser;

--
-- Name: TABLE crm_lead; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_lead IS 'Lead/Opportunity';


--
-- Name: COLUMN crm_lead.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.create_date IS 'Creation Date';


--
-- Name: COLUMN crm_lead.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.write_uid IS 'Last Updated by';


--
-- Name: COLUMN crm_lead.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.partner_id IS 'Partner';


--
-- Name: COLUMN crm_lead.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.create_uid IS 'Created by';


--
-- Name: COLUMN crm_lead.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.write_date IS 'Update Date';


--
-- Name: COLUMN crm_lead.date_closed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.date_closed IS 'Closed';


--
-- Name: COLUMN crm_lead.probability; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.probability IS 'Probability';


--
-- Name: COLUMN crm_lead.color; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.color IS 'Color Index';


--
-- Name: COLUMN crm_lead.date_last_stage_update; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.date_last_stage_update IS 'Last Stage Update';


--
-- Name: COLUMN crm_lead.date_action_last; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.date_action_last IS 'Last Action';


--
-- Name: COLUMN crm_lead.campaign_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.campaign_id IS 'Campaign';


--
-- Name: COLUMN crm_lead.day_close; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.day_close IS 'Days to Close';


--
-- Name: COLUMN crm_lead.team_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.team_id IS 'Sales Team';


--
-- Name: COLUMN crm_lead.street; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.street IS 'Street';


--
-- Name: COLUMN crm_lead.day_open; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.day_open IS 'Days to Assign';


--
-- Name: COLUMN crm_lead.contact_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.contact_name IS 'Contact Name';


--
-- Name: COLUMN crm_lead.date_action_next; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.date_action_next IS 'Next Action';


--
-- Name: COLUMN crm_lead.city; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.city IS 'City';


--
-- Name: COLUMN crm_lead.date_conversion; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.date_conversion IS 'Conversion Date';


--
-- Name: COLUMN crm_lead.opt_out; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.opt_out IS 'Opt-Out';


--
-- Name: COLUMN crm_lead.zip; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.zip IS 'Zip';


--
-- Name: COLUMN crm_lead.title; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.title IS 'Title';


--
-- Name: COLUMN crm_lead.partner_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.partner_name IS 'Customer Name';


--
-- Name: COLUMN crm_lead.planned_revenue; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.planned_revenue IS 'Expected Revenue';


--
-- Name: COLUMN crm_lead.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN crm_lead.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.company_id IS 'Company';


--
-- Name: COLUMN crm_lead.priority; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.priority IS 'Rating';


--
-- Name: COLUMN crm_lead.next_activity_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.next_activity_id IS 'Next Activity';


--
-- Name: COLUMN crm_lead.email_cc; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.email_cc IS 'Global CC';


--
-- Name: COLUMN crm_lead.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.type IS 'Type';


--
-- Name: COLUMN crm_lead.function; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.function IS 'Function';


--
-- Name: COLUMN crm_lead.fax; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.fax IS 'Fax';


--
-- Name: COLUMN crm_lead.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.description IS 'Notes';


--
-- Name: COLUMN crm_lead.street2; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.street2 IS 'Street2';


--
-- Name: COLUMN crm_lead.title_action; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.title_action IS 'Next Activity Summary';


--
-- Name: COLUMN crm_lead.phone; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.phone IS 'Phone';


--
-- Name: COLUMN crm_lead.country_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.country_id IS 'Country';


--
-- Name: COLUMN crm_lead.lost_reason; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.lost_reason IS 'Lost Reason';


--
-- Name: COLUMN crm_lead.state_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.state_id IS 'State';


--
-- Name: COLUMN crm_lead.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.active IS 'Active';


--
-- Name: COLUMN crm_lead.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.user_id IS 'Salesperson';


--
-- Name: COLUMN crm_lead.date_action; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.date_action IS 'Next Activity Date';


--
-- Name: COLUMN crm_lead.message_bounce; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.message_bounce IS 'Bounce';


--
-- Name: COLUMN crm_lead.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.name IS 'Opportunity';


--
-- Name: COLUMN crm_lead.stage_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.stage_id IS 'Stage';


--
-- Name: COLUMN crm_lead.date_open; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.date_open IS 'Assigned';


--
-- Name: COLUMN crm_lead.date_deadline; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.date_deadline IS 'Expected Closing';


--
-- Name: COLUMN crm_lead.mobile; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.mobile IS 'Mobile';


--
-- Name: COLUMN crm_lead.last_activity_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.last_activity_id IS 'Last Activity';


--
-- Name: COLUMN crm_lead.medium_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.medium_id IS 'Medium';


--
-- Name: COLUMN crm_lead.source_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.source_id IS 'Source';


--
-- Name: COLUMN crm_lead.referred; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.referred IS 'Referred By';


--
-- Name: COLUMN crm_lead.email_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead.email_from IS 'Email';


--
-- Name: mail_message; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_message (
    id integer NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    mail_server_id integer,
    write_uid integer,
    subject character varying,
    create_uid integer,
    parent_id integer,
    subtype_id integer,
    res_id integer,
    message_id character varying,
    body text,
    record_name character varying,
    no_auto_thread boolean,
    date timestamp without time zone,
    model character varying,
    reply_to character varying,
    author_id integer,
    message_type character varying NOT NULL,
    email_from character varying,
    website_published boolean
);


ALTER TABLE mail_message OWNER TO odoouser;

--
-- Name: TABLE mail_message; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_message IS 'Message';


--
-- Name: COLUMN mail_message.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.create_date IS 'Created on';


--
-- Name: COLUMN mail_message.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_message.mail_server_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.mail_server_id IS 'Outgoing mail server';


--
-- Name: COLUMN mail_message.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_message.subject; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.subject IS 'Subject';


--
-- Name: COLUMN mail_message.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.create_uid IS 'Created by';


--
-- Name: COLUMN mail_message.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.parent_id IS 'Parent Message';


--
-- Name: COLUMN mail_message.subtype_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.subtype_id IS 'Subtype';


--
-- Name: COLUMN mail_message.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.res_id IS 'Related Document ID';


--
-- Name: COLUMN mail_message.message_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.message_id IS 'Message-Id';


--
-- Name: COLUMN mail_message.body; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.body IS 'Contents';


--
-- Name: COLUMN mail_message.record_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.record_name IS 'Message Record Name';


--
-- Name: COLUMN mail_message.no_auto_thread; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.no_auto_thread IS 'No threading for answers';


--
-- Name: COLUMN mail_message.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.date IS 'Date';


--
-- Name: COLUMN mail_message.model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.model IS 'Related Document Model';


--
-- Name: COLUMN mail_message.reply_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.reply_to IS 'Reply-To';


--
-- Name: COLUMN mail_message.author_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.author_id IS 'Author';


--
-- Name: COLUMN mail_message.message_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.message_type IS 'Type';


--
-- Name: COLUMN mail_message.email_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.email_from IS 'From';


--
-- Name: COLUMN mail_message.website_published; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message.website_published IS 'Published';


--
-- Name: crm_activity_report; Type: VIEW; Schema: public; Owner: odoouser
--

CREATE VIEW crm_activity_report AS
 SELECT m.id,
    m.subtype_id,
    m.author_id,
    m.date,
    l.user_id,
    l.team_id,
    l.country_id,
    l.company_id,
    l.stage_id,
    l.partner_id,
    l.type AS lead_type
   FROM (mail_message m
     JOIN crm_lead l ON ((m.res_id = l.id)))
  WHERE ((m.model)::text = 'crm.lead'::text);


ALTER TABLE crm_activity_report OWNER TO odoouser;

--
-- Name: crm_lead2opportunity_partner; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_lead2opportunity_partner (
    id integer NOT NULL,
    create_uid integer,
    user_id integer,
    name character varying NOT NULL,
    team_id integer,
    write_date timestamp without time zone,
    action character varying NOT NULL,
    create_date timestamp without time zone,
    write_uid integer,
    partner_id integer
);


ALTER TABLE crm_lead2opportunity_partner OWNER TO odoouser;

--
-- Name: TABLE crm_lead2opportunity_partner; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_lead2opportunity_partner IS 'Lead To Opportunity Partner';


--
-- Name: COLUMN crm_lead2opportunity_partner.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner.create_uid IS 'Created by';


--
-- Name: COLUMN crm_lead2opportunity_partner.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner.user_id IS 'Salesperson';


--
-- Name: COLUMN crm_lead2opportunity_partner.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner.name IS 'Conversion Action';


--
-- Name: COLUMN crm_lead2opportunity_partner.team_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner.team_id IS 'Sales Team';


--
-- Name: COLUMN crm_lead2opportunity_partner.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner.write_date IS 'Last Updated on';


--
-- Name: COLUMN crm_lead2opportunity_partner.action; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner.action IS 'Related Customer';


--
-- Name: COLUMN crm_lead2opportunity_partner.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner.create_date IS 'Created on';


--
-- Name: COLUMN crm_lead2opportunity_partner.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner.write_uid IS 'Last Updated by';


--
-- Name: COLUMN crm_lead2opportunity_partner.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner.partner_id IS 'Customer';


--
-- Name: crm_lead2opportunity_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_lead2opportunity_partner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_lead2opportunity_partner_id_seq OWNER TO odoouser;

--
-- Name: crm_lead2opportunity_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_lead2opportunity_partner_id_seq OWNED BY crm_lead2opportunity_partner.id;


--
-- Name: crm_lead2opportunity_partner_mass; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_lead2opportunity_partner_mass (
    id integer NOT NULL,
    create_uid integer,
    user_id integer,
    name character varying NOT NULL,
    force_assignation boolean,
    deduplicate boolean,
    team_id integer,
    write_date timestamp without time zone,
    action character varying NOT NULL,
    create_date timestamp without time zone,
    write_uid integer,
    partner_id integer
);


ALTER TABLE crm_lead2opportunity_partner_mass OWNER TO odoouser;

--
-- Name: TABLE crm_lead2opportunity_partner_mass; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_lead2opportunity_partner_mass IS 'Mass Lead To Opportunity Partner';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.create_uid IS 'Created by';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.user_id IS 'Salesperson';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.name IS 'Conversion Action';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.force_assignation; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.force_assignation IS 'Force assignation';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.deduplicate; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.deduplicate IS 'Apply deduplication';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.team_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.team_id IS 'Sales Team';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.write_date IS 'Last Updated on';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.action; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.action IS 'Related Customer';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.create_date IS 'Created on';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.write_uid IS 'Last Updated by';


--
-- Name: COLUMN crm_lead2opportunity_partner_mass.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead2opportunity_partner_mass.partner_id IS 'Customer';


--
-- Name: crm_lead2opportunity_partner_mass_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_lead2opportunity_partner_mass_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_lead2opportunity_partner_mass_id_seq OWNER TO odoouser;

--
-- Name: crm_lead2opportunity_partner_mass_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_lead2opportunity_partner_mass_id_seq OWNED BY crm_lead2opportunity_partner_mass.id;


--
-- Name: crm_lead2opportunity_partner_mass_res_users_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_lead2opportunity_partner_mass_res_users_rel (
    crm_lead2opportunity_partner_mass_id integer NOT NULL,
    res_users_id integer NOT NULL
);


ALTER TABLE crm_lead2opportunity_partner_mass_res_users_rel OWNER TO odoouser;

--
-- Name: TABLE crm_lead2opportunity_partner_mass_res_users_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_lead2opportunity_partner_mass_res_users_rel IS 'RELATION BETWEEN crm_lead2opportunity_partner_mass AND res_users';


--
-- Name: crm_lead_crm_lead2opportunity_partner_mass_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_lead_crm_lead2opportunity_partner_mass_rel (
    crm_lead2opportunity_partner_mass_id integer NOT NULL,
    crm_lead_id integer NOT NULL
);


ALTER TABLE crm_lead_crm_lead2opportunity_partner_mass_rel OWNER TO odoouser;

--
-- Name: TABLE crm_lead_crm_lead2opportunity_partner_mass_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_lead_crm_lead2opportunity_partner_mass_rel IS 'RELATION BETWEEN crm_lead2opportunity_partner_mass AND crm_lead';


--
-- Name: crm_lead_crm_lead2opportunity_partner_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_lead_crm_lead2opportunity_partner_rel (
    crm_lead2opportunity_partner_id integer NOT NULL,
    crm_lead_id integer NOT NULL
);


ALTER TABLE crm_lead_crm_lead2opportunity_partner_rel OWNER TO odoouser;

--
-- Name: TABLE crm_lead_crm_lead2opportunity_partner_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_lead_crm_lead2opportunity_partner_rel IS 'RELATION BETWEEN crm_lead2opportunity_partner AND crm_lead';


--
-- Name: crm_lead_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_lead_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_lead_id_seq OWNER TO odoouser;

--
-- Name: crm_lead_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_lead_id_seq OWNED BY crm_lead.id;


--
-- Name: crm_lead_lost; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_lead_lost (
    id integer NOT NULL,
    lost_reason_id integer,
    create_date timestamp without time zone,
    lead_id integer NOT NULL,
    create_uid integer,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE crm_lead_lost OWNER TO odoouser;

--
-- Name: TABLE crm_lead_lost; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_lead_lost IS 'Get Lost Reason';


--
-- Name: COLUMN crm_lead_lost.lost_reason_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_lost.lost_reason_id IS 'Lost Reason';


--
-- Name: COLUMN crm_lead_lost.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_lost.create_date IS 'Created on';


--
-- Name: COLUMN crm_lead_lost.lead_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_lost.lead_id IS 'Lead';


--
-- Name: COLUMN crm_lead_lost.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_lost.create_uid IS 'Created by';


--
-- Name: COLUMN crm_lead_lost.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_lost.write_uid IS 'Last Updated by';


--
-- Name: COLUMN crm_lead_lost.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_lost.write_date IS 'Last Updated on';


--
-- Name: crm_lead_lost_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_lead_lost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_lead_lost_id_seq OWNER TO odoouser;

--
-- Name: crm_lead_lost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_lead_lost_id_seq OWNED BY crm_lead_lost.id;


--
-- Name: crm_lead_tag; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_lead_tag (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    color integer,
    write_uid integer,
    team_id integer,
    write_date timestamp without time zone
);


ALTER TABLE crm_lead_tag OWNER TO odoouser;

--
-- Name: TABLE crm_lead_tag; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_lead_tag IS 'Category of lead';


--
-- Name: COLUMN crm_lead_tag.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_tag.create_uid IS 'Created by';


--
-- Name: COLUMN crm_lead_tag.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_tag.create_date IS 'Created on';


--
-- Name: COLUMN crm_lead_tag.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_tag.name IS 'Name';


--
-- Name: COLUMN crm_lead_tag.color; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_tag.color IS 'Color Index';


--
-- Name: COLUMN crm_lead_tag.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_tag.write_uid IS 'Last Updated by';


--
-- Name: COLUMN crm_lead_tag.team_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_tag.team_id IS 'Sales Team';


--
-- Name: COLUMN crm_lead_tag.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lead_tag.write_date IS 'Last Updated on';


--
-- Name: crm_lead_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_lead_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_lead_tag_id_seq OWNER TO odoouser;

--
-- Name: crm_lead_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_lead_tag_id_seq OWNED BY crm_lead_tag.id;


--
-- Name: crm_lead_tag_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_lead_tag_rel (
    lead_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE crm_lead_tag_rel OWNER TO odoouser;

--
-- Name: TABLE crm_lead_tag_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_lead_tag_rel IS 'RELATION BETWEEN crm_lead AND crm_lead_tag';


--
-- Name: crm_lost_reason; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_lost_reason (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE crm_lost_reason OWNER TO odoouser;

--
-- Name: TABLE crm_lost_reason; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_lost_reason IS 'Reason for loosing leads';


--
-- Name: COLUMN crm_lost_reason.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lost_reason.create_uid IS 'Created by';


--
-- Name: COLUMN crm_lost_reason.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lost_reason.create_date IS 'Created on';


--
-- Name: COLUMN crm_lost_reason.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lost_reason.name IS 'Name';


--
-- Name: COLUMN crm_lost_reason.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lost_reason.write_uid IS 'Last Updated by';


--
-- Name: COLUMN crm_lost_reason.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lost_reason.write_date IS 'Last Updated on';


--
-- Name: COLUMN crm_lost_reason.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_lost_reason.active IS 'Active';


--
-- Name: crm_lost_reason_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_lost_reason_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_lost_reason_id_seq OWNER TO odoouser;

--
-- Name: crm_lost_reason_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_lost_reason_id_seq OWNED BY crm_lost_reason.id;


--
-- Name: crm_merge_opportunity; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_merge_opportunity (
    id integer NOT NULL,
    create_uid integer,
    user_id integer,
    team_id integer,
    write_date timestamp without time zone,
    create_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE crm_merge_opportunity OWNER TO odoouser;

--
-- Name: TABLE crm_merge_opportunity; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_merge_opportunity IS 'Merge opportunities';


--
-- Name: COLUMN crm_merge_opportunity.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_merge_opportunity.create_uid IS 'Created by';


--
-- Name: COLUMN crm_merge_opportunity.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_merge_opportunity.user_id IS 'Salesperson';


--
-- Name: COLUMN crm_merge_opportunity.team_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_merge_opportunity.team_id IS 'Sales Team';


--
-- Name: COLUMN crm_merge_opportunity.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_merge_opportunity.write_date IS 'Last Updated on';


--
-- Name: COLUMN crm_merge_opportunity.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_merge_opportunity.create_date IS 'Created on';


--
-- Name: COLUMN crm_merge_opportunity.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_merge_opportunity.write_uid IS 'Last Updated by';


--
-- Name: crm_merge_opportunity_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_merge_opportunity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_merge_opportunity_id_seq OWNER TO odoouser;

--
-- Name: crm_merge_opportunity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_merge_opportunity_id_seq OWNED BY crm_merge_opportunity.id;


--
-- Name: crm_opportunity_report; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_opportunity_report (
    id integer,
    date_deadline date,
    opening_date timestamp without time zone,
    date_closed timestamp without time zone,
    date_last_stage_update timestamp without time zone,
    user_id integer,
    probability double precision,
    stage_id integer,
    stage_name character varying,
    type character varying,
    company_id integer,
    priority character varying,
    team_id integer,
    nbr_activities bigint,
    active boolean,
    campaign_id integer,
    source_id integer,
    medium_id integer,
    partner_id integer,
    country_id integer,
    total_revenue double precision,
    expected_revenue double precision,
    create_date timestamp without time zone,
    delay_close double precision,
    delay_expected double precision,
    delay_open double precision,
    lost_reason integer,
    date_conversion timestamp without time zone
);

ALTER TABLE ONLY crm_opportunity_report REPLICA IDENTITY NOTHING;


ALTER TABLE crm_opportunity_report OWNER TO odoouser;

--
-- Name: crm_partner_binding; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_partner_binding (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    action character varying NOT NULL,
    partner_id integer
);


ALTER TABLE crm_partner_binding OWNER TO odoouser;

--
-- Name: TABLE crm_partner_binding; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_partner_binding IS 'Handle partner binding or generation in CRM wizards.';


--
-- Name: COLUMN crm_partner_binding.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_partner_binding.create_uid IS 'Created by';


--
-- Name: COLUMN crm_partner_binding.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_partner_binding.create_date IS 'Created on';


--
-- Name: COLUMN crm_partner_binding.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_partner_binding.write_uid IS 'Last Updated by';


--
-- Name: COLUMN crm_partner_binding.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_partner_binding.write_date IS 'Last Updated on';


--
-- Name: COLUMN crm_partner_binding.action; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_partner_binding.action IS 'Related Customer';


--
-- Name: COLUMN crm_partner_binding.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_partner_binding.partner_id IS 'Customer';


--
-- Name: crm_partner_binding_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_partner_binding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_partner_binding_id_seq OWNER TO odoouser;

--
-- Name: crm_partner_binding_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_partner_binding_id_seq OWNED BY crm_partner_binding.id;


--
-- Name: crm_stage; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_stage (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    probability double precision NOT NULL,
    sequence integer,
    on_change boolean,
    write_uid integer,
    fold boolean,
    legend_priority text,
    write_date timestamp without time zone,
    requirements text,
    type character varying NOT NULL
);


ALTER TABLE crm_stage OWNER TO odoouser;

--
-- Name: TABLE crm_stage; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_stage IS 'Stage of case';


--
-- Name: COLUMN crm_stage.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.create_uid IS 'Created by';


--
-- Name: COLUMN crm_stage.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.create_date IS 'Created on';


--
-- Name: COLUMN crm_stage.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.name IS 'Stage Name';


--
-- Name: COLUMN crm_stage.probability; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.probability IS 'Probability (%)';


--
-- Name: COLUMN crm_stage.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.sequence IS 'Sequence';


--
-- Name: COLUMN crm_stage.on_change; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.on_change IS 'Change Probability Automatically';


--
-- Name: COLUMN crm_stage.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.write_uid IS 'Last Updated by';


--
-- Name: COLUMN crm_stage.fold; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.fold IS 'Folded in Pipeline';


--
-- Name: COLUMN crm_stage.legend_priority; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.legend_priority IS 'Priority Management Explanation';


--
-- Name: COLUMN crm_stage.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.write_date IS 'Last Updated on';


--
-- Name: COLUMN crm_stage.requirements; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.requirements IS 'Requirements';


--
-- Name: COLUMN crm_stage.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_stage.type IS 'Type';


--
-- Name: crm_stage_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_stage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_stage_id_seq OWNER TO odoouser;

--
-- Name: crm_stage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_stage_id_seq OWNED BY crm_stage.id;


--
-- Name: crm_team; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_team (
    id integer NOT NULL,
    code character varying(8),
    working_hours numeric,
    name character varying(64) NOT NULL,
    create_uid integer,
    color integer,
    message_last_post timestamp without time zone,
    user_id integer,
    company_id integer,
    write_uid integer,
    active boolean,
    reply_to character varying(64),
    write_date timestamp without time zone,
    create_date timestamp without time zone,
    use_quotations boolean,
    invoiced_target integer,
    use_invoices boolean,
    alias_id integer NOT NULL,
    use_leads boolean,
    use_opportunities boolean,
    resource_calendar_id integer
);


ALTER TABLE crm_team OWNER TO odoouser;

--
-- Name: TABLE crm_team; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_team IS 'Sales Team';


--
-- Name: COLUMN crm_team.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.code IS 'Code';


--
-- Name: COLUMN crm_team.working_hours; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.working_hours IS 'Working Hours';


--
-- Name: COLUMN crm_team.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.name IS 'Sales Team';


--
-- Name: COLUMN crm_team.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.create_uid IS 'Created by';


--
-- Name: COLUMN crm_team.color; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.color IS 'Color Index';


--
-- Name: COLUMN crm_team.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN crm_team.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.user_id IS 'Team Leader';


--
-- Name: COLUMN crm_team.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.company_id IS 'Company';


--
-- Name: COLUMN crm_team.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.write_uid IS 'Last Updated by';


--
-- Name: COLUMN crm_team.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.active IS 'Active';


--
-- Name: COLUMN crm_team.reply_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.reply_to IS 'Reply-To';


--
-- Name: COLUMN crm_team.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.write_date IS 'Last Updated on';


--
-- Name: COLUMN crm_team.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.create_date IS 'Created on';


--
-- Name: COLUMN crm_team.use_quotations; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.use_quotations IS 'Quotations';


--
-- Name: COLUMN crm_team.invoiced_target; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.invoiced_target IS 'Invoice Target';


--
-- Name: COLUMN crm_team.use_invoices; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.use_invoices IS 'Invoices';


--
-- Name: COLUMN crm_team.alias_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.alias_id IS 'Alias';


--
-- Name: COLUMN crm_team.use_leads; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.use_leads IS 'Leads';


--
-- Name: COLUMN crm_team.use_opportunities; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.use_opportunities IS 'Opportunities';


--
-- Name: COLUMN crm_team.resource_calendar_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN crm_team.resource_calendar_id IS 'Working Time';


--
-- Name: crm_team_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE crm_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crm_team_id_seq OWNER TO odoouser;

--
-- Name: crm_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE crm_team_id_seq OWNED BY crm_team.id;


--
-- Name: crm_team_stage_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE crm_team_stage_rel (
    stage_id integer NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE crm_team_stage_rel OWNER TO odoouser;

--
-- Name: TABLE crm_team_stage_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE crm_team_stage_rel IS 'RELATION BETWEEN crm_stage AND crm_team';


--
-- Name: decimal_precision; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE decimal_precision (
    id integer NOT NULL,
    digits integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE decimal_precision OWNER TO odoouser;

--
-- Name: TABLE decimal_precision; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE decimal_precision IS 'decimal.precision';


--
-- Name: COLUMN decimal_precision.digits; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision.digits IS 'Digits';


--
-- Name: COLUMN decimal_precision.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision.create_uid IS 'Created by';


--
-- Name: COLUMN decimal_precision.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision.create_date IS 'Created on';


--
-- Name: COLUMN decimal_precision.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision.name IS 'Usage';


--
-- Name: COLUMN decimal_precision.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision.write_uid IS 'Last Updated by';


--
-- Name: COLUMN decimal_precision.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision.write_date IS 'Last Updated on';


--
-- Name: decimal_precision_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE decimal_precision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decimal_precision_id_seq OWNER TO odoouser;

--
-- Name: decimal_precision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE decimal_precision_id_seq OWNED BY decimal_precision.id;


--
-- Name: decimal_precision_test; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE decimal_precision_test (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    float_2 numeric,
    "float" double precision,
    float_4 numeric,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE decimal_precision_test OWNER TO odoouser;

--
-- Name: TABLE decimal_precision_test; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE decimal_precision_test IS 'decimal.precision.test';


--
-- Name: COLUMN decimal_precision_test.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision_test.create_uid IS 'Created by';


--
-- Name: COLUMN decimal_precision_test.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision_test.create_date IS 'Created on';


--
-- Name: COLUMN decimal_precision_test.float_2; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision_test.float_2 IS 'unknown';


--
-- Name: COLUMN decimal_precision_test."float"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision_test."float" IS 'unknown';


--
-- Name: COLUMN decimal_precision_test.float_4; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision_test.float_4 IS 'unknown';


--
-- Name: COLUMN decimal_precision_test.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision_test.write_uid IS 'Last Updated by';


--
-- Name: COLUMN decimal_precision_test.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN decimal_precision_test.write_date IS 'Last Updated on';


--
-- Name: decimal_precision_test_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE decimal_precision_test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE decimal_precision_test_id_seq OWNER TO odoouser;

--
-- Name: decimal_precision_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE decimal_precision_test_id_seq OWNED BY decimal_precision_test.id;


--
-- Name: email_template_attachment_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE email_template_attachment_rel (
    email_template_id integer NOT NULL,
    attachment_id integer NOT NULL
);


ALTER TABLE email_template_attachment_rel OWNER TO odoouser;

--
-- Name: TABLE email_template_attachment_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE email_template_attachment_rel IS 'RELATION BETWEEN mail_template AND ir_attachment';


--
-- Name: email_template_preview; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE email_template_preview (
    id integer NOT NULL,
    create_date timestamp without time zone,
    sub_object integer,
    auto_delete boolean,
    mail_server_id integer,
    write_uid integer,
    partner_to character varying,
    ref_ir_act_window integer,
    subject character varying,
    create_uid integer,
    report_template integer,
    ref_ir_value integer,
    user_signature boolean,
    null_value character varying,
    email_cc character varying,
    res_id character varying,
    model_id integer,
    sub_model_object_field integer,
    body_html text,
    email_to character varying,
    write_date timestamp without time zone,
    copyvalue character varying,
    lang character varying,
    name character varying,
    model_object_field integer,
    report_name character varying,
    use_default_to boolean,
    reply_to character varying,
    model character varying,
    email_from character varying
);


ALTER TABLE email_template_preview OWNER TO odoouser;

--
-- Name: TABLE email_template_preview; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE email_template_preview IS 'Email Template Preview';


--
-- Name: COLUMN email_template_preview.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.create_date IS 'Created on';


--
-- Name: COLUMN email_template_preview.sub_object; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.sub_object IS 'Sub-model';


--
-- Name: COLUMN email_template_preview.auto_delete; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.auto_delete IS 'Auto Delete';


--
-- Name: COLUMN email_template_preview.mail_server_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.mail_server_id IS 'Outgoing Mail Server';


--
-- Name: COLUMN email_template_preview.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.write_uid IS 'Last Updated by';


--
-- Name: COLUMN email_template_preview.partner_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.partner_to IS 'To (Partners)';


--
-- Name: COLUMN email_template_preview.ref_ir_act_window; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.ref_ir_act_window IS 'Sidebar action';


--
-- Name: COLUMN email_template_preview.subject; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.subject IS 'Subject';


--
-- Name: COLUMN email_template_preview.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.create_uid IS 'Created by';


--
-- Name: COLUMN email_template_preview.report_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.report_template IS 'Optional report to print and attach';


--
-- Name: COLUMN email_template_preview.ref_ir_value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.ref_ir_value IS 'Sidebar Button';


--
-- Name: COLUMN email_template_preview.user_signature; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.user_signature IS 'Add Signature';


--
-- Name: COLUMN email_template_preview.null_value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.null_value IS 'Default Value';


--
-- Name: COLUMN email_template_preview.email_cc; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.email_cc IS 'Cc';


--
-- Name: COLUMN email_template_preview.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.res_id IS 'Sample Document';


--
-- Name: COLUMN email_template_preview.model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.model_id IS 'Applies to';


--
-- Name: COLUMN email_template_preview.sub_model_object_field; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.sub_model_object_field IS 'Sub-field';


--
-- Name: COLUMN email_template_preview.body_html; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.body_html IS 'Body';


--
-- Name: COLUMN email_template_preview.email_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.email_to IS 'To (Emails)';


--
-- Name: COLUMN email_template_preview.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.write_date IS 'Last Updated on';


--
-- Name: COLUMN email_template_preview.copyvalue; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.copyvalue IS 'Placeholder Expression';


--
-- Name: COLUMN email_template_preview.lang; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.lang IS 'Language';


--
-- Name: COLUMN email_template_preview.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.name IS 'Name';


--
-- Name: COLUMN email_template_preview.model_object_field; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.model_object_field IS 'Field';


--
-- Name: COLUMN email_template_preview.report_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.report_name IS 'Report Filename';


--
-- Name: COLUMN email_template_preview.use_default_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.use_default_to IS 'Default recipients';


--
-- Name: COLUMN email_template_preview.reply_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.reply_to IS 'Reply-To';


--
-- Name: COLUMN email_template_preview.model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.model IS 'Related Document Model';


--
-- Name: COLUMN email_template_preview.email_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN email_template_preview.email_from IS 'From';


--
-- Name: email_template_preview_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE email_template_preview_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE email_template_preview_id_seq OWNER TO odoouser;

--
-- Name: email_template_preview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE email_template_preview_id_seq OWNED BY email_template_preview.id;


--
-- Name: email_template_preview_res_partner_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE email_template_preview_res_partner_rel (
    email_template_preview_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE email_template_preview_res_partner_rel OWNER TO odoouser;

--
-- Name: TABLE email_template_preview_res_partner_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE email_template_preview_res_partner_rel IS 'RELATION BETWEEN email_template_preview AND res_partner';


--
-- Name: fetchmail_config_settings; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE fetchmail_config_settings (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE fetchmail_config_settings OWNER TO odoouser;

--
-- Name: TABLE fetchmail_config_settings; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE fetchmail_config_settings IS 'fetchmail.config.settings';


--
-- Name: COLUMN fetchmail_config_settings.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_config_settings.create_uid IS 'Created by';


--
-- Name: COLUMN fetchmail_config_settings.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_config_settings.create_date IS 'Created on';


--
-- Name: COLUMN fetchmail_config_settings.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_config_settings.write_date IS 'Last Updated on';


--
-- Name: COLUMN fetchmail_config_settings.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_config_settings.write_uid IS 'Last Updated by';


--
-- Name: fetchmail_config_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE fetchmail_config_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fetchmail_config_settings_id_seq OWNER TO odoouser;

--
-- Name: fetchmail_config_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE fetchmail_config_settings_id_seq OWNED BY fetchmail_config_settings.id;


--
-- Name: fetchmail_server; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE fetchmail_server (
    id integer NOT NULL,
    create_date timestamp without time zone,
    write_uid integer,
    active boolean,
    port integer,
    create_uid integer,
    configuration text,
    script character varying,
    object_id integer,
    priority integer,
    attach boolean,
    state character varying,
    type character varying NOT NULL,
    action_id integer,
    "user" character varying,
    write_date timestamp without time zone,
    date timestamp without time zone,
    password character varying,
    name character varying NOT NULL,
    is_ssl boolean,
    server character varying,
    original boolean
);


ALTER TABLE fetchmail_server OWNER TO odoouser;

--
-- Name: TABLE fetchmail_server; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE fetchmail_server IS 'POP/IMAP Server';


--
-- Name: COLUMN fetchmail_server.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.create_date IS 'Created on';


--
-- Name: COLUMN fetchmail_server.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.write_uid IS 'Last Updated by';


--
-- Name: COLUMN fetchmail_server.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.active IS 'Active';


--
-- Name: COLUMN fetchmail_server.port; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.port IS 'Port';


--
-- Name: COLUMN fetchmail_server.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.create_uid IS 'Created by';


--
-- Name: COLUMN fetchmail_server.configuration; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.configuration IS 'Configuration';


--
-- Name: COLUMN fetchmail_server.script; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.script IS 'Script';


--
-- Name: COLUMN fetchmail_server.object_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.object_id IS 'Create a New Record';


--
-- Name: COLUMN fetchmail_server.priority; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.priority IS 'Server Priority';


--
-- Name: COLUMN fetchmail_server.attach; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.attach IS 'Keep Attachments';


--
-- Name: COLUMN fetchmail_server.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.state IS 'Status';


--
-- Name: COLUMN fetchmail_server.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.type IS 'Server Type';


--
-- Name: COLUMN fetchmail_server.action_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.action_id IS 'Server Action';


--
-- Name: COLUMN fetchmail_server."user"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server."user" IS 'Username';


--
-- Name: COLUMN fetchmail_server.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.write_date IS 'Last Updated on';


--
-- Name: COLUMN fetchmail_server.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.date IS 'Last Fetch Date';


--
-- Name: COLUMN fetchmail_server.password; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.password IS 'Password';


--
-- Name: COLUMN fetchmail_server.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.name IS 'Name';


--
-- Name: COLUMN fetchmail_server.is_ssl; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.is_ssl IS 'SSL/TLS';


--
-- Name: COLUMN fetchmail_server.server; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.server IS 'Server Name';


--
-- Name: COLUMN fetchmail_server.original; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN fetchmail_server.original IS 'Keep Original';


--
-- Name: fetchmail_server_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE fetchmail_server_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fetchmail_server_id_seq OWNER TO odoouser;

--
-- Name: fetchmail_server_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE fetchmail_server_id_seq OWNED BY fetchmail_server.id;


--
-- Name: im_livechat_channel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE im_livechat_channel (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    default_message character varying,
    input_placeholder character varying,
    button_text character varying,
    write_uid integer,
    write_date timestamp without time zone,
    website_description text,
    website_published boolean
);


ALTER TABLE im_livechat_channel OWNER TO odoouser;

--
-- Name: TABLE im_livechat_channel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE im_livechat_channel IS 'Livechat Channel';


--
-- Name: COLUMN im_livechat_channel.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel.create_uid IS 'Created by';


--
-- Name: COLUMN im_livechat_channel.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel.create_date IS 'Created on';


--
-- Name: COLUMN im_livechat_channel.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel.name IS 'Name';


--
-- Name: COLUMN im_livechat_channel.default_message; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel.default_message IS 'Welcome Message';


--
-- Name: COLUMN im_livechat_channel.input_placeholder; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel.input_placeholder IS 'Chat Input Placeholder';


--
-- Name: COLUMN im_livechat_channel.button_text; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel.button_text IS 'Text of the Button';


--
-- Name: COLUMN im_livechat_channel.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel.write_uid IS 'Last Updated by';


--
-- Name: COLUMN im_livechat_channel.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel.write_date IS 'Last Updated on';


--
-- Name: COLUMN im_livechat_channel.website_description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel.website_description IS 'Website description';


--
-- Name: COLUMN im_livechat_channel.website_published; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel.website_published IS 'Visible in Website';


--
-- Name: im_livechat_channel_country_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE im_livechat_channel_country_rel (
    channel_id integer NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE im_livechat_channel_country_rel OWNER TO odoouser;

--
-- Name: TABLE im_livechat_channel_country_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE im_livechat_channel_country_rel IS 'RELATION BETWEEN im_livechat_channel_rule AND res_country';


--
-- Name: im_livechat_channel_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE im_livechat_channel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE im_livechat_channel_id_seq OWNER TO odoouser;

--
-- Name: im_livechat_channel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE im_livechat_channel_id_seq OWNED BY im_livechat_channel.id;


--
-- Name: im_livechat_channel_im_user; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE im_livechat_channel_im_user (
    channel_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE im_livechat_channel_im_user OWNER TO odoouser;

--
-- Name: TABLE im_livechat_channel_im_user; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE im_livechat_channel_im_user IS 'RELATION BETWEEN im_livechat_channel AND res_users';


--
-- Name: im_livechat_channel_rule; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE im_livechat_channel_rule (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    sequence integer,
    write_uid integer,
    channel_id integer,
    regex_url character varying,
    write_date timestamp without time zone,
    action character varying NOT NULL,
    auto_popup_timer integer
);


ALTER TABLE im_livechat_channel_rule OWNER TO odoouser;

--
-- Name: TABLE im_livechat_channel_rule; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE im_livechat_channel_rule IS 'Channel Rules';


--
-- Name: COLUMN im_livechat_channel_rule.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel_rule.create_uid IS 'Created by';


--
-- Name: COLUMN im_livechat_channel_rule.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel_rule.create_date IS 'Created on';


--
-- Name: COLUMN im_livechat_channel_rule.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel_rule.sequence IS 'Matching order';


--
-- Name: COLUMN im_livechat_channel_rule.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel_rule.write_uid IS 'Last Updated by';


--
-- Name: COLUMN im_livechat_channel_rule.channel_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel_rule.channel_id IS 'Channel';


--
-- Name: COLUMN im_livechat_channel_rule.regex_url; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel_rule.regex_url IS 'URL Regex';


--
-- Name: COLUMN im_livechat_channel_rule.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel_rule.write_date IS 'Last Updated on';


--
-- Name: COLUMN im_livechat_channel_rule.action; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel_rule.action IS 'Action';


--
-- Name: COLUMN im_livechat_channel_rule.auto_popup_timer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN im_livechat_channel_rule.auto_popup_timer IS 'Auto popup timer';


--
-- Name: im_livechat_channel_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE im_livechat_channel_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE im_livechat_channel_rule_id_seq OWNER TO odoouser;

--
-- Name: im_livechat_channel_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE im_livechat_channel_rule_id_seq OWNED BY im_livechat_channel_rule.id;


--
-- Name: mail_channel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_channel (
    id integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    alias_id integer NOT NULL,
    write_uid integer,
    create_uid integer,
    uuid character varying(50),
    message_last_post timestamp without time zone,
    public character varying NOT NULL,
    description text,
    group_public_id integer,
    write_date timestamp without time zone,
    name character varying NOT NULL,
    channel_type character varying,
    email_send boolean,
    anonymous_name character varying,
    livechat_channel_id integer
);


ALTER TABLE mail_channel OWNER TO odoouser;

--
-- Name: TABLE mail_channel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_channel IS 'Discussion channel';


--
-- Name: COLUMN mail_channel.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.create_date IS 'Created on';


--
-- Name: COLUMN mail_channel.alias_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.alias_id IS 'Alias';


--
-- Name: COLUMN mail_channel.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_channel.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.create_uid IS 'Created by';


--
-- Name: COLUMN mail_channel.uuid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.uuid IS 'UUID';


--
-- Name: COLUMN mail_channel.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN mail_channel.public; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.public IS 'Privacy';


--
-- Name: COLUMN mail_channel.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.description IS 'Description';


--
-- Name: COLUMN mail_channel.group_public_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.group_public_id IS 'Authorized Group';


--
-- Name: COLUMN mail_channel.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_channel.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.name IS 'Name';


--
-- Name: COLUMN mail_channel.channel_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.channel_type IS 'Channel Type';


--
-- Name: COLUMN mail_channel.email_send; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.email_send IS 'Send messages by email';


--
-- Name: COLUMN mail_channel.anonymous_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.anonymous_name IS 'Anonymous Name';


--
-- Name: COLUMN mail_channel.livechat_channel_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel.livechat_channel_id IS 'Channel';


--
-- Name: mail_channel_partner; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_channel_partner (
    id integer NOT NULL,
    seen_message_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    is_minimized boolean,
    is_pinned boolean,
    write_uid integer,
    channel_id integer,
    fold_state character varying,
    write_date timestamp without time zone,
    partner_id integer
);


ALTER TABLE mail_channel_partner OWNER TO odoouser;

--
-- Name: TABLE mail_channel_partner; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_channel_partner IS 'Last Seen Many2many';


--
-- Name: COLUMN mail_channel_partner.seen_message_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel_partner.seen_message_id IS 'Last Seen';


--
-- Name: COLUMN mail_channel_partner.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel_partner.create_uid IS 'Created by';


--
-- Name: COLUMN mail_channel_partner.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel_partner.create_date IS 'Created on';


--
-- Name: COLUMN mail_channel_partner.is_minimized; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel_partner.is_minimized IS 'Conversation is minimied';


--
-- Name: COLUMN mail_channel_partner.is_pinned; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel_partner.is_pinned IS 'Is pinned on the interface';


--
-- Name: COLUMN mail_channel_partner.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel_partner.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_channel_partner.channel_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel_partner.channel_id IS 'Channel';


--
-- Name: COLUMN mail_channel_partner.fold_state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel_partner.fold_state IS 'Conversation Fold State';


--
-- Name: COLUMN mail_channel_partner.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel_partner.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_channel_partner.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_channel_partner.partner_id IS 'Recipient';


--
-- Name: mail_message_mail_channel_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_message_mail_channel_rel (
    mail_message_id integer NOT NULL,
    mail_channel_id integer NOT NULL
);


ALTER TABLE mail_message_mail_channel_rel OWNER TO odoouser;

--
-- Name: TABLE mail_message_mail_channel_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_message_mail_channel_rel IS 'RELATION BETWEEN mail_message AND mail_channel';


--
-- Name: im_livechat_report_channel; Type: VIEW; Schema: public; Owner: odoouser
--

CREATE VIEW im_livechat_report_channel AS
 SELECT c.id,
    c.uuid,
    c.id AS channel_id,
    c.name AS channel_name,
    concat(l.name, ' / ', c.id) AS technical_name,
    c.livechat_channel_id,
    c.create_date AS start_date,
    to_char(date_trunc('hour'::text, c.create_date), 'YYYY-MM-DD HH24:MI:SS'::text) AS start_date_hour,
    date_part('epoch'::text, (max(( SELECT max(m_1.create_date) AS max
           FROM (mail_message m_1
             JOIN mail_message_mail_channel_rel r_1 ON ((r_1.mail_message_id = m_1.id)))
          WHERE (r_1.mail_channel_id = c.id))) - c.create_date)) AS duration,
    count(DISTINCT p.id) AS nbr_speaker,
    count(DISTINCT m.id) AS nbr_message,
    max(s.partner_id) AS partner_id
   FROM (((((mail_channel c
     JOIN mail_message_mail_channel_rel r ON ((c.id = r.mail_channel_id)))
     JOIN mail_message m ON ((m.id = r.mail_message_id)))
     JOIN mail_channel_partner s ON ((s.channel_id = c.id)))
     JOIN im_livechat_channel l ON ((l.id = c.livechat_channel_id)))
     LEFT JOIN res_partner p ON ((m.author_id = p.id)))
  GROUP BY c.id, c.name, c.livechat_channel_id, l.name, c.create_date, c.uuid;


ALTER TABLE im_livechat_report_channel OWNER TO odoouser;

--
-- Name: res_users; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_users (
    id integer NOT NULL,
    active boolean DEFAULT true,
    login character varying(64) NOT NULL,
    password character varying DEFAULT NULL::character varying,
    company_id integer NOT NULL,
    partner_id integer NOT NULL,
    create_date timestamp without time zone,
    create_uid integer,
    share boolean,
    write_uid integer,
    write_date timestamp without time zone,
    signature text,
    action_id integer,
    password_crypt character varying,
    alias_id integer NOT NULL,
    chatter_needaction_auto boolean,
    sale_team_id integer,
    target_sales_done integer,
    target_sales_won integer,
    target_sales_invoiced integer
);


ALTER TABLE res_users OWNER TO odoouser;

--
-- Name: COLUMN res_users.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.create_date IS 'Created on';


--
-- Name: COLUMN res_users.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.create_uid IS 'Created by';


--
-- Name: COLUMN res_users.share; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.share IS 'Share User';


--
-- Name: COLUMN res_users.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_users.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_users.signature; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.signature IS 'Signature';


--
-- Name: COLUMN res_users.action_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.action_id IS 'Home Action';


--
-- Name: COLUMN res_users.password_crypt; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.password_crypt IS 'Encrypted Password';


--
-- Name: COLUMN res_users.alias_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.alias_id IS 'Alias';


--
-- Name: COLUMN res_users.chatter_needaction_auto; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.chatter_needaction_auto IS 'Automatically set needaction as Read';


--
-- Name: COLUMN res_users.sale_team_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.sale_team_id IS 'Sales Team';


--
-- Name: COLUMN res_users.target_sales_done; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.target_sales_done IS 'Activities Done Target';


--
-- Name: COLUMN res_users.target_sales_won; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.target_sales_won IS 'Won in Opportunities Target';


--
-- Name: COLUMN res_users.target_sales_invoiced; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users.target_sales_invoiced IS 'Invoiced in Sale Orders Target';


--
-- Name: im_livechat_report_operator; Type: VIEW; Schema: public; Owner: odoouser
--

CREATE VIEW im_livechat_report_operator AS
 SELECT row_number() OVER () AS id,
    p.id AS partner_id,
    l.id AS livechat_channel_id,
    count(c.id) AS nbr_channel,
    c.id AS channel_id,
    c.create_date AS start_date,
    date_part('epoch'::text, (max(( SELECT max(m.create_date) AS max
           FROM (mail_message m
             JOIN mail_message_mail_channel_rel r ON ((r.mail_message_id = m.id)))
          WHERE (r.mail_channel_id = c.id))) - c.create_date)) AS duration,
    date_part('epoch'::text, (( SELECT min(m.create_date) AS min
           FROM mail_message m,
            mail_message_mail_channel_rel r
          WHERE ((m.author_id = p.id) AND (r.mail_channel_id = c.id) AND (r.mail_message_id = m.id))) - ( SELECT min(m.create_date) AS min
           FROM mail_message m,
            mail_message_mail_channel_rel r
          WHERE ((m.author_id IS NULL) AND (r.mail_channel_id = c.id) AND (r.mail_message_id = m.id))))) AS time_to_answer
   FROM ((((im_livechat_channel_im_user o
     JOIN res_users u ON ((o.user_id = u.id)))
     JOIN res_partner p ON ((u.partner_id = p.id)))
     LEFT JOIN im_livechat_channel l ON ((l.id = o.channel_id)))
     LEFT JOIN mail_channel c ON ((c.livechat_channel_id = l.id)))
  GROUP BY p.id, l.id, c.id, c.create_date;


ALTER TABLE im_livechat_report_operator OWNER TO odoouser;

--
-- Name: ir_actions; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_actions (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    help text,
    write_uid integer,
    write_date timestamp without time zone,
    usage character varying,
    type character varying NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE ir_actions OWNER TO odoouser;

--
-- Name: COLUMN ir_actions.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions.create_uid IS 'Created by';


--
-- Name: COLUMN ir_actions.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions.create_date IS 'Created on';


--
-- Name: COLUMN ir_actions.help; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions.help IS 'Action description';


--
-- Name: COLUMN ir_actions.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_actions.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_actions.usage; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions.usage IS 'Action Usage';


--
-- Name: COLUMN ir_actions.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions.type IS 'Action Type';


--
-- Name: COLUMN ir_actions.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions.name IS 'Name';


--
-- Name: ir_act_client; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_act_client (
    res_model character varying,
    params_store bytea,
    tag character varying NOT NULL,
    context character varying NOT NULL
)
INHERITS (ir_actions);


ALTER TABLE ir_act_client OWNER TO odoouser;

--
-- Name: COLUMN ir_act_client.res_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_client.res_model IS 'Destination Model';


--
-- Name: COLUMN ir_act_client.params_store; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_client.params_store IS 'Params storage';


--
-- Name: COLUMN ir_act_client.tag; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_client.tag IS 'Client action tag';


--
-- Name: COLUMN ir_act_client.context; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_client.context IS 'Context Value';


--
-- Name: ir_act_report_xml; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_act_report_xml (
    parser character varying,
    header boolean,
    report_type character varying NOT NULL,
    ir_values_id integer,
    attachment character varying,
    report_sxw_content_data bytea,
    report_xml character varying,
    report_rml_content_data bytea,
    auto boolean,
    report_file character varying,
    multi boolean,
    report_xsl character varying,
    report_rml character varying,
    report_name character varying NOT NULL,
    attachment_use boolean,
    model character varying NOT NULL,
    paperformat_id integer
)
INHERITS (ir_actions);


ALTER TABLE ir_act_report_xml OWNER TO odoouser;

--
-- Name: COLUMN ir_act_report_xml.parser; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.parser IS 'Parser Class';


--
-- Name: COLUMN ir_act_report_xml.header; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.header IS 'Add RML Header';


--
-- Name: COLUMN ir_act_report_xml.report_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.report_type IS 'Report Type';


--
-- Name: COLUMN ir_act_report_xml.ir_values_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.ir_values_id IS 'More Menu entry';


--
-- Name: COLUMN ir_act_report_xml.attachment; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.attachment IS 'Save as Attachment Prefix';


--
-- Name: COLUMN ir_act_report_xml.report_sxw_content_data; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.report_sxw_content_data IS 'SXW Content';


--
-- Name: COLUMN ir_act_report_xml.report_xml; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.report_xml IS 'XML Path';


--
-- Name: COLUMN ir_act_report_xml.report_rml_content_data; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.report_rml_content_data IS 'RML Content';


--
-- Name: COLUMN ir_act_report_xml.auto; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.auto IS 'Custom Python Parser';


--
-- Name: COLUMN ir_act_report_xml.report_file; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.report_file IS 'Report File';


--
-- Name: COLUMN ir_act_report_xml.multi; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.multi IS 'On Multiple Doc.';


--
-- Name: COLUMN ir_act_report_xml.report_xsl; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.report_xsl IS 'XSL Path';


--
-- Name: COLUMN ir_act_report_xml.report_rml; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.report_rml IS 'Main Report File Path/controller';


--
-- Name: COLUMN ir_act_report_xml.report_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.report_name IS 'Template Name';


--
-- Name: COLUMN ir_act_report_xml.attachment_use; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.attachment_use IS 'Reload from Attachment';


--
-- Name: COLUMN ir_act_report_xml.model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.model IS 'Model';


--
-- Name: COLUMN ir_act_report_xml.paperformat_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_report_xml.paperformat_id IS 'Paper format';


--
-- Name: ir_act_server; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_act_server (
    code text,
    sequence integer,
    crud_model_id integer,
    condition character varying,
    ref_object character varying(128),
    id_object character varying(128),
    crud_model_name character varying,
    use_relational_model character varying NOT NULL,
    use_create character varying NOT NULL,
    wkf_field_id integer,
    wkf_model_id integer,
    state character varying NOT NULL,
    id_value character varying,
    action_id integer,
    model_id integer NOT NULL,
    sub_model_object_field integer,
    link_new_record boolean,
    wkf_transition_id integer,
    sub_object integer,
    use_write character varying NOT NULL,
    wkf_model_name character varying,
    copyvalue character varying,
    write_expression character varying,
    menu_ir_values_id integer,
    model_object_field integer,
    link_field_id integer,
    template_id integer,
    website_published boolean,
    website_path character varying
)
INHERITS (ir_actions);


ALTER TABLE ir_act_server OWNER TO odoouser;

--
-- Name: COLUMN ir_act_server.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.code IS 'Python Code';


--
-- Name: COLUMN ir_act_server.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.sequence IS 'Sequence';


--
-- Name: COLUMN ir_act_server.crud_model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.crud_model_id IS 'Target Model';


--
-- Name: COLUMN ir_act_server.condition; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.condition IS 'Condition';


--
-- Name: COLUMN ir_act_server.ref_object; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.ref_object IS 'Reference record';


--
-- Name: COLUMN ir_act_server.id_object; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.id_object IS 'Record';


--
-- Name: COLUMN ir_act_server.crud_model_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.crud_model_name IS 'Create/Write Target Model Name';


--
-- Name: COLUMN ir_act_server.use_relational_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.use_relational_model IS 'Target Model';


--
-- Name: COLUMN ir_act_server.use_create; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.use_create IS 'Creation Policy';


--
-- Name: COLUMN ir_act_server.wkf_field_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.wkf_field_id IS 'Relation Field';


--
-- Name: COLUMN ir_act_server.wkf_model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.wkf_model_id IS 'Target Model';


--
-- Name: COLUMN ir_act_server.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.state IS 'Action To Do';


--
-- Name: COLUMN ir_act_server.id_value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.id_value IS 'Record ID';


--
-- Name: COLUMN ir_act_server.action_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.action_id IS 'Client Action';


--
-- Name: COLUMN ir_act_server.model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.model_id IS 'Base Model';


--
-- Name: COLUMN ir_act_server.sub_model_object_field; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.sub_model_object_field IS 'Sub-field';


--
-- Name: COLUMN ir_act_server.link_new_record; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.link_new_record IS 'Attach the new record';


--
-- Name: COLUMN ir_act_server.wkf_transition_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.wkf_transition_id IS 'Signal to Trigger';


--
-- Name: COLUMN ir_act_server.sub_object; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.sub_object IS 'Sub-model';


--
-- Name: COLUMN ir_act_server.use_write; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.use_write IS 'Update Policy';


--
-- Name: COLUMN ir_act_server.wkf_model_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.wkf_model_name IS 'Target Model Name';


--
-- Name: COLUMN ir_act_server.copyvalue; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.copyvalue IS 'Placeholder Expression';


--
-- Name: COLUMN ir_act_server.write_expression; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.write_expression IS 'Expression';


--
-- Name: COLUMN ir_act_server.menu_ir_values_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.menu_ir_values_id IS 'More Menu entry';


--
-- Name: COLUMN ir_act_server.model_object_field; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.model_object_field IS 'Field';


--
-- Name: COLUMN ir_act_server.link_field_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.link_field_id IS 'Link using field';


--
-- Name: COLUMN ir_act_server.template_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.template_id IS 'Email Template';


--
-- Name: COLUMN ir_act_server.website_published; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.website_published IS 'Available on the Website';


--
-- Name: COLUMN ir_act_server.website_path; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_server.website_path IS 'Website Path';


--
-- Name: ir_act_url; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_act_url (
    target character varying NOT NULL,
    url text NOT NULL
)
INHERITS (ir_actions);


ALTER TABLE ir_act_url OWNER TO odoouser;

--
-- Name: COLUMN ir_act_url.target; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_url.target IS 'Action Target';


--
-- Name: COLUMN ir_act_url.url; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_url.url IS 'Action URL';


--
-- Name: ir_act_window; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_act_window (
    domain character varying,
    res_model character varying NOT NULL,
    search_view_id integer,
    view_type character varying NOT NULL,
    src_model character varying,
    view_id integer,
    auto_refresh integer,
    view_mode character varying NOT NULL,
    target character varying,
    multi boolean,
    auto_search boolean,
    res_id integer,
    filter boolean,
    "limit" integer,
    context character varying NOT NULL
)
INHERITS (ir_actions);


ALTER TABLE ir_act_window OWNER TO odoouser;

--
-- Name: COLUMN ir_act_window.domain; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.domain IS 'Domain Value';


--
-- Name: COLUMN ir_act_window.res_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.res_model IS 'Destination Model';


--
-- Name: COLUMN ir_act_window.search_view_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.search_view_id IS 'Search View Ref.';


--
-- Name: COLUMN ir_act_window.view_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.view_type IS 'View Type';


--
-- Name: COLUMN ir_act_window.src_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.src_model IS 'Source Model';


--
-- Name: COLUMN ir_act_window.view_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.view_id IS 'View Ref.';


--
-- Name: COLUMN ir_act_window.auto_refresh; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.auto_refresh IS 'Auto-Refresh';


--
-- Name: COLUMN ir_act_window.view_mode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.view_mode IS 'View Mode';


--
-- Name: COLUMN ir_act_window.target; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.target IS 'Target Window';


--
-- Name: COLUMN ir_act_window.multi; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.multi IS 'Restrict to lists';


--
-- Name: COLUMN ir_act_window.auto_search; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.auto_search IS 'Auto Search';


--
-- Name: COLUMN ir_act_window.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.res_id IS 'Record ID';


--
-- Name: COLUMN ir_act_window.filter; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.filter IS 'Filter';


--
-- Name: COLUMN ir_act_window."limit"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window."limit" IS 'Limit';


--
-- Name: COLUMN ir_act_window.context; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window.context IS 'Context Value';


--
-- Name: ir_act_window_group_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_act_window_group_rel (
    act_id integer NOT NULL,
    gid integer NOT NULL
);


ALTER TABLE ir_act_window_group_rel OWNER TO odoouser;

--
-- Name: TABLE ir_act_window_group_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_act_window_group_rel IS 'RELATION BETWEEN ir_act_window AND res_groups';


--
-- Name: ir_act_window_view; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_act_window_view (
    id integer NOT NULL,
    create_uid integer,
    multi boolean,
    create_date timestamp without time zone,
    sequence integer,
    view_id integer,
    write_uid integer,
    view_mode character varying NOT NULL,
    write_date timestamp without time zone,
    act_window_id integer
);


ALTER TABLE ir_act_window_view OWNER TO odoouser;

--
-- Name: TABLE ir_act_window_view; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_act_window_view IS 'ir.actions.act_window.view';


--
-- Name: COLUMN ir_act_window_view.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window_view.create_uid IS 'Created by';


--
-- Name: COLUMN ir_act_window_view.multi; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window_view.multi IS 'On Multiple Doc.';


--
-- Name: COLUMN ir_act_window_view.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window_view.create_date IS 'Created on';


--
-- Name: COLUMN ir_act_window_view.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window_view.sequence IS 'Sequence';


--
-- Name: COLUMN ir_act_window_view.view_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window_view.view_id IS 'View';


--
-- Name: COLUMN ir_act_window_view.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window_view.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_act_window_view.view_mode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window_view.view_mode IS 'View Type';


--
-- Name: COLUMN ir_act_window_view.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window_view.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_act_window_view.act_window_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_act_window_view.act_window_id IS 'Action';


--
-- Name: ir_act_window_view_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_act_window_view_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_act_window_view_id_seq OWNER TO odoouser;

--
-- Name: ir_act_window_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_act_window_view_id_seq OWNED BY ir_act_window_view.id;


--
-- Name: ir_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_actions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_actions_id_seq OWNER TO odoouser;

--
-- Name: ir_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_actions_id_seq OWNED BY ir_actions.id;


--
-- Name: ir_actions_todo; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_actions_todo (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying,
    sequence integer,
    write_uid integer,
    note text,
    state character varying NOT NULL,
    write_date timestamp without time zone,
    type character varying NOT NULL,
    action_id integer NOT NULL
);


ALTER TABLE ir_actions_todo OWNER TO odoouser;

--
-- Name: TABLE ir_actions_todo; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_actions_todo IS 'Configuration Wizards';


--
-- Name: COLUMN ir_actions_todo.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions_todo.create_uid IS 'Created by';


--
-- Name: COLUMN ir_actions_todo.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions_todo.create_date IS 'Created on';


--
-- Name: COLUMN ir_actions_todo.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions_todo.name IS 'Name';


--
-- Name: COLUMN ir_actions_todo.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions_todo.sequence IS 'Sequence';


--
-- Name: COLUMN ir_actions_todo.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions_todo.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_actions_todo.note; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions_todo.note IS 'Text';


--
-- Name: COLUMN ir_actions_todo.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions_todo.state IS 'Status';


--
-- Name: COLUMN ir_actions_todo.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions_todo.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_actions_todo.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions_todo.type IS 'Type';


--
-- Name: COLUMN ir_actions_todo.action_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_actions_todo.action_id IS 'Action';


--
-- Name: ir_actions_todo_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_actions_todo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_actions_todo_id_seq OWNER TO odoouser;

--
-- Name: ir_actions_todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_actions_todo_id_seq OWNED BY ir_actions_todo.id;


--
-- Name: ir_attachment; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_attachment (
    id integer NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    res_model character varying,
    write_uid integer,
    res_name character varying,
    db_datas bytea,
    file_size integer,
    create_uid integer,
    company_id integer,
    index_content text,
    type character varying NOT NULL,
    public boolean,
    store_fname character varying,
    description text,
    res_field character varying,
    mimetype character varying,
    name character varying NOT NULL,
    url character varying(1024),
    res_id integer,
    checksum character varying(40),
    datas_fname character varying
);


ALTER TABLE ir_attachment OWNER TO odoouser;

--
-- Name: TABLE ir_attachment; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_attachment IS 'ir.attachment';


--
-- Name: COLUMN ir_attachment.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.create_date IS 'Date Created';


--
-- Name: COLUMN ir_attachment.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_attachment.res_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.res_model IS 'Resource Model';


--
-- Name: COLUMN ir_attachment.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_attachment.res_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.res_name IS 'Resource Name';


--
-- Name: COLUMN ir_attachment.db_datas; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.db_datas IS 'Database Data';


--
-- Name: COLUMN ir_attachment.file_size; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.file_size IS 'File Size';


--
-- Name: COLUMN ir_attachment.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.create_uid IS 'Owner';


--
-- Name: COLUMN ir_attachment.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.company_id IS 'Company';


--
-- Name: COLUMN ir_attachment.index_content; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.index_content IS 'Indexed Content';


--
-- Name: COLUMN ir_attachment.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.type IS 'Type';


--
-- Name: COLUMN ir_attachment.public; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.public IS 'Is public document';


--
-- Name: COLUMN ir_attachment.store_fname; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.store_fname IS 'Stored Filename';


--
-- Name: COLUMN ir_attachment.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.description IS 'Description';


--
-- Name: COLUMN ir_attachment.res_field; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.res_field IS 'Resource Field';


--
-- Name: COLUMN ir_attachment.mimetype; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.mimetype IS 'Mime Type';


--
-- Name: COLUMN ir_attachment.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.name IS 'Attachment Name';


--
-- Name: COLUMN ir_attachment.url; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.url IS 'Url';


--
-- Name: COLUMN ir_attachment.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.res_id IS 'Resource ID';


--
-- Name: COLUMN ir_attachment.checksum; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.checksum IS 'Checksum/SHA1';


--
-- Name: COLUMN ir_attachment.datas_fname; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_attachment.datas_fname IS 'File Name';


--
-- Name: ir_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_attachment_id_seq OWNER TO odoouser;

--
-- Name: ir_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_attachment_id_seq OWNED BY ir_attachment.id;


--
-- Name: ir_autovacuum; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_autovacuum (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE ir_autovacuum OWNER TO odoouser;

--
-- Name: TABLE ir_autovacuum; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_autovacuum IS 'ir.autovacuum';


--
-- Name: COLUMN ir_autovacuum.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_autovacuum.create_uid IS 'Created by';


--
-- Name: COLUMN ir_autovacuum.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_autovacuum.create_date IS 'Created on';


--
-- Name: COLUMN ir_autovacuum.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_autovacuum.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_autovacuum.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_autovacuum.write_uid IS 'Last Updated by';


--
-- Name: ir_autovacuum_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_autovacuum_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_autovacuum_id_seq OWNER TO odoouser;

--
-- Name: ir_autovacuum_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_autovacuum_id_seq OWNED BY ir_autovacuum.id;


--
-- Name: ir_config_parameter; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_config_parameter (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    value text NOT NULL,
    write_uid integer,
    key character varying NOT NULL
);


ALTER TABLE ir_config_parameter OWNER TO odoouser;

--
-- Name: TABLE ir_config_parameter; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_config_parameter IS 'ir.config_parameter';


--
-- Name: COLUMN ir_config_parameter.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_config_parameter.create_uid IS 'Created by';


--
-- Name: COLUMN ir_config_parameter.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_config_parameter.create_date IS 'Created on';


--
-- Name: COLUMN ir_config_parameter.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_config_parameter.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_config_parameter.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_config_parameter.value IS 'Value';


--
-- Name: COLUMN ir_config_parameter.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_config_parameter.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_config_parameter.key; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_config_parameter.key IS 'Key';


--
-- Name: ir_config_parameter_groups_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_config_parameter_groups_rel (
    icp_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE ir_config_parameter_groups_rel OWNER TO odoouser;

--
-- Name: TABLE ir_config_parameter_groups_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_config_parameter_groups_rel IS 'RELATION BETWEEN ir_config_parameter AND res_groups';


--
-- Name: ir_config_parameter_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_config_parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_config_parameter_id_seq OWNER TO odoouser;

--
-- Name: ir_config_parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_config_parameter_id_seq OWNED BY ir_config_parameter.id;


--
-- Name: ir_cron; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_cron (
    id integer NOT NULL,
    function character varying,
    create_uid integer,
    args text,
    user_id integer NOT NULL,
    name character varying NOT NULL,
    interval_type character varying,
    numbercall integer,
    nextcall timestamp without time zone NOT NULL,
    priority integer,
    model character varying,
    doall boolean,
    write_date timestamp without time zone,
    active boolean,
    create_date timestamp without time zone,
    interval_number integer,
    write_uid integer
);


ALTER TABLE ir_cron OWNER TO odoouser;

--
-- Name: TABLE ir_cron; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_cron IS 'ir.cron';


--
-- Name: COLUMN ir_cron.function; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.function IS 'Method';


--
-- Name: COLUMN ir_cron.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.create_uid IS 'Created by';


--
-- Name: COLUMN ir_cron.args; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.args IS 'Arguments';


--
-- Name: COLUMN ir_cron.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.user_id IS 'User';


--
-- Name: COLUMN ir_cron.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.name IS 'Name';


--
-- Name: COLUMN ir_cron.interval_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.interval_type IS 'Interval Unit';


--
-- Name: COLUMN ir_cron.numbercall; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.numbercall IS 'Number of Calls';


--
-- Name: COLUMN ir_cron.nextcall; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.nextcall IS 'Next Execution Date';


--
-- Name: COLUMN ir_cron.priority; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.priority IS 'Priority';


--
-- Name: COLUMN ir_cron.model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.model IS 'Object';


--
-- Name: COLUMN ir_cron.doall; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.doall IS 'Repeat Missed';


--
-- Name: COLUMN ir_cron.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_cron.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.active IS 'Active';


--
-- Name: COLUMN ir_cron.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.create_date IS 'Created on';


--
-- Name: COLUMN ir_cron.interval_number; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.interval_number IS 'Interval Number';


--
-- Name: COLUMN ir_cron.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_cron.write_uid IS 'Last Updated by';


--
-- Name: ir_cron_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_cron_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_cron_id_seq OWNER TO odoouser;

--
-- Name: ir_cron_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_cron_id_seq OWNED BY ir_cron.id;


--
-- Name: ir_exports; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_exports (
    id integer NOT NULL,
    create_uid integer,
    resource character varying,
    name character varying,
    write_uid integer,
    write_date timestamp without time zone,
    create_date timestamp without time zone
);


ALTER TABLE ir_exports OWNER TO odoouser;

--
-- Name: TABLE ir_exports; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_exports IS 'ir.exports';


--
-- Name: COLUMN ir_exports.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports.create_uid IS 'Created by';


--
-- Name: COLUMN ir_exports.resource; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports.resource IS 'Resource';


--
-- Name: COLUMN ir_exports.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports.name IS 'Export Name';


--
-- Name: COLUMN ir_exports.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_exports.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_exports.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports.create_date IS 'Created on';


--
-- Name: ir_exports_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_exports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_exports_id_seq OWNER TO odoouser;

--
-- Name: ir_exports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_exports_id_seq OWNED BY ir_exports.id;


--
-- Name: ir_exports_line; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_exports_line (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying,
    write_uid integer,
    write_date timestamp without time zone,
    export_id integer
);


ALTER TABLE ir_exports_line OWNER TO odoouser;

--
-- Name: TABLE ir_exports_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_exports_line IS 'ir.exports.line';


--
-- Name: COLUMN ir_exports_line.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports_line.create_uid IS 'Created by';


--
-- Name: COLUMN ir_exports_line.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports_line.create_date IS 'Created on';


--
-- Name: COLUMN ir_exports_line.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports_line.name IS 'Field Name';


--
-- Name: COLUMN ir_exports_line.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_exports_line.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports_line.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_exports_line.export_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_exports_line.export_id IS 'Export';


--
-- Name: ir_exports_line_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_exports_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_exports_line_id_seq OWNER TO odoouser;

--
-- Name: ir_exports_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_exports_line_id_seq OWNED BY ir_exports_line.id;


--
-- Name: ir_filters; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_filters (
    id integer NOT NULL,
    sort text NOT NULL,
    model_id character varying NOT NULL,
    domain text NOT NULL,
    user_id integer,
    name character varying NOT NULL,
    create_uid integer,
    write_uid integer,
    is_default boolean,
    context text NOT NULL,
    active boolean,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    action_id integer
);


ALTER TABLE ir_filters OWNER TO odoouser;

--
-- Name: TABLE ir_filters; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_filters IS 'Filters';


--
-- Name: COLUMN ir_filters.sort; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.sort IS 'Sort';


--
-- Name: COLUMN ir_filters.model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.model_id IS 'Model';


--
-- Name: COLUMN ir_filters.domain; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.domain IS 'Domain';


--
-- Name: COLUMN ir_filters.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.user_id IS 'User';


--
-- Name: COLUMN ir_filters.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.name IS 'Filter Name';


--
-- Name: COLUMN ir_filters.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.create_uid IS 'Created by';


--
-- Name: COLUMN ir_filters.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_filters.is_default; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.is_default IS 'Default filter';


--
-- Name: COLUMN ir_filters.context; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.context IS 'Context';


--
-- Name: COLUMN ir_filters.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.active IS 'Active';


--
-- Name: COLUMN ir_filters.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.create_date IS 'Created on';


--
-- Name: COLUMN ir_filters.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_filters.action_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_filters.action_id IS 'Action';


--
-- Name: ir_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_filters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_filters_id_seq OWNER TO odoouser;

--
-- Name: ir_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_filters_id_seq OWNED BY ir_filters.id;


--
-- Name: ir_logging; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_logging (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    level character varying,
    line character varying NOT NULL,
    dbname character varying,
    write_uid integer,
    func character varying NOT NULL,
    write_date timestamp without time zone,
    path character varying NOT NULL,
    message text NOT NULL,
    type character varying NOT NULL
);


ALTER TABLE ir_logging OWNER TO odoouser;

--
-- Name: TABLE ir_logging; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_logging IS 'ir.logging';


--
-- Name: COLUMN ir_logging.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.create_uid IS 'Uid';


--
-- Name: COLUMN ir_logging.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.create_date IS 'Create Date';


--
-- Name: COLUMN ir_logging.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.name IS 'Name';


--
-- Name: COLUMN ir_logging.level; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.level IS 'Level';


--
-- Name: COLUMN ir_logging.line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.line IS 'Line';


--
-- Name: COLUMN ir_logging.dbname; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.dbname IS 'Database Name';


--
-- Name: COLUMN ir_logging.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_logging.func; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.func IS 'Function';


--
-- Name: COLUMN ir_logging.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_logging.path; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.path IS 'Path';


--
-- Name: COLUMN ir_logging.message; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.message IS 'Message';


--
-- Name: COLUMN ir_logging.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_logging.type IS 'Type';


--
-- Name: ir_logging_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_logging_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_logging_id_seq OWNER TO odoouser;

--
-- Name: ir_logging_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_logging_id_seq OWNED BY ir_logging.id;


--
-- Name: ir_mail_server; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_mail_server (
    id integer NOT NULL,
    create_uid integer,
    smtp_encryption character varying NOT NULL,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    sequence integer,
    smtp_port integer NOT NULL,
    smtp_host character varying NOT NULL,
    write_uid integer,
    smtp_pass character varying(64),
    smtp_debug boolean,
    write_date timestamp without time zone,
    active boolean,
    smtp_user character varying(64)
);


ALTER TABLE ir_mail_server OWNER TO odoouser;

--
-- Name: TABLE ir_mail_server; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_mail_server IS 'ir.mail_server';


--
-- Name: COLUMN ir_mail_server.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.create_uid IS 'Created by';


--
-- Name: COLUMN ir_mail_server.smtp_encryption; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.smtp_encryption IS 'Connection Security';


--
-- Name: COLUMN ir_mail_server.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.create_date IS 'Created on';


--
-- Name: COLUMN ir_mail_server.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.name IS 'Description';


--
-- Name: COLUMN ir_mail_server.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.sequence IS 'Priority';


--
-- Name: COLUMN ir_mail_server.smtp_port; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.smtp_port IS 'SMTP Port';


--
-- Name: COLUMN ir_mail_server.smtp_host; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.smtp_host IS 'SMTP Server';


--
-- Name: COLUMN ir_mail_server.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_mail_server.smtp_pass; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.smtp_pass IS 'Password';


--
-- Name: COLUMN ir_mail_server.smtp_debug; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.smtp_debug IS 'Debugging';


--
-- Name: COLUMN ir_mail_server.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_mail_server.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.active IS 'Active';


--
-- Name: COLUMN ir_mail_server.smtp_user; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_mail_server.smtp_user IS 'Username';


--
-- Name: ir_mail_server_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_mail_server_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_mail_server_id_seq OWNER TO odoouser;

--
-- Name: ir_mail_server_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_mail_server_id_seq OWNED BY ir_mail_server.id;


--
-- Name: ir_model; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_model (
    id integer NOT NULL,
    model character varying NOT NULL,
    name character varying NOT NULL,
    state character varying,
    info text,
    transient boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE ir_model OWNER TO odoouser;

--
-- Name: COLUMN ir_model.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model.create_date IS 'Created on';


--
-- Name: COLUMN ir_model.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model.write_date IS 'Last Updated on';


--
-- Name: ir_model_access; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_model_access (
    id integer NOT NULL,
    model_id integer NOT NULL,
    perm_read boolean,
    name character varying NOT NULL,
    create_uid integer,
    write_uid integer,
    active boolean,
    write_date timestamp without time zone,
    perm_unlink boolean,
    perm_write boolean,
    create_date timestamp without time zone,
    perm_create boolean,
    group_id integer
);


ALTER TABLE ir_model_access OWNER TO odoouser;

--
-- Name: TABLE ir_model_access; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_model_access IS 'ir.model.access';


--
-- Name: COLUMN ir_model_access.model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.model_id IS 'Object';


--
-- Name: COLUMN ir_model_access.perm_read; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.perm_read IS 'Read Access';


--
-- Name: COLUMN ir_model_access.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.name IS 'Name';


--
-- Name: COLUMN ir_model_access.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_access.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model_access.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.active IS 'Active';


--
-- Name: COLUMN ir_model_access.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_model_access.perm_unlink; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.perm_unlink IS 'Delete Access';


--
-- Name: COLUMN ir_model_access.perm_write; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.perm_write IS 'Write Access';


--
-- Name: COLUMN ir_model_access.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.create_date IS 'Created on';


--
-- Name: COLUMN ir_model_access.perm_create; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.perm_create IS 'Create Access';


--
-- Name: COLUMN ir_model_access.group_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_access.group_id IS 'Group';


--
-- Name: ir_model_access_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_model_access_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_model_access_id_seq OWNER TO odoouser;

--
-- Name: ir_model_access_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_model_access_id_seq OWNED BY ir_model_access.id;


--
-- Name: ir_model_constraint; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_model_constraint (
    id integer NOT NULL,
    date_init timestamp without time zone,
    date_update timestamp without time zone,
    module integer NOT NULL,
    model integer NOT NULL,
    type character varying(1) NOT NULL,
    definition character varying,
    name character varying NOT NULL,
    create_date timestamp without time zone,
    create_uid integer,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE ir_model_constraint OWNER TO odoouser;

--
-- Name: COLUMN ir_model_constraint.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_constraint.create_date IS 'Created on';


--
-- Name: COLUMN ir_model_constraint.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_constraint.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_constraint.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_constraint.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model_constraint.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_constraint.write_date IS 'Last Updated on';


--
-- Name: ir_model_constraint_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_model_constraint_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_model_constraint_id_seq OWNER TO odoouser;

--
-- Name: ir_model_constraint_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_model_constraint_id_seq OWNED BY ir_model_constraint.id;


--
-- Name: ir_model_data; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_model_data (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    noupdate boolean,
    name character varying NOT NULL,
    date_init timestamp without time zone,
    date_update timestamp without time zone,
    module character varying NOT NULL,
    model character varying NOT NULL,
    res_id integer
);


ALTER TABLE ir_model_data OWNER TO odoouser;

--
-- Name: ir_model_data_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_model_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_model_data_id_seq OWNER TO odoouser;

--
-- Name: ir_model_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_model_data_id_seq OWNED BY ir_model_data.id;


--
-- Name: ir_model_fields; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_model_fields (
    id integer NOT NULL,
    model character varying NOT NULL,
    model_id integer NOT NULL,
    name character varying NOT NULL,
    state character varying DEFAULT 'base'::character varying NOT NULL,
    field_description character varying NOT NULL,
    help text,
    ttype character varying NOT NULL,
    relation character varying,
    relation_field character varying,
    index boolean,
    copy boolean,
    related character varying,
    readonly boolean DEFAULT false,
    required boolean DEFAULT false,
    selectable boolean DEFAULT false,
    translate boolean DEFAULT false,
    serialization_field_id integer,
    relation_table character varying,
    column1 character varying,
    column2 character varying,
    domain character varying,
    selection character varying,
    create_date timestamp without time zone,
    on_delete character varying,
    write_uid integer,
    depends character varying,
    size integer,
    create_uid integer,
    complete_name character varying,
    compute text,
    write_date timestamp without time zone,
    CONSTRAINT ir_model_fields_size_gt_zero CHECK ((size >= 0))
);


ALTER TABLE ir_model_fields OWNER TO odoouser;

--
-- Name: COLUMN ir_model_fields.domain; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.domain IS 'Domain';


--
-- Name: COLUMN ir_model_fields.selection; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.selection IS 'Selection Options';


--
-- Name: COLUMN ir_model_fields.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.create_date IS 'Created on';


--
-- Name: COLUMN ir_model_fields.on_delete; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.on_delete IS 'On Delete';


--
-- Name: COLUMN ir_model_fields.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model_fields.depends; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.depends IS 'Dependencies';


--
-- Name: COLUMN ir_model_fields.size; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.size IS 'Size';


--
-- Name: COLUMN ir_model_fields.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_fields.complete_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.complete_name IS 'Complete Name';


--
-- Name: COLUMN ir_model_fields.compute; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.compute IS 'Compute';


--
-- Name: COLUMN ir_model_fields.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_fields.write_date IS 'Last Updated on';


--
-- Name: ir_model_fields_group_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_model_fields_group_rel (
    field_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE ir_model_fields_group_rel OWNER TO odoouser;

--
-- Name: TABLE ir_model_fields_group_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_model_fields_group_rel IS 'RELATION BETWEEN ir_model_fields AND res_groups';


--
-- Name: ir_model_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_model_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_model_fields_id_seq OWNER TO odoouser;

--
-- Name: ir_model_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_model_fields_id_seq OWNED BY ir_model_fields.id;


--
-- Name: ir_model_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_model_id_seq OWNER TO odoouser;

--
-- Name: ir_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_model_id_seq OWNED BY ir_model.id;


--
-- Name: ir_model_relation; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_model_relation (
    id integer NOT NULL,
    date_init timestamp without time zone,
    date_update timestamp without time zone,
    module integer NOT NULL,
    model integer NOT NULL,
    name character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE ir_model_relation OWNER TO odoouser;

--
-- Name: COLUMN ir_model_relation.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_relation.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_relation.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_relation.create_date IS 'Created on';


--
-- Name: COLUMN ir_model_relation.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_relation.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model_relation.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_model_relation.write_date IS 'Last Updated on';


--
-- Name: ir_model_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_model_relation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_model_relation_id_seq OWNER TO odoouser;

--
-- Name: ir_model_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_model_relation_id_seq OWNED BY ir_model_relation.id;


--
-- Name: ir_module_category; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_module_category (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    parent_id integer,
    name character varying NOT NULL,
    description text,
    sequence integer,
    visible boolean
);


ALTER TABLE ir_module_category OWNER TO odoouser;

--
-- Name: COLUMN ir_module_category.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_module_category.description IS 'Description';


--
-- Name: COLUMN ir_module_category.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_module_category.sequence IS 'Sequence';


--
-- Name: COLUMN ir_module_category.visible; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_module_category.visible IS 'Visible';


--
-- Name: ir_module_category_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_module_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_module_category_id_seq OWNER TO odoouser;

--
-- Name: ir_module_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_module_category_id_seq OWNED BY ir_module_category.id;


--
-- Name: ir_module_module; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_module_module (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    website character varying,
    summary character varying,
    name character varying NOT NULL,
    author character varying,
    icon character varying,
    state character varying,
    latest_version character varying,
    shortdesc character varying,
    category_id integer,
    description text,
    application boolean DEFAULT false,
    demo boolean DEFAULT false,
    web boolean DEFAULT false,
    license character varying,
    sequence integer DEFAULT 100,
    auto_install boolean DEFAULT false,
    menus_by_module text,
    reports_by_module text,
    maintainer character varying,
    contributors text,
    views_by_module text,
    published_version character varying,
    url character varying
);


ALTER TABLE ir_module_module OWNER TO odoouser;

--
-- Name: COLUMN ir_module_module.menus_by_module; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_module_module.menus_by_module IS 'Menus';


--
-- Name: COLUMN ir_module_module.reports_by_module; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_module_module.reports_by_module IS 'Reports';


--
-- Name: COLUMN ir_module_module.maintainer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_module_module.maintainer IS 'Maintainer';


--
-- Name: COLUMN ir_module_module.contributors; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_module_module.contributors IS 'Contributors';


--
-- Name: COLUMN ir_module_module.views_by_module; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_module_module.views_by_module IS 'Views';


--
-- Name: COLUMN ir_module_module.published_version; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_module_module.published_version IS 'Published Version';


--
-- Name: COLUMN ir_module_module.url; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_module_module.url IS 'URL';


--
-- Name: ir_module_module_dependency; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_module_module_dependency (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    name character varying,
    module_id integer
);


ALTER TABLE ir_module_module_dependency OWNER TO odoouser;

--
-- Name: ir_module_module_dependency_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_module_module_dependency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_module_module_dependency_id_seq OWNER TO odoouser;

--
-- Name: ir_module_module_dependency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_module_module_dependency_id_seq OWNED BY ir_module_module_dependency.id;


--
-- Name: ir_module_module_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_module_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_module_module_id_seq OWNER TO odoouser;

--
-- Name: ir_module_module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_module_module_id_seq OWNED BY ir_module_module.id;


--
-- Name: ir_property; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_property (
    id integer NOT NULL,
    value_text text,
    value_float double precision,
    create_date timestamp without time zone,
    name character varying,
    create_uid integer,
    type character varying NOT NULL,
    company_id integer,
    write_uid integer,
    fields_id integer NOT NULL,
    value_datetime timestamp without time zone,
    value_binary bytea,
    write_date timestamp without time zone,
    value_reference character varying,
    value_integer integer,
    res_id character varying
);


ALTER TABLE ir_property OWNER TO odoouser;

--
-- Name: TABLE ir_property; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_property IS 'ir.property';


--
-- Name: COLUMN ir_property.value_text; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.value_text IS 'Value';


--
-- Name: COLUMN ir_property.value_float; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.value_float IS 'Value';


--
-- Name: COLUMN ir_property.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.create_date IS 'Created on';


--
-- Name: COLUMN ir_property.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.name IS 'Name';


--
-- Name: COLUMN ir_property.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.create_uid IS 'Created by';


--
-- Name: COLUMN ir_property.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.type IS 'Type';


--
-- Name: COLUMN ir_property.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.company_id IS 'Company';


--
-- Name: COLUMN ir_property.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_property.fields_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.fields_id IS 'Field';


--
-- Name: COLUMN ir_property.value_datetime; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.value_datetime IS 'Value';


--
-- Name: COLUMN ir_property.value_binary; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.value_binary IS 'Value';


--
-- Name: COLUMN ir_property.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_property.value_reference; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.value_reference IS 'Value';


--
-- Name: COLUMN ir_property.value_integer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.value_integer IS 'Value';


--
-- Name: COLUMN ir_property.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_property.res_id IS 'Resource';


--
-- Name: ir_property_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_property_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_property_id_seq OWNER TO odoouser;

--
-- Name: ir_property_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_property_id_seq OWNED BY ir_property.id;


--
-- Name: ir_rule; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_rule (
    id integer NOT NULL,
    model_id integer NOT NULL,
    domain_force text,
    name character varying,
    create_uid integer,
    global boolean,
    write_uid integer,
    active boolean,
    perm_read boolean,
    perm_unlink boolean,
    perm_write boolean,
    create_date timestamp without time zone,
    perm_create boolean,
    write_date timestamp without time zone,
    CONSTRAINT ir_rule_no_access_rights CHECK (((perm_read <> false) OR (perm_write <> false) OR (perm_create <> false) OR (perm_unlink <> false)))
);


ALTER TABLE ir_rule OWNER TO odoouser;

--
-- Name: TABLE ir_rule; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_rule IS 'ir.rule';


--
-- Name: COLUMN ir_rule.model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.model_id IS 'Object';


--
-- Name: COLUMN ir_rule.domain_force; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.domain_force IS 'Domain';


--
-- Name: COLUMN ir_rule.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.name IS 'Name';


--
-- Name: COLUMN ir_rule.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.create_uid IS 'Created by';


--
-- Name: COLUMN ir_rule.global; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.global IS 'Global';


--
-- Name: COLUMN ir_rule.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_rule.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.active IS 'Active';


--
-- Name: COLUMN ir_rule.perm_read; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.perm_read IS 'Apply for Read';


--
-- Name: COLUMN ir_rule.perm_unlink; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.perm_unlink IS 'Apply for Delete';


--
-- Name: COLUMN ir_rule.perm_write; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.perm_write IS 'Apply for Write';


--
-- Name: COLUMN ir_rule.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.create_date IS 'Created on';


--
-- Name: COLUMN ir_rule.perm_create; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.perm_create IS 'Apply for Create';


--
-- Name: COLUMN ir_rule.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_rule.write_date IS 'Last Updated on';


--
-- Name: ir_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_rule_id_seq OWNER TO odoouser;

--
-- Name: ir_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_rule_id_seq OWNED BY ir_rule.id;


--
-- Name: ir_sequence; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_sequence (
    id integer NOT NULL,
    padding integer NOT NULL,
    create_uid integer,
    code character varying,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    number_next integer NOT NULL,
    implementation character varying NOT NULL,
    company_id integer,
    write_uid integer,
    use_date_range boolean,
    number_increment integer NOT NULL,
    prefix character varying,
    write_date timestamp without time zone,
    active boolean,
    suffix character varying
);


ALTER TABLE ir_sequence OWNER TO odoouser;

--
-- Name: TABLE ir_sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_sequence IS 'ir.sequence';


--
-- Name: COLUMN ir_sequence.padding; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.padding IS 'Sequence Size';


--
-- Name: COLUMN ir_sequence.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.create_uid IS 'Created by';


--
-- Name: COLUMN ir_sequence.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.code IS 'Sequence Code';


--
-- Name: COLUMN ir_sequence.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.create_date IS 'Created on';


--
-- Name: COLUMN ir_sequence.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.name IS 'Name';


--
-- Name: COLUMN ir_sequence.number_next; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.number_next IS 'Next Number';


--
-- Name: COLUMN ir_sequence.implementation; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.implementation IS 'Implementation';


--
-- Name: COLUMN ir_sequence.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.company_id IS 'Company';


--
-- Name: COLUMN ir_sequence.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_sequence.use_date_range; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.use_date_range IS 'Use subsequences per date_range';


--
-- Name: COLUMN ir_sequence.number_increment; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.number_increment IS 'Step';


--
-- Name: COLUMN ir_sequence.prefix; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.prefix IS 'Prefix';


--
-- Name: COLUMN ir_sequence.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_sequence.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.active IS 'Active';


--
-- Name: COLUMN ir_sequence.suffix; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence.suffix IS 'Suffix';


--
-- Name: ir_sequence_001; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_sequence_001
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_sequence_001 OWNER TO odoouser;

--
-- Name: ir_sequence_002; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_sequence_002
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_sequence_002 OWNER TO odoouser;

--
-- Name: ir_sequence_003; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_sequence_003
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_sequence_003 OWNER TO odoouser;

--
-- Name: ir_sequence_004; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_sequence_004
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_sequence_004 OWNER TO odoouser;

--
-- Name: ir_sequence_005; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_sequence_005
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_sequence_005 OWNER TO odoouser;

--
-- Name: ir_sequence_006; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_sequence_006
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_sequence_006 OWNER TO odoouser;

--
-- Name: ir_sequence_007; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_sequence_007
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_sequence_007 OWNER TO odoouser;

--
-- Name: ir_sequence_008; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_sequence_008
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_sequence_008 OWNER TO odoouser;

--
-- Name: ir_sequence_date_range; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_sequence_date_range (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    number_next integer NOT NULL,
    date_from date NOT NULL,
    write_uid integer,
    sequence_id integer NOT NULL,
    write_date timestamp without time zone,
    date_to date NOT NULL
);


ALTER TABLE ir_sequence_date_range OWNER TO odoouser;

--
-- Name: TABLE ir_sequence_date_range; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_sequence_date_range IS 'ir.sequence.date_range';


--
-- Name: COLUMN ir_sequence_date_range.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence_date_range.create_uid IS 'Created by';


--
-- Name: COLUMN ir_sequence_date_range.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence_date_range.create_date IS 'Created on';


--
-- Name: COLUMN ir_sequence_date_range.number_next; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence_date_range.number_next IS 'Next Number';


--
-- Name: COLUMN ir_sequence_date_range.date_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence_date_range.date_from IS 'From';


--
-- Name: COLUMN ir_sequence_date_range.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence_date_range.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_sequence_date_range.sequence_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence_date_range.sequence_id IS 'Main Sequence';


--
-- Name: COLUMN ir_sequence_date_range.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence_date_range.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_sequence_date_range.date_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_sequence_date_range.date_to IS 'To';


--
-- Name: ir_sequence_date_range_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_sequence_date_range_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_sequence_date_range_id_seq OWNER TO odoouser;

--
-- Name: ir_sequence_date_range_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_sequence_date_range_id_seq OWNED BY ir_sequence_date_range.id;


--
-- Name: ir_sequence_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_sequence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_sequence_id_seq OWNER TO odoouser;

--
-- Name: ir_sequence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_sequence_id_seq OWNED BY ir_sequence.id;


--
-- Name: ir_server_object_lines; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_server_object_lines (
    id integer NOT NULL,
    create_uid integer,
    server_id integer,
    create_date timestamp without time zone,
    value text NOT NULL,
    col1 integer NOT NULL,
    write_date timestamp without time zone,
    write_uid integer,
    type character varying NOT NULL
);


ALTER TABLE ir_server_object_lines OWNER TO odoouser;

--
-- Name: TABLE ir_server_object_lines; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_server_object_lines IS 'Server Action value mapping';


--
-- Name: COLUMN ir_server_object_lines.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_server_object_lines.create_uid IS 'Created by';


--
-- Name: COLUMN ir_server_object_lines.server_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_server_object_lines.server_id IS 'Related Server Action';


--
-- Name: COLUMN ir_server_object_lines.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_server_object_lines.create_date IS 'Created on';


--
-- Name: COLUMN ir_server_object_lines.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_server_object_lines.value IS 'Value';


--
-- Name: COLUMN ir_server_object_lines.col1; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_server_object_lines.col1 IS 'Field';


--
-- Name: COLUMN ir_server_object_lines.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_server_object_lines.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_server_object_lines.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_server_object_lines.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_server_object_lines.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_server_object_lines.type IS 'Evaluation Type';


--
-- Name: ir_server_object_lines_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_server_object_lines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_server_object_lines_id_seq OWNER TO odoouser;

--
-- Name: ir_server_object_lines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_server_object_lines_id_seq OWNED BY ir_server_object_lines.id;


--
-- Name: ir_translation; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_translation (
    id integer NOT NULL,
    lang character varying,
    src text,
    name character varying NOT NULL,
    res_id integer,
    module character varying,
    state character varying,
    comments text,
    value text,
    type character varying
);


ALTER TABLE ir_translation OWNER TO odoouser;

--
-- Name: TABLE ir_translation; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_translation IS 'ir.translation';


--
-- Name: COLUMN ir_translation.lang; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_translation.lang IS 'Language';


--
-- Name: COLUMN ir_translation.src; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_translation.src IS 'Internal Source';


--
-- Name: COLUMN ir_translation.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_translation.name IS 'Translated field';


--
-- Name: COLUMN ir_translation.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_translation.res_id IS 'Record ID';


--
-- Name: COLUMN ir_translation.module; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_translation.module IS 'Module';


--
-- Name: COLUMN ir_translation.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_translation.state IS 'Status';


--
-- Name: COLUMN ir_translation.comments; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_translation.comments IS 'Translation comments';


--
-- Name: COLUMN ir_translation.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_translation.value IS 'Translation Value';


--
-- Name: COLUMN ir_translation.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_translation.type IS 'Type';


--
-- Name: ir_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_translation_id_seq OWNER TO odoouser;

--
-- Name: ir_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_translation_id_seq OWNED BY ir_translation.id;


--
-- Name: ir_ui_menu; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_ui_menu (
    id integer NOT NULL,
    parent_left integer,
    parent_right integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    web_icon character varying,
    sequence integer,
    write_uid integer,
    parent_id integer,
    write_date timestamp without time zone,
    action character varying,
    create_uid integer
);


ALTER TABLE ir_ui_menu OWNER TO odoouser;

--
-- Name: TABLE ir_ui_menu; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_ui_menu IS 'ir.ui.menu';


--
-- Name: COLUMN ir_ui_menu.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_menu.create_date IS 'Created on';


--
-- Name: COLUMN ir_ui_menu.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_menu.name IS 'Menu';


--
-- Name: COLUMN ir_ui_menu.web_icon; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_menu.web_icon IS 'Web Icon File';


--
-- Name: COLUMN ir_ui_menu.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_menu.sequence IS 'Sequence';


--
-- Name: COLUMN ir_ui_menu.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_menu.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_ui_menu.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_menu.parent_id IS 'Parent Menu';


--
-- Name: COLUMN ir_ui_menu.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_menu.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_ui_menu.action; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_menu.action IS 'Action';


--
-- Name: COLUMN ir_ui_menu.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_menu.create_uid IS 'Created by';


--
-- Name: ir_ui_menu_group_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_ui_menu_group_rel (
    menu_id integer NOT NULL,
    gid integer NOT NULL
);


ALTER TABLE ir_ui_menu_group_rel OWNER TO odoouser;

--
-- Name: TABLE ir_ui_menu_group_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_ui_menu_group_rel IS 'RELATION BETWEEN ir_ui_menu AND res_groups';


--
-- Name: ir_ui_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_ui_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_ui_menu_id_seq OWNER TO odoouser;

--
-- Name: ir_ui_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_ui_menu_id_seq OWNED BY ir_ui_menu.id;


--
-- Name: ir_ui_view; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_ui_view (
    id integer NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    field_parent character varying,
    create_uid integer,
    model_data_id integer,
    priority integer NOT NULL,
    type character varying,
    arch_db text,
    inherit_id integer,
    key character varying,
    active boolean,
    arch_fs character varying,
    name character varying NOT NULL,
    mode character varying NOT NULL,
    model character varying,
    website_id integer,
    customize_show boolean,
    website_meta_title character varying,
    website_meta_description text,
    website_meta_keywords character varying,
    page boolean,
    CONSTRAINT ir_ui_view_inheritance_mode CHECK ((((mode)::text <> 'extension'::text) OR (inherit_id IS NOT NULL)))
);


ALTER TABLE ir_ui_view OWNER TO odoouser;

--
-- Name: TABLE ir_ui_view; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_ui_view IS 'ir.ui.view';


--
-- Name: COLUMN ir_ui_view.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.create_date IS 'Create Date';


--
-- Name: COLUMN ir_ui_view.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.write_date IS 'Last Modification Date';


--
-- Name: COLUMN ir_ui_view.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_ui_view.field_parent; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.field_parent IS 'Child Field';


--
-- Name: COLUMN ir_ui_view.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.create_uid IS 'Created by';


--
-- Name: COLUMN ir_ui_view.model_data_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.model_data_id IS 'Model Data';


--
-- Name: COLUMN ir_ui_view.priority; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.priority IS 'Sequence';


--
-- Name: COLUMN ir_ui_view.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.type IS 'View Type';


--
-- Name: COLUMN ir_ui_view.arch_db; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.arch_db IS 'Arch Blob';


--
-- Name: COLUMN ir_ui_view.inherit_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.inherit_id IS 'Inherited View';


--
-- Name: COLUMN ir_ui_view.key; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.key IS 'Key';


--
-- Name: COLUMN ir_ui_view.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.active IS 'Active';


--
-- Name: COLUMN ir_ui_view.arch_fs; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.arch_fs IS 'Arch Filename';


--
-- Name: COLUMN ir_ui_view.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.name IS 'View Name';


--
-- Name: COLUMN ir_ui_view.mode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.mode IS 'View inheritance mode';


--
-- Name: COLUMN ir_ui_view.model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.model IS 'Object';


--
-- Name: COLUMN ir_ui_view.website_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.website_id IS 'Website';


--
-- Name: COLUMN ir_ui_view.customize_show; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.customize_show IS 'Show As Optional Inherit';


--
-- Name: COLUMN ir_ui_view.website_meta_title; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.website_meta_title IS 'Website meta title';


--
-- Name: COLUMN ir_ui_view.website_meta_description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.website_meta_description IS 'Website meta description';


--
-- Name: COLUMN ir_ui_view.website_meta_keywords; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.website_meta_keywords IS 'Website meta keywords';


--
-- Name: COLUMN ir_ui_view.page; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view.page IS 'Whether this view is a web page template (complete)';


--
-- Name: ir_ui_view_custom; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_ui_view_custom (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    user_id integer NOT NULL,
    ref_id integer NOT NULL,
    arch text NOT NULL
);


ALTER TABLE ir_ui_view_custom OWNER TO odoouser;

--
-- Name: TABLE ir_ui_view_custom; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_ui_view_custom IS 'ir.ui.view.custom';


--
-- Name: COLUMN ir_ui_view_custom.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view_custom.create_uid IS 'Created by';


--
-- Name: COLUMN ir_ui_view_custom.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view_custom.create_date IS 'Created on';


--
-- Name: COLUMN ir_ui_view_custom.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view_custom.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_ui_view_custom.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view_custom.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_ui_view_custom.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view_custom.user_id IS 'User';


--
-- Name: COLUMN ir_ui_view_custom.ref_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view_custom.ref_id IS 'Original View';


--
-- Name: COLUMN ir_ui_view_custom.arch; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_ui_view_custom.arch IS 'View Architecture';


--
-- Name: ir_ui_view_custom_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_ui_view_custom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_ui_view_custom_id_seq OWNER TO odoouser;

--
-- Name: ir_ui_view_custom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_ui_view_custom_id_seq OWNED BY ir_ui_view_custom.id;


--
-- Name: ir_ui_view_group_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_ui_view_group_rel (
    view_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE ir_ui_view_group_rel OWNER TO odoouser;

--
-- Name: TABLE ir_ui_view_group_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_ui_view_group_rel IS 'RELATION BETWEEN ir_ui_view AND res_groups';


--
-- Name: ir_ui_view_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_ui_view_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_ui_view_id_seq OWNER TO odoouser;

--
-- Name: ir_ui_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_ui_view_id_seq OWNED BY ir_ui_view.id;


--
-- Name: ir_values; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE ir_values (
    id integer NOT NULL,
    model_id integer,
    user_id integer,
    name character varying NOT NULL,
    create_uid integer,
    key2 character varying,
    company_id integer,
    value text,
    write_uid integer,
    key character varying NOT NULL,
    write_date timestamp without time zone,
    create_date timestamp without time zone,
    model character varying NOT NULL,
    res_id integer,
    action_id integer
);


ALTER TABLE ir_values OWNER TO odoouser;

--
-- Name: TABLE ir_values; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE ir_values IS 'ir.values';


--
-- Name: COLUMN ir_values.model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.model_id IS 'Model (change only)';


--
-- Name: COLUMN ir_values.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.user_id IS 'User';


--
-- Name: COLUMN ir_values.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.name IS 'Name';


--
-- Name: COLUMN ir_values.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.create_uid IS 'Created by';


--
-- Name: COLUMN ir_values.key2; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.key2 IS 'Qualifier';


--
-- Name: COLUMN ir_values.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.company_id IS 'Company';


--
-- Name: COLUMN ir_values.value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.value IS 'Value';


--
-- Name: COLUMN ir_values.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_values.key; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.key IS 'Type';


--
-- Name: COLUMN ir_values.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_values.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.create_date IS 'Created on';


--
-- Name: COLUMN ir_values.model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.model IS 'Model Name';


--
-- Name: COLUMN ir_values.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.res_id IS 'Record ID';


--
-- Name: COLUMN ir_values.action_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN ir_values.action_id IS 'Action (change only)';


--
-- Name: ir_values_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE ir_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ir_values_id_seq OWNER TO odoouser;

--
-- Name: ir_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE ir_values_id_seq OWNED BY ir_values.id;


--
-- Name: mail_alias; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_alias (
    id integer NOT NULL,
    create_uid integer,
    alias_parent_thread_id integer,
    alias_defaults text NOT NULL,
    alias_contact character varying NOT NULL,
    alias_parent_model_id integer,
    write_uid integer,
    alias_force_thread_id integer,
    alias_model_id integer NOT NULL,
    write_date timestamp without time zone,
    create_date timestamp without time zone,
    alias_user_id integer,
    alias_name character varying
);


ALTER TABLE mail_alias OWNER TO odoouser;

--
-- Name: TABLE mail_alias; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_alias IS 'Email Aliases';


--
-- Name: COLUMN mail_alias.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.create_uid IS 'Created by';


--
-- Name: COLUMN mail_alias.alias_parent_thread_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.alias_parent_thread_id IS 'Parent Record Thread ID';


--
-- Name: COLUMN mail_alias.alias_defaults; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.alias_defaults IS 'Default Values';


--
-- Name: COLUMN mail_alias.alias_contact; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.alias_contact IS 'Alias Contact Security';


--
-- Name: COLUMN mail_alias.alias_parent_model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.alias_parent_model_id IS 'Parent Model';


--
-- Name: COLUMN mail_alias.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_alias.alias_force_thread_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.alias_force_thread_id IS 'Record Thread ID';


--
-- Name: COLUMN mail_alias.alias_model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.alias_model_id IS 'Aliased Model';


--
-- Name: COLUMN mail_alias.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_alias.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.create_date IS 'Created on';


--
-- Name: COLUMN mail_alias.alias_user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.alias_user_id IS 'Owner';


--
-- Name: COLUMN mail_alias.alias_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_alias.alias_name IS 'Alias Name';


--
-- Name: mail_alias_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_alias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_alias_id_seq OWNER TO odoouser;

--
-- Name: mail_alias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_alias_id_seq OWNED BY mail_alias.id;


--
-- Name: mail_channel_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_channel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_channel_id_seq OWNER TO odoouser;

--
-- Name: mail_channel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_channel_id_seq OWNED BY mail_channel.id;


--
-- Name: mail_channel_mail_wizard_invite_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_channel_mail_wizard_invite_rel (
    mail_wizard_invite_id integer NOT NULL,
    mail_channel_id integer NOT NULL
);


ALTER TABLE mail_channel_mail_wizard_invite_rel OWNER TO odoouser;

--
-- Name: TABLE mail_channel_mail_wizard_invite_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_channel_mail_wizard_invite_rel IS 'RELATION BETWEEN mail_wizard_invite AND mail_channel';


--
-- Name: mail_channel_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_channel_partner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_channel_partner_id_seq OWNER TO odoouser;

--
-- Name: mail_channel_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_channel_partner_id_seq OWNED BY mail_channel_partner.id;


--
-- Name: mail_channel_res_group_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_channel_res_group_rel (
    mail_channel_id integer NOT NULL,
    groups_id integer NOT NULL
);


ALTER TABLE mail_channel_res_group_rel OWNER TO odoouser;

--
-- Name: TABLE mail_channel_res_group_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_channel_res_group_rel IS 'RELATION BETWEEN mail_channel AND res_groups';


--
-- Name: mail_compose_message; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_compose_message (
    id integer NOT NULL,
    create_date timestamp without time zone,
    no_auto_thread boolean,
    mail_server_id integer,
    write_uid integer,
    notify boolean,
    active_domain text,
    subject character varying,
    composition_mode character varying,
    create_uid integer,
    is_log boolean,
    parent_id integer,
    subtype_id integer,
    res_id integer,
    message_id character varying,
    body text,
    record_name character varying,
    write_date timestamp without time zone,
    date timestamp without time zone,
    model character varying,
    use_active_domain boolean,
    email_from character varying,
    reply_to character varying,
    author_id integer,
    message_type character varying NOT NULL,
    template_id integer
);


ALTER TABLE mail_compose_message OWNER TO odoouser;

--
-- Name: TABLE mail_compose_message; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_compose_message IS 'Email composition wizard';


--
-- Name: COLUMN mail_compose_message.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.create_date IS 'Created on';


--
-- Name: COLUMN mail_compose_message.no_auto_thread; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.no_auto_thread IS 'No threading for answers';


--
-- Name: COLUMN mail_compose_message.mail_server_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.mail_server_id IS 'Outgoing mail server';


--
-- Name: COLUMN mail_compose_message.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_compose_message.notify; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.notify IS 'Notify followers';


--
-- Name: COLUMN mail_compose_message.active_domain; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.active_domain IS 'Active domain';


--
-- Name: COLUMN mail_compose_message.subject; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.subject IS 'Subject';


--
-- Name: COLUMN mail_compose_message.composition_mode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.composition_mode IS 'Composition mode';


--
-- Name: COLUMN mail_compose_message.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.create_uid IS 'Created by';


--
-- Name: COLUMN mail_compose_message.is_log; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.is_log IS 'Log an Internal Note';


--
-- Name: COLUMN mail_compose_message.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.parent_id IS 'Parent Message';


--
-- Name: COLUMN mail_compose_message.subtype_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.subtype_id IS 'Subtype';


--
-- Name: COLUMN mail_compose_message.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.res_id IS 'Related Document ID';


--
-- Name: COLUMN mail_compose_message.message_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.message_id IS 'Message-Id';


--
-- Name: COLUMN mail_compose_message.body; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.body IS 'Contents';


--
-- Name: COLUMN mail_compose_message.record_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.record_name IS 'Message Record Name';


--
-- Name: COLUMN mail_compose_message.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_compose_message.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.date IS 'Date';


--
-- Name: COLUMN mail_compose_message.model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.model IS 'Related Document Model';


--
-- Name: COLUMN mail_compose_message.use_active_domain; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.use_active_domain IS 'Use active domain';


--
-- Name: COLUMN mail_compose_message.email_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.email_from IS 'From';


--
-- Name: COLUMN mail_compose_message.reply_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.reply_to IS 'Reply-To';


--
-- Name: COLUMN mail_compose_message.author_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.author_id IS 'Author';


--
-- Name: COLUMN mail_compose_message.message_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.message_type IS 'Type';


--
-- Name: COLUMN mail_compose_message.template_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_compose_message.template_id IS 'Use template';


--
-- Name: mail_compose_message_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_compose_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_compose_message_id_seq OWNER TO odoouser;

--
-- Name: mail_compose_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_compose_message_id_seq OWNED BY mail_compose_message.id;


--
-- Name: mail_compose_message_ir_attachments_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_compose_message_ir_attachments_rel (
    wizard_id integer NOT NULL,
    attachment_id integer NOT NULL
);


ALTER TABLE mail_compose_message_ir_attachments_rel OWNER TO odoouser;

--
-- Name: TABLE mail_compose_message_ir_attachments_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_compose_message_ir_attachments_rel IS 'RELATION BETWEEN mail_compose_message AND ir_attachment';


--
-- Name: mail_compose_message_res_partner_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_compose_message_res_partner_rel (
    wizard_id integer NOT NULL,
    partner_id integer NOT NULL
);


ALTER TABLE mail_compose_message_res_partner_rel OWNER TO odoouser;

--
-- Name: TABLE mail_compose_message_res_partner_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_compose_message_res_partner_rel IS 'RELATION BETWEEN mail_compose_message AND res_partner';


--
-- Name: mail_followers; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_followers (
    id integer NOT NULL,
    partner_id integer,
    channel_id integer,
    res_model character varying NOT NULL,
    res_id integer,
    CONSTRAINT mail_followers_partner_xor_channel CHECK (((partner_id IS NULL) <> (channel_id IS NULL)))
);


ALTER TABLE mail_followers OWNER TO odoouser;

--
-- Name: TABLE mail_followers; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_followers IS 'Document Followers';


--
-- Name: COLUMN mail_followers.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_followers.partner_id IS 'Related Partner';


--
-- Name: COLUMN mail_followers.channel_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_followers.channel_id IS 'Listener';


--
-- Name: COLUMN mail_followers.res_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_followers.res_model IS 'Related Document Model';


--
-- Name: COLUMN mail_followers.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_followers.res_id IS 'Related Document ID';


--
-- Name: mail_followers_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_followers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_followers_id_seq OWNER TO odoouser;

--
-- Name: mail_followers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_followers_id_seq OWNED BY mail_followers.id;


--
-- Name: mail_followers_mail_message_subtype_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_followers_mail_message_subtype_rel (
    mail_followers_id integer NOT NULL,
    mail_message_subtype_id integer NOT NULL
);


ALTER TABLE mail_followers_mail_message_subtype_rel OWNER TO odoouser;

--
-- Name: TABLE mail_followers_mail_message_subtype_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_followers_mail_message_subtype_rel IS 'RELATION BETWEEN mail_followers AND mail_message_subtype';


--
-- Name: mail_mail; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_mail (
    id integer NOT NULL,
    mail_message_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    notification boolean,
    auto_delete boolean,
    body_html text,
    write_uid integer,
    email_to text,
    headers text,
    state character varying,
    "references" text,
    write_date timestamp without time zone,
    email_cc character varying,
    failure_reason text,
    fetchmail_server_id integer
);


ALTER TABLE mail_mail OWNER TO odoouser;

--
-- Name: TABLE mail_mail; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_mail IS 'Outgoing Mails';


--
-- Name: COLUMN mail_mail.mail_message_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.mail_message_id IS 'Message';


--
-- Name: COLUMN mail_mail.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.create_uid IS 'Created by';


--
-- Name: COLUMN mail_mail.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.create_date IS 'Created on';


--
-- Name: COLUMN mail_mail.notification; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.notification IS 'Is Notification';


--
-- Name: COLUMN mail_mail.auto_delete; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.auto_delete IS 'Auto Delete';


--
-- Name: COLUMN mail_mail.body_html; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.body_html IS 'Rich-text Contents';


--
-- Name: COLUMN mail_mail.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_mail.email_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.email_to IS 'To';


--
-- Name: COLUMN mail_mail.headers; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.headers IS 'Headers';


--
-- Name: COLUMN mail_mail.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.state IS 'Status';


--
-- Name: COLUMN mail_mail."references"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail."references" IS 'References';


--
-- Name: COLUMN mail_mail.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_mail.email_cc; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.email_cc IS 'Cc';


--
-- Name: COLUMN mail_mail.failure_reason; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.failure_reason IS 'Failure Reason';


--
-- Name: COLUMN mail_mail.fetchmail_server_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_mail.fetchmail_server_id IS 'Inbound Mail Server';


--
-- Name: mail_mail_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_mail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_mail_id_seq OWNER TO odoouser;

--
-- Name: mail_mail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_mail_id_seq OWNED BY mail_mail.id;


--
-- Name: mail_mail_res_partner_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_mail_res_partner_rel (
    mail_mail_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE mail_mail_res_partner_rel OWNER TO odoouser;

--
-- Name: TABLE mail_mail_res_partner_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_mail_res_partner_rel IS 'RELATION BETWEEN mail_mail AND res_partner';


--
-- Name: mail_message_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_message_id_seq OWNER TO odoouser;

--
-- Name: mail_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_message_id_seq OWNED BY mail_message.id;


--
-- Name: mail_message_res_partner_needaction_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_message_res_partner_needaction_rel (
    mail_message_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE mail_message_res_partner_needaction_rel OWNER TO odoouser;

--
-- Name: TABLE mail_message_res_partner_needaction_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_message_res_partner_needaction_rel IS 'RELATION BETWEEN mail_message AND res_partner';


--
-- Name: mail_message_res_partner_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_message_res_partner_rel (
    mail_message_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE mail_message_res_partner_rel OWNER TO odoouser;

--
-- Name: TABLE mail_message_res_partner_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_message_res_partner_rel IS 'RELATION BETWEEN mail_message AND res_partner';


--
-- Name: mail_message_res_partner_starred_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_message_res_partner_starred_rel (
    mail_message_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE mail_message_res_partner_starred_rel OWNER TO odoouser;

--
-- Name: TABLE mail_message_res_partner_starred_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_message_res_partner_starred_rel IS 'RELATION BETWEEN mail_message AND res_partner';


--
-- Name: mail_message_subtype; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_message_subtype (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    description text,
    sequence integer,
    "default" boolean,
    res_model character varying,
    write_uid integer,
    parent_id integer,
    internal boolean,
    write_date timestamp without time zone,
    relation_field character varying,
    hidden boolean,
    name character varying NOT NULL
);


ALTER TABLE mail_message_subtype OWNER TO odoouser;

--
-- Name: TABLE mail_message_subtype; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_message_subtype IS 'Message subtypes';


--
-- Name: COLUMN mail_message_subtype.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.create_uid IS 'Created by';


--
-- Name: COLUMN mail_message_subtype.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.create_date IS 'Created on';


--
-- Name: COLUMN mail_message_subtype.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.description IS 'Description';


--
-- Name: COLUMN mail_message_subtype.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.sequence IS 'Sequence';


--
-- Name: COLUMN mail_message_subtype."default"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype."default" IS 'Default';


--
-- Name: COLUMN mail_message_subtype.res_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.res_model IS 'Model';


--
-- Name: COLUMN mail_message_subtype.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_message_subtype.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.parent_id IS 'Parent';


--
-- Name: COLUMN mail_message_subtype.internal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.internal IS 'Internal Only';


--
-- Name: COLUMN mail_message_subtype.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_message_subtype.relation_field; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.relation_field IS 'Relation field';


--
-- Name: COLUMN mail_message_subtype.hidden; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.hidden IS 'Hidden';


--
-- Name: COLUMN mail_message_subtype.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_message_subtype.name IS 'Message Type';


--
-- Name: mail_message_subtype_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_message_subtype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_message_subtype_id_seq OWNER TO odoouser;

--
-- Name: mail_message_subtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_message_subtype_id_seq OWNED BY mail_message_subtype.id;


--
-- Name: mail_shortcode; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_shortcode (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    description character varying,
    write_uid integer,
    source character varying NOT NULL,
    shortcode_type character varying NOT NULL,
    substitution character varying NOT NULL,
    write_date timestamp without time zone
);


ALTER TABLE mail_shortcode OWNER TO odoouser;

--
-- Name: TABLE mail_shortcode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_shortcode IS 'Canned Response / Shortcode';


--
-- Name: COLUMN mail_shortcode.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_shortcode.create_uid IS 'Created by';


--
-- Name: COLUMN mail_shortcode.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_shortcode.create_date IS 'Created on';


--
-- Name: COLUMN mail_shortcode.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_shortcode.description IS 'Description';


--
-- Name: COLUMN mail_shortcode.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_shortcode.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_shortcode.source; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_shortcode.source IS 'Shortcut';


--
-- Name: COLUMN mail_shortcode.shortcode_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_shortcode.shortcode_type IS 'Shortcode type';


--
-- Name: COLUMN mail_shortcode.substitution; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_shortcode.substitution IS 'Substitution';


--
-- Name: COLUMN mail_shortcode.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_shortcode.write_date IS 'Last Updated on';


--
-- Name: mail_shortcode_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_shortcode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_shortcode_id_seq OWNER TO odoouser;

--
-- Name: mail_shortcode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_shortcode_id_seq OWNED BY mail_shortcode.id;


--
-- Name: mail_template; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_template (
    id integer NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    auto_delete boolean,
    mail_server_id integer,
    write_uid integer,
    partner_to character varying,
    ref_ir_act_window integer,
    subject character varying,
    create_uid integer,
    report_template integer,
    ref_ir_value integer,
    user_signature boolean,
    null_value character varying,
    email_cc character varying,
    model_id integer,
    sub_model_object_field integer,
    body_html text,
    email_to character varying,
    sub_object integer,
    copyvalue character varying,
    lang character varying,
    name character varying,
    model_object_field integer,
    report_name character varying,
    use_default_to boolean,
    reply_to character varying,
    model character varying,
    email_from character varying
);


ALTER TABLE mail_template OWNER TO odoouser;

--
-- Name: TABLE mail_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_template IS 'Email Templates';


--
-- Name: COLUMN mail_template.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.create_date IS 'Created on';


--
-- Name: COLUMN mail_template.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_template.auto_delete; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.auto_delete IS 'Auto Delete';


--
-- Name: COLUMN mail_template.mail_server_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.mail_server_id IS 'Outgoing Mail Server';


--
-- Name: COLUMN mail_template.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_template.partner_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.partner_to IS 'To (Partners)';


--
-- Name: COLUMN mail_template.ref_ir_act_window; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.ref_ir_act_window IS 'Sidebar action';


--
-- Name: COLUMN mail_template.subject; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.subject IS 'Subject';


--
-- Name: COLUMN mail_template.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.create_uid IS 'Created by';


--
-- Name: COLUMN mail_template.report_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.report_template IS 'Optional report to print and attach';


--
-- Name: COLUMN mail_template.ref_ir_value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.ref_ir_value IS 'Sidebar Button';


--
-- Name: COLUMN mail_template.user_signature; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.user_signature IS 'Add Signature';


--
-- Name: COLUMN mail_template.null_value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.null_value IS 'Default Value';


--
-- Name: COLUMN mail_template.email_cc; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.email_cc IS 'Cc';


--
-- Name: COLUMN mail_template.model_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.model_id IS 'Applies to';


--
-- Name: COLUMN mail_template.sub_model_object_field; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.sub_model_object_field IS 'Sub-field';


--
-- Name: COLUMN mail_template.body_html; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.body_html IS 'Body';


--
-- Name: COLUMN mail_template.email_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.email_to IS 'To (Emails)';


--
-- Name: COLUMN mail_template.sub_object; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.sub_object IS 'Sub-model';


--
-- Name: COLUMN mail_template.copyvalue; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.copyvalue IS 'Placeholder Expression';


--
-- Name: COLUMN mail_template.lang; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.lang IS 'Language';


--
-- Name: COLUMN mail_template.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.name IS 'Name';


--
-- Name: COLUMN mail_template.model_object_field; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.model_object_field IS 'Field';


--
-- Name: COLUMN mail_template.report_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.report_name IS 'Report Filename';


--
-- Name: COLUMN mail_template.use_default_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.use_default_to IS 'Default recipients';


--
-- Name: COLUMN mail_template.reply_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.reply_to IS 'Reply-To';


--
-- Name: COLUMN mail_template.model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.model IS 'Related Document Model';


--
-- Name: COLUMN mail_template.email_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_template.email_from IS 'From';


--
-- Name: mail_template_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_template_id_seq OWNER TO odoouser;

--
-- Name: mail_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_template_id_seq OWNED BY mail_template.id;


--
-- Name: mail_tracking_value; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_tracking_value (
    id integer NOT NULL,
    create_uid integer,
    field_type character varying,
    create_date timestamp without time zone,
    old_value_datetime timestamp without time zone,
    old_value_monetary double precision,
    new_value_monetary double precision,
    field_desc character varying NOT NULL,
    old_value_char character varying,
    old_value_float double precision,
    new_value_text text,
    write_uid integer,
    new_value_float double precision,
    field character varying NOT NULL,
    old_value_text text,
    write_date timestamp without time zone,
    new_value_char character varying,
    new_value_datetime timestamp without time zone,
    old_value_integer integer,
    new_value_integer integer,
    mail_message_id integer NOT NULL
);


ALTER TABLE mail_tracking_value OWNER TO odoouser;

--
-- Name: TABLE mail_tracking_value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_tracking_value IS 'Mail Tracking Value';


--
-- Name: COLUMN mail_tracking_value.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.create_uid IS 'Created by';


--
-- Name: COLUMN mail_tracking_value.field_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.field_type IS 'Field Type';


--
-- Name: COLUMN mail_tracking_value.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.create_date IS 'Created on';


--
-- Name: COLUMN mail_tracking_value.old_value_datetime; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.old_value_datetime IS 'Old Value DateTime';


--
-- Name: COLUMN mail_tracking_value.old_value_monetary; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.old_value_monetary IS 'Old Value Monetary';


--
-- Name: COLUMN mail_tracking_value.new_value_monetary; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.new_value_monetary IS 'New Value Monetary';


--
-- Name: COLUMN mail_tracking_value.field_desc; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.field_desc IS 'Field Description';


--
-- Name: COLUMN mail_tracking_value.old_value_char; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.old_value_char IS 'Old Value Char';


--
-- Name: COLUMN mail_tracking_value.old_value_float; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.old_value_float IS 'Old Value Float';


--
-- Name: COLUMN mail_tracking_value.new_value_text; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.new_value_text IS 'New Value Text';


--
-- Name: COLUMN mail_tracking_value.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_tracking_value.new_value_float; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.new_value_float IS 'New Value Float';


--
-- Name: COLUMN mail_tracking_value.field; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.field IS 'Changed Field';


--
-- Name: COLUMN mail_tracking_value.old_value_text; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.old_value_text IS 'Old Value Text';


--
-- Name: COLUMN mail_tracking_value.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_tracking_value.new_value_char; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.new_value_char IS 'New Value Char';


--
-- Name: COLUMN mail_tracking_value.new_value_datetime; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.new_value_datetime IS 'New Value Datetime';


--
-- Name: COLUMN mail_tracking_value.old_value_integer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.old_value_integer IS 'Old Value Integer';


--
-- Name: COLUMN mail_tracking_value.new_value_integer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.new_value_integer IS 'New Value Integer';


--
-- Name: COLUMN mail_tracking_value.mail_message_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_tracking_value.mail_message_id IS 'Message ID';


--
-- Name: mail_tracking_value_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_tracking_value_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_tracking_value_id_seq OWNER TO odoouser;

--
-- Name: mail_tracking_value_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_tracking_value_id_seq OWNED BY mail_tracking_value.id;


--
-- Name: mail_wizard_invite; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_wizard_invite (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    res_model character varying NOT NULL,
    send_mail boolean,
    write_uid integer,
    write_date timestamp without time zone,
    message text,
    res_id integer
);


ALTER TABLE mail_wizard_invite OWNER TO odoouser;

--
-- Name: TABLE mail_wizard_invite; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_wizard_invite IS 'Invite wizard';


--
-- Name: COLUMN mail_wizard_invite.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_wizard_invite.create_uid IS 'Created by';


--
-- Name: COLUMN mail_wizard_invite.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_wizard_invite.create_date IS 'Created on';


--
-- Name: COLUMN mail_wizard_invite.res_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_wizard_invite.res_model IS 'Related Document Model';


--
-- Name: COLUMN mail_wizard_invite.send_mail; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_wizard_invite.send_mail IS 'Send Email';


--
-- Name: COLUMN mail_wizard_invite.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_wizard_invite.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_wizard_invite.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_wizard_invite.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_wizard_invite.message; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_wizard_invite.message IS 'Message';


--
-- Name: COLUMN mail_wizard_invite.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN mail_wizard_invite.res_id IS 'Related Document ID';


--
-- Name: mail_wizard_invite_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE mail_wizard_invite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mail_wizard_invite_id_seq OWNER TO odoouser;

--
-- Name: mail_wizard_invite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE mail_wizard_invite_id_seq OWNED BY mail_wizard_invite.id;


--
-- Name: mail_wizard_invite_res_partner_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE mail_wizard_invite_res_partner_rel (
    mail_wizard_invite_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE mail_wizard_invite_res_partner_rel OWNER TO odoouser;

--
-- Name: TABLE mail_wizard_invite_res_partner_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE mail_wizard_invite_res_partner_rel IS 'RELATION BETWEEN mail_wizard_invite AND res_partner';


--
-- Name: marketing_config_settings; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE marketing_config_settings (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    module_marketing_campaign boolean,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE marketing_config_settings OWNER TO odoouser;

--
-- Name: TABLE marketing_config_settings; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE marketing_config_settings IS 'marketing.config.settings';


--
-- Name: COLUMN marketing_config_settings.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN marketing_config_settings.create_uid IS 'Created by';


--
-- Name: COLUMN marketing_config_settings.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN marketing_config_settings.create_date IS 'Created on';


--
-- Name: COLUMN marketing_config_settings.module_marketing_campaign; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN marketing_config_settings.module_marketing_campaign IS 'Marketing campaigns';


--
-- Name: COLUMN marketing_config_settings.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN marketing_config_settings.write_uid IS 'Last Updated by';


--
-- Name: COLUMN marketing_config_settings.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN marketing_config_settings.write_date IS 'Last Updated on';


--
-- Name: marketing_config_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE marketing_config_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE marketing_config_settings_id_seq OWNER TO odoouser;

--
-- Name: marketing_config_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE marketing_config_settings_id_seq OWNED BY marketing_config_settings.id;


--
-- Name: meeting_category_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE meeting_category_rel (
    event_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE meeting_category_rel OWNER TO odoouser;

--
-- Name: TABLE meeting_category_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE meeting_category_rel IS 'RELATION BETWEEN calendar_event AND calendar_event_type';


--
-- Name: merge_opportunity_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE merge_opportunity_rel (
    merge_id integer NOT NULL,
    opportunity_id integer NOT NULL
);


ALTER TABLE merge_opportunity_rel OWNER TO odoouser;

--
-- Name: TABLE merge_opportunity_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE merge_opportunity_rel IS 'RELATION BETWEEN crm_merge_opportunity AND crm_lead';


--
-- Name: message_attachment_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE message_attachment_rel (
    message_id integer NOT NULL,
    attachment_id integer NOT NULL
);


ALTER TABLE message_attachment_rel OWNER TO odoouser;

--
-- Name: TABLE message_attachment_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE message_attachment_rel IS 'RELATION BETWEEN mail_message AND ir_attachment';


--
-- Name: payment_acquirer; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE payment_acquirer (
    id integer NOT NULL,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    fees_active boolean,
    write_uid integer,
    cancel_msg text,
    registration_view_template_id integer,
    fees_dom_fixed double precision,
    fees_int_fixed double precision,
    create_uid integer,
    sequence integer,
    company_id integer NOT NULL,
    environment character varying,
    provider character varying NOT NULL,
    website_published boolean,
    auto_confirm character varying NOT NULL,
    pending_msg text,
    post_msg text,
    fees_int_var double precision,
    done_msg text,
    pre_msg text,
    error_msg text,
    fees_dom_var double precision,
    name character varying NOT NULL,
    view_template_id integer NOT NULL
);


ALTER TABLE payment_acquirer OWNER TO odoouser;

--
-- Name: TABLE payment_acquirer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE payment_acquirer IS 'Payment Acquirer';


--
-- Name: COLUMN payment_acquirer.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.create_date IS 'Created on';


--
-- Name: COLUMN payment_acquirer.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.write_date IS 'Last Updated on';


--
-- Name: COLUMN payment_acquirer.fees_active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.fees_active IS 'Add Extra Fees';


--
-- Name: COLUMN payment_acquirer.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.write_uid IS 'Last Updated by';


--
-- Name: COLUMN payment_acquirer.cancel_msg; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.cancel_msg IS 'Cancel Message';


--
-- Name: COLUMN payment_acquirer.registration_view_template_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.registration_view_template_id IS 'S2S Form Template';


--
-- Name: COLUMN payment_acquirer.fees_dom_fixed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.fees_dom_fixed IS 'Fixed domestic fees';


--
-- Name: COLUMN payment_acquirer.fees_int_fixed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.fees_int_fixed IS 'Fixed international fees';


--
-- Name: COLUMN payment_acquirer.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.create_uid IS 'Created by';


--
-- Name: COLUMN payment_acquirer.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.sequence IS 'Sequence';


--
-- Name: COLUMN payment_acquirer.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.company_id IS 'Company';


--
-- Name: COLUMN payment_acquirer.environment; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.environment IS 'Environment';


--
-- Name: COLUMN payment_acquirer.provider; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.provider IS 'Provider';


--
-- Name: COLUMN payment_acquirer.website_published; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.website_published IS 'Visible in Portal / Website';


--
-- Name: COLUMN payment_acquirer.auto_confirm; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.auto_confirm IS 'Order Confirmation';


--
-- Name: COLUMN payment_acquirer.pending_msg; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.pending_msg IS 'Pending Message';


--
-- Name: COLUMN payment_acquirer.post_msg; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.post_msg IS 'Thanks Message';


--
-- Name: COLUMN payment_acquirer.fees_int_var; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.fees_int_var IS 'Variable international fees (in percents)';


--
-- Name: COLUMN payment_acquirer.done_msg; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.done_msg IS 'Done Message';


--
-- Name: COLUMN payment_acquirer.pre_msg; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.pre_msg IS 'Help Message';


--
-- Name: COLUMN payment_acquirer.error_msg; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.error_msg IS 'Error Message';


--
-- Name: COLUMN payment_acquirer.fees_dom_var; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.fees_dom_var IS 'Variable domestic fees (in percents)';


--
-- Name: COLUMN payment_acquirer.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.name IS 'Name';


--
-- Name: COLUMN payment_acquirer.view_template_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_acquirer.view_template_id IS 'Form Button Template';


--
-- Name: payment_acquirer_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE payment_acquirer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE payment_acquirer_id_seq OWNER TO odoouser;

--
-- Name: payment_acquirer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE payment_acquirer_id_seq OWNED BY payment_acquirer.id;


--
-- Name: payment_method; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE payment_method (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying,
    write_uid integer,
    acquirer_ref character varying NOT NULL,
    acquirer_id integer NOT NULL,
    write_date timestamp without time zone,
    active boolean,
    partner_id integer NOT NULL
);


ALTER TABLE payment_method OWNER TO odoouser;

--
-- Name: TABLE payment_method; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE payment_method IS 'payment.method';


--
-- Name: COLUMN payment_method.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_method.create_uid IS 'Created by';


--
-- Name: COLUMN payment_method.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_method.create_date IS 'Created on';


--
-- Name: COLUMN payment_method.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_method.name IS 'Name';


--
-- Name: COLUMN payment_method.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_method.write_uid IS 'Last Updated by';


--
-- Name: COLUMN payment_method.acquirer_ref; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_method.acquirer_ref IS 'Acquirer Ref.';


--
-- Name: COLUMN payment_method.acquirer_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_method.acquirer_id IS 'Acquirer Account';


--
-- Name: COLUMN payment_method.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_method.write_date IS 'Last Updated on';


--
-- Name: COLUMN payment_method.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_method.active IS 'Active';


--
-- Name: COLUMN payment_method.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_method.partner_id IS 'Partner';


--
-- Name: payment_method_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE payment_method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE payment_method_id_seq OWNER TO odoouser;

--
-- Name: payment_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE payment_method_id_seq OWNED BY payment_method.id;


--
-- Name: payment_transaction; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE payment_transaction (
    id integer NOT NULL,
    state_message text,
    callback_eval character varying,
    create_date timestamp without time zone,
    reference character varying NOT NULL,
    write_uid integer,
    currency_id integer NOT NULL,
    acquirer_id integer NOT NULL,
    fees numeric,
    partner_id integer,
    payment_method_id integer,
    create_uid integer,
    partner_name character varying,
    partner_phone character varying,
    state character varying NOT NULL,
    type character varying NOT NULL,
    partner_country_id integer NOT NULL,
    acquirer_reference character varying,
    partner_address character varying,
    partner_email character varying,
    partner_lang character varying,
    write_date timestamp without time zone,
    partner_zip character varying,
    html_3ds character varying,
    date_validate timestamp without time zone,
    partner_city character varying,
    amount numeric NOT NULL,
    sale_order_id integer
);


ALTER TABLE payment_transaction OWNER TO odoouser;

--
-- Name: TABLE payment_transaction; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE payment_transaction IS 'Payment Transaction';


--
-- Name: COLUMN payment_transaction.state_message; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.state_message IS 'Message';


--
-- Name: COLUMN payment_transaction.callback_eval; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.callback_eval IS 'S2S Callback';


--
-- Name: COLUMN payment_transaction.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.create_date IS 'Creation Date';


--
-- Name: COLUMN payment_transaction.reference; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.reference IS 'Reference';


--
-- Name: COLUMN payment_transaction.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.write_uid IS 'Last Updated by';


--
-- Name: COLUMN payment_transaction.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.currency_id IS 'Currency';


--
-- Name: COLUMN payment_transaction.acquirer_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.acquirer_id IS 'Acquirer';


--
-- Name: COLUMN payment_transaction.fees; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.fees IS 'Fees';


--
-- Name: COLUMN payment_transaction.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.partner_id IS 'Partner';


--
-- Name: COLUMN payment_transaction.payment_method_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.payment_method_id IS 'Payment Method';


--
-- Name: COLUMN payment_transaction.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.create_uid IS 'Created by';


--
-- Name: COLUMN payment_transaction.partner_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.partner_name IS 'Partner Name';


--
-- Name: COLUMN payment_transaction.partner_phone; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.partner_phone IS 'Phone';


--
-- Name: COLUMN payment_transaction.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.state IS 'Status';


--
-- Name: COLUMN payment_transaction.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.type IS 'Type';


--
-- Name: COLUMN payment_transaction.partner_country_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.partner_country_id IS 'Country';


--
-- Name: COLUMN payment_transaction.acquirer_reference; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.acquirer_reference IS 'Acquirer Reference';


--
-- Name: COLUMN payment_transaction.partner_address; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.partner_address IS 'Address';


--
-- Name: COLUMN payment_transaction.partner_email; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.partner_email IS 'Email';


--
-- Name: COLUMN payment_transaction.partner_lang; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.partner_lang IS 'Language';


--
-- Name: COLUMN payment_transaction.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.write_date IS 'Last Updated on';


--
-- Name: COLUMN payment_transaction.partner_zip; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.partner_zip IS 'Zip';


--
-- Name: COLUMN payment_transaction.html_3ds; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.html_3ds IS '3D Secure HTML';


--
-- Name: COLUMN payment_transaction.date_validate; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.date_validate IS 'Validation Date';


--
-- Name: COLUMN payment_transaction.partner_city; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.partner_city IS 'City';


--
-- Name: COLUMN payment_transaction.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.amount IS 'Amount';


--
-- Name: COLUMN payment_transaction.sale_order_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN payment_transaction.sale_order_id IS 'Sale Order';


--
-- Name: payment_transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE payment_transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE payment_transaction_id_seq OWNER TO odoouser;

--
-- Name: payment_transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE payment_transaction_id_seq OWNED BY payment_transaction.id;


--
-- Name: portal_wizard; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE portal_wizard (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    welcome_message text,
    write_uid integer,
    write_date timestamp without time zone,
    portal_id integer NOT NULL
);


ALTER TABLE portal_wizard OWNER TO odoouser;

--
-- Name: TABLE portal_wizard; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE portal_wizard IS 'Portal Access Management';


--
-- Name: COLUMN portal_wizard.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard.create_uid IS 'Created by';


--
-- Name: COLUMN portal_wizard.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard.create_date IS 'Created on';


--
-- Name: COLUMN portal_wizard.welcome_message; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard.welcome_message IS 'Invitation Message';


--
-- Name: COLUMN portal_wizard.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard.write_uid IS 'Last Updated by';


--
-- Name: COLUMN portal_wizard.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard.write_date IS 'Last Updated on';


--
-- Name: COLUMN portal_wizard.portal_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard.portal_id IS 'Portal';


--
-- Name: portal_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE portal_wizard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE portal_wizard_id_seq OWNER TO odoouser;

--
-- Name: portal_wizard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE portal_wizard_id_seq OWNED BY portal_wizard.id;


--
-- Name: portal_wizard_user; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE portal_wizard_user (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    wizard_id integer NOT NULL,
    write_uid integer,
    email character varying(240),
    write_date timestamp without time zone,
    user_id integer,
    in_portal boolean,
    partner_id integer NOT NULL
);


ALTER TABLE portal_wizard_user OWNER TO odoouser;

--
-- Name: TABLE portal_wizard_user; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE portal_wizard_user IS 'Portal User Config';


--
-- Name: COLUMN portal_wizard_user.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard_user.create_uid IS 'Created by';


--
-- Name: COLUMN portal_wizard_user.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard_user.create_date IS 'Created on';


--
-- Name: COLUMN portal_wizard_user.wizard_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard_user.wizard_id IS 'Wizard';


--
-- Name: COLUMN portal_wizard_user.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard_user.write_uid IS 'Last Updated by';


--
-- Name: COLUMN portal_wizard_user.email; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard_user.email IS 'Email';


--
-- Name: COLUMN portal_wizard_user.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard_user.write_date IS 'Last Updated on';


--
-- Name: COLUMN portal_wizard_user.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard_user.user_id IS 'Login User';


--
-- Name: COLUMN portal_wizard_user.in_portal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard_user.in_portal IS 'In Portal';


--
-- Name: COLUMN portal_wizard_user.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN portal_wizard_user.partner_id IS 'Contact';


--
-- Name: portal_wizard_user_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE portal_wizard_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE portal_wizard_user_id_seq OWNER TO odoouser;

--
-- Name: portal_wizard_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE portal_wizard_user_id_seq OWNED BY portal_wizard_user.id;


--
-- Name: procurement_group; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE procurement_group (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    move_type character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE procurement_group OWNER TO odoouser;

--
-- Name: TABLE procurement_group; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE procurement_group IS 'Procurement Requisition';


--
-- Name: COLUMN procurement_group.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_group.create_uid IS 'Created by';


--
-- Name: COLUMN procurement_group.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_group.create_date IS 'Created on';


--
-- Name: COLUMN procurement_group.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_group.name IS 'Reference';


--
-- Name: COLUMN procurement_group.move_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_group.move_type IS 'Delivery Method';


--
-- Name: COLUMN procurement_group.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_group.write_uid IS 'Last Updated by';


--
-- Name: COLUMN procurement_group.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_group.write_date IS 'Last Updated on';


--
-- Name: procurement_group_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE procurement_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE procurement_group_id_seq OWNER TO odoouser;

--
-- Name: procurement_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE procurement_group_id_seq OWNED BY procurement_group.id;


--
-- Name: procurement_order; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE procurement_order (
    id integer NOT NULL,
    origin character varying,
    create_date timestamp without time zone,
    product_id integer NOT NULL,
    product_uom integer NOT NULL,
    create_uid integer,
    date_planned timestamp without time zone NOT NULL,
    message_last_post timestamp without time zone,
    company_id integer NOT NULL,
    write_uid integer,
    priority character varying NOT NULL,
    state character varying NOT NULL,
    write_date timestamp without time zone,
    product_qty numeric NOT NULL,
    rule_id integer,
    group_id integer,
    name text NOT NULL,
    sale_line_id integer
);


ALTER TABLE procurement_order OWNER TO odoouser;

--
-- Name: TABLE procurement_order; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE procurement_order IS 'Procurement';


--
-- Name: COLUMN procurement_order.origin; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.origin IS 'Source Document';


--
-- Name: COLUMN procurement_order.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.create_date IS 'Created on';


--
-- Name: COLUMN procurement_order.product_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.product_id IS 'Product';


--
-- Name: COLUMN procurement_order.product_uom; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.product_uom IS 'Product Unit of Measure';


--
-- Name: COLUMN procurement_order.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.create_uid IS 'Created by';


--
-- Name: COLUMN procurement_order.date_planned; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.date_planned IS 'Scheduled Date';


--
-- Name: COLUMN procurement_order.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN procurement_order.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.company_id IS 'Company';


--
-- Name: COLUMN procurement_order.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.write_uid IS 'Last Updated by';


--
-- Name: COLUMN procurement_order.priority; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.priority IS 'Priority';


--
-- Name: COLUMN procurement_order.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.state IS 'Status';


--
-- Name: COLUMN procurement_order.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.write_date IS 'Last Updated on';


--
-- Name: COLUMN procurement_order.product_qty; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.product_qty IS 'Quantity';


--
-- Name: COLUMN procurement_order.rule_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.rule_id IS 'Rule';


--
-- Name: COLUMN procurement_order.group_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.group_id IS 'Procurement Group';


--
-- Name: COLUMN procurement_order.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.name IS 'Description';


--
-- Name: COLUMN procurement_order.sale_line_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order.sale_line_id IS 'Sale Order Line';


--
-- Name: procurement_order_compute_all; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE procurement_order_compute_all (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE procurement_order_compute_all OWNER TO odoouser;

--
-- Name: TABLE procurement_order_compute_all; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE procurement_order_compute_all IS 'Compute all schedulers';


--
-- Name: COLUMN procurement_order_compute_all.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order_compute_all.create_uid IS 'Created by';


--
-- Name: COLUMN procurement_order_compute_all.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order_compute_all.create_date IS 'Created on';


--
-- Name: COLUMN procurement_order_compute_all.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order_compute_all.write_date IS 'Last Updated on';


--
-- Name: COLUMN procurement_order_compute_all.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_order_compute_all.write_uid IS 'Last Updated by';


--
-- Name: procurement_order_compute_all_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE procurement_order_compute_all_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE procurement_order_compute_all_id_seq OWNER TO odoouser;

--
-- Name: procurement_order_compute_all_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE procurement_order_compute_all_id_seq OWNED BY procurement_order_compute_all.id;


--
-- Name: procurement_order_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE procurement_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE procurement_order_id_seq OWNER TO odoouser;

--
-- Name: procurement_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE procurement_order_id_seq OWNED BY procurement_order.id;


--
-- Name: procurement_rule; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE procurement_rule (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    sequence integer,
    company_id integer,
    write_uid integer,
    action character varying NOT NULL,
    write_date timestamp without time zone,
    active boolean,
    group_id integer,
    group_propagation_option character varying
);


ALTER TABLE procurement_rule OWNER TO odoouser;

--
-- Name: TABLE procurement_rule; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE procurement_rule IS 'Procurement Rule';


--
-- Name: COLUMN procurement_rule.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.create_uid IS 'Created by';


--
-- Name: COLUMN procurement_rule.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.create_date IS 'Created on';


--
-- Name: COLUMN procurement_rule.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.name IS 'Name';


--
-- Name: COLUMN procurement_rule.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.sequence IS 'Sequence';


--
-- Name: COLUMN procurement_rule.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.company_id IS 'Company';


--
-- Name: COLUMN procurement_rule.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.write_uid IS 'Last Updated by';


--
-- Name: COLUMN procurement_rule.action; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.action IS 'Action';


--
-- Name: COLUMN procurement_rule.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.write_date IS 'Last Updated on';


--
-- Name: COLUMN procurement_rule.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.active IS 'Active';


--
-- Name: COLUMN procurement_rule.group_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.group_id IS 'Fixed Procurement Group';


--
-- Name: COLUMN procurement_rule.group_propagation_option; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN procurement_rule.group_propagation_option IS 'Propagation of Procurement Group';


--
-- Name: procurement_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE procurement_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE procurement_rule_id_seq OWNER TO odoouser;

--
-- Name: procurement_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE procurement_rule_id_seq OWNED BY procurement_rule.id;


--
-- Name: product_accessory_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_accessory_rel (
    src_id integer NOT NULL,
    dest_id integer NOT NULL
);


ALTER TABLE product_accessory_rel OWNER TO odoouser;

--
-- Name: TABLE product_accessory_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_accessory_rel IS 'RELATION BETWEEN product_template AND product_product';


--
-- Name: product_alternative_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_alternative_rel (
    src_id integer NOT NULL,
    dest_id integer NOT NULL
);


ALTER TABLE product_alternative_rel OWNER TO odoouser;

--
-- Name: TABLE product_alternative_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_alternative_rel IS 'RELATION BETWEEN product_template AND product_template';


--
-- Name: product_attribute; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_attribute (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    sequence integer,
    write_uid integer,
    write_date timestamp without time zone,
    type character varying
);


ALTER TABLE product_attribute OWNER TO odoouser;

--
-- Name: TABLE product_attribute; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_attribute IS 'Product Attribute';


--
-- Name: COLUMN product_attribute.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute.create_uid IS 'Created by';


--
-- Name: COLUMN product_attribute.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute.create_date IS 'Created on';


--
-- Name: COLUMN product_attribute.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute.name IS 'Name';


--
-- Name: COLUMN product_attribute.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute.sequence IS 'Sequence';


--
-- Name: COLUMN product_attribute.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_attribute.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_attribute.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute.type IS 'Type';


--
-- Name: product_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_attribute_id_seq OWNER TO odoouser;

--
-- Name: product_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_attribute_id_seq OWNED BY product_attribute.id;


--
-- Name: product_attribute_line; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_attribute_line (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    product_tmpl_id integer NOT NULL,
    attribute_id integer NOT NULL,
    write_date timestamp without time zone
);


ALTER TABLE product_attribute_line OWNER TO odoouser;

--
-- Name: TABLE product_attribute_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_attribute_line IS 'product.attribute.line';


--
-- Name: COLUMN product_attribute_line.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_line.create_uid IS 'Created by';


--
-- Name: COLUMN product_attribute_line.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_line.create_date IS 'Created on';


--
-- Name: COLUMN product_attribute_line.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_attribute_line.product_tmpl_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_line.product_tmpl_id IS 'Product Template';


--
-- Name: COLUMN product_attribute_line.attribute_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_line.attribute_id IS 'Attribute';


--
-- Name: COLUMN product_attribute_line.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_line.write_date IS 'Last Updated on';


--
-- Name: product_attribute_line_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_attribute_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_attribute_line_id_seq OWNER TO odoouser;

--
-- Name: product_attribute_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_attribute_line_id_seq OWNED BY product_attribute_line.id;


--
-- Name: product_attribute_line_product_attribute_value_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_attribute_line_product_attribute_value_rel (
    line_id integer NOT NULL,
    val_id integer NOT NULL
);


ALTER TABLE product_attribute_line_product_attribute_value_rel OWNER TO odoouser;

--
-- Name: TABLE product_attribute_line_product_attribute_value_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_attribute_line_product_attribute_value_rel IS 'RELATION BETWEEN product_attribute_line AND product_attribute_value';


--
-- Name: product_attribute_price; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_attribute_price (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    price_extra numeric,
    product_tmpl_id integer NOT NULL,
    value_id integer NOT NULL,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE product_attribute_price OWNER TO odoouser;

--
-- Name: TABLE product_attribute_price; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_attribute_price IS 'product.attribute.price';


--
-- Name: COLUMN product_attribute_price.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_price.create_uid IS 'Created by';


--
-- Name: COLUMN product_attribute_price.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_price.create_date IS 'Created on';


--
-- Name: COLUMN product_attribute_price.price_extra; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_price.price_extra IS 'Price Extra';


--
-- Name: COLUMN product_attribute_price.product_tmpl_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_price.product_tmpl_id IS 'Product Template';


--
-- Name: COLUMN product_attribute_price.value_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_price.value_id IS 'Product Attribute Value';


--
-- Name: COLUMN product_attribute_price.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_price.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_attribute_price.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_price.write_uid IS 'Last Updated by';


--
-- Name: product_attribute_price_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_attribute_price_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_attribute_price_id_seq OWNER TO odoouser;

--
-- Name: product_attribute_price_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_attribute_price_id_seq OWNED BY product_attribute_price.id;


--
-- Name: product_attribute_value; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_attribute_value (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    sequence integer,
    attribute_id integer NOT NULL,
    write_date timestamp without time zone,
    write_uid integer,
    color character varying
);


ALTER TABLE product_attribute_value OWNER TO odoouser;

--
-- Name: TABLE product_attribute_value; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_attribute_value IS 'product.attribute.value';


--
-- Name: COLUMN product_attribute_value.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_value.create_uid IS 'Created by';


--
-- Name: COLUMN product_attribute_value.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_value.create_date IS 'Created on';


--
-- Name: COLUMN product_attribute_value.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_value.name IS 'Value';


--
-- Name: COLUMN product_attribute_value.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_value.sequence IS 'Sequence';


--
-- Name: COLUMN product_attribute_value.attribute_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_value.attribute_id IS 'Attribute';


--
-- Name: COLUMN product_attribute_value.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_value.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_attribute_value.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_value.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_attribute_value.color; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_attribute_value.color IS 'HTML Color Index';


--
-- Name: product_attribute_value_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_attribute_value_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_attribute_value_id_seq OWNER TO odoouser;

--
-- Name: product_attribute_value_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_attribute_value_id_seq OWNED BY product_attribute_value.id;


--
-- Name: product_attribute_value_product_product_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_attribute_value_product_product_rel (
    att_id integer NOT NULL,
    prod_id integer NOT NULL
);


ALTER TABLE product_attribute_value_product_product_rel OWNER TO odoouser;

--
-- Name: TABLE product_attribute_value_product_product_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_attribute_value_product_product_rel IS 'RELATION BETWEEN product_attribute_value AND product_product';


--
-- Name: product_category; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_category (
    id integer NOT NULL,
    parent_left integer,
    parent_right integer,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    sequence integer,
    write_uid integer,
    parent_id integer,
    write_date timestamp without time zone,
    type character varying
);


ALTER TABLE product_category OWNER TO odoouser;

--
-- Name: TABLE product_category; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_category IS 'Product Category';


--
-- Name: COLUMN product_category.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_category.create_uid IS 'Created by';


--
-- Name: COLUMN product_category.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_category.create_date IS 'Created on';


--
-- Name: COLUMN product_category.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_category.name IS 'Name';


--
-- Name: COLUMN product_category.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_category.sequence IS 'Sequence';


--
-- Name: COLUMN product_category.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_category.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_category.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_category.parent_id IS 'Parent Category';


--
-- Name: COLUMN product_category.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_category.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_category.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_category.type IS 'Category Type';


--
-- Name: product_category_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_category_id_seq OWNER TO odoouser;

--
-- Name: product_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_category_id_seq OWNED BY product_category.id;


--
-- Name: product_packaging; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_packaging (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    sequence integer,
    qty double precision,
    product_tmpl_id integer,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE product_packaging OWNER TO odoouser;

--
-- Name: TABLE product_packaging; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_packaging IS 'Packaging';


--
-- Name: COLUMN product_packaging.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_packaging.create_uid IS 'Created by';


--
-- Name: COLUMN product_packaging.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_packaging.create_date IS 'Created on';


--
-- Name: COLUMN product_packaging.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_packaging.name IS 'Packaging Type';


--
-- Name: COLUMN product_packaging.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_packaging.sequence IS 'Sequence';


--
-- Name: COLUMN product_packaging.qty; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_packaging.qty IS 'Quantity by Package';


--
-- Name: COLUMN product_packaging.product_tmpl_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_packaging.product_tmpl_id IS 'Product';


--
-- Name: COLUMN product_packaging.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_packaging.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_packaging.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_packaging.write_uid IS 'Last Updated by';


--
-- Name: product_packaging_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_packaging_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_packaging_id_seq OWNER TO odoouser;

--
-- Name: product_packaging_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_packaging_id_seq OWNED BY product_packaging.id;


--
-- Name: product_price_history; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_price_history (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    product_id integer NOT NULL,
    company_id integer NOT NULL,
    datetime timestamp without time zone,
    cost numeric,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE product_price_history OWNER TO odoouser;

--
-- Name: TABLE product_price_history; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_price_history IS 'product.price.history';


--
-- Name: COLUMN product_price_history.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_history.create_uid IS 'Created by';


--
-- Name: COLUMN product_price_history.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_history.create_date IS 'Created on';


--
-- Name: COLUMN product_price_history.product_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_history.product_id IS 'Product';


--
-- Name: COLUMN product_price_history.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_history.company_id IS 'unknown';


--
-- Name: COLUMN product_price_history.datetime; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_history.datetime IS 'Date';


--
-- Name: COLUMN product_price_history.cost; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_history.cost IS 'Cost';


--
-- Name: COLUMN product_price_history.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_history.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_price_history.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_history.write_uid IS 'Last Updated by';


--
-- Name: product_price_history_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_price_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_price_history_id_seq OWNER TO odoouser;

--
-- Name: product_price_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_price_history_id_seq OWNED BY product_price_history.id;


--
-- Name: product_price_list; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_price_list (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    price_list integer NOT NULL,
    write_uid integer,
    qty1 integer,
    qty2 integer,
    qty3 integer,
    qty4 integer,
    qty5 integer,
    write_date timestamp without time zone
);


ALTER TABLE product_price_list OWNER TO odoouser;

--
-- Name: TABLE product_price_list; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_price_list IS 'Price List';


--
-- Name: COLUMN product_price_list.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_list.create_uid IS 'Created by';


--
-- Name: COLUMN product_price_list.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_list.create_date IS 'Created on';


--
-- Name: COLUMN product_price_list.price_list; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_list.price_list IS 'PriceList';


--
-- Name: COLUMN product_price_list.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_list.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_price_list.qty1; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_list.qty1 IS 'Quantity-1';


--
-- Name: COLUMN product_price_list.qty2; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_list.qty2 IS 'Quantity-2';


--
-- Name: COLUMN product_price_list.qty3; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_list.qty3 IS 'Quantity-3';


--
-- Name: COLUMN product_price_list.qty4; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_list.qty4 IS 'Quantity-4';


--
-- Name: COLUMN product_price_list.qty5; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_list.qty5 IS 'Quantity-5';


--
-- Name: COLUMN product_price_list.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_price_list.write_date IS 'Last Updated on';


--
-- Name: product_price_list_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_price_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_price_list_id_seq OWNER TO odoouser;

--
-- Name: product_price_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_price_list_id_seq OWNED BY product_price_list.id;


--
-- Name: product_pricelist; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_pricelist (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    company_id integer,
    write_uid integer,
    currency_id integer NOT NULL,
    write_date timestamp without time zone,
    active boolean,
    code character varying
);


ALTER TABLE product_pricelist OWNER TO odoouser;

--
-- Name: TABLE product_pricelist; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_pricelist IS 'Pricelist';


--
-- Name: COLUMN product_pricelist.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist.create_uid IS 'Created by';


--
-- Name: COLUMN product_pricelist.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist.create_date IS 'Created on';


--
-- Name: COLUMN product_pricelist.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist.name IS 'Pricelist Name';


--
-- Name: COLUMN product_pricelist.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist.company_id IS 'Company';


--
-- Name: COLUMN product_pricelist.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_pricelist.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist.currency_id IS 'Currency';


--
-- Name: COLUMN product_pricelist.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_pricelist.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist.active IS 'Active';


--
-- Name: COLUMN product_pricelist.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist.code IS 'E-commerce Promotional Code';


--
-- Name: product_pricelist_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_pricelist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_pricelist_id_seq OWNER TO odoouser;

--
-- Name: product_pricelist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_pricelist_id_seq OWNED BY product_pricelist.id;


--
-- Name: product_pricelist_item; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_pricelist_item (
    id integer NOT NULL,
    fixed_price numeric,
    create_date timestamp without time zone,
    price_discount numeric,
    sequence integer NOT NULL,
    price_max_margin numeric,
    date_end date,
    write_uid integer,
    currency_id integer,
    applied_on character varying NOT NULL,
    min_quantity integer,
    create_uid integer,
    percent_price double precision,
    date_start date,
    company_id integer,
    product_tmpl_id integer,
    pricelist_id integer,
    price_min_margin numeric,
    compute_price character varying,
    base character varying NOT NULL,
    write_date timestamp without time zone,
    categ_id integer,
    price_surcharge numeric,
    price_round numeric,
    product_id integer,
    base_pricelist_id integer
);


ALTER TABLE product_pricelist_item OWNER TO odoouser;

--
-- Name: TABLE product_pricelist_item; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_pricelist_item IS 'Pricelist item';


--
-- Name: COLUMN product_pricelist_item.fixed_price; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.fixed_price IS 'Fixed Price';


--
-- Name: COLUMN product_pricelist_item.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.create_date IS 'Created on';


--
-- Name: COLUMN product_pricelist_item.price_discount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.price_discount IS 'Price Discount';


--
-- Name: COLUMN product_pricelist_item.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.sequence IS 'Sequence';


--
-- Name: COLUMN product_pricelist_item.price_max_margin; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.price_max_margin IS 'Max. Price Margin';


--
-- Name: COLUMN product_pricelist_item.date_end; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.date_end IS 'End Date';


--
-- Name: COLUMN product_pricelist_item.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_pricelist_item.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.currency_id IS 'Currency';


--
-- Name: COLUMN product_pricelist_item.applied_on; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.applied_on IS 'Apply On';


--
-- Name: COLUMN product_pricelist_item.min_quantity; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.min_quantity IS 'Min. Quantity';


--
-- Name: COLUMN product_pricelist_item.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.create_uid IS 'Created by';


--
-- Name: COLUMN product_pricelist_item.percent_price; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.percent_price IS 'Percentage Price';


--
-- Name: COLUMN product_pricelist_item.date_start; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.date_start IS 'Start Date';


--
-- Name: COLUMN product_pricelist_item.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.company_id IS 'Company';


--
-- Name: COLUMN product_pricelist_item.product_tmpl_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.product_tmpl_id IS 'Product Template';


--
-- Name: COLUMN product_pricelist_item.pricelist_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.pricelist_id IS 'Pricelist';


--
-- Name: COLUMN product_pricelist_item.price_min_margin; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.price_min_margin IS 'Min. Price Margin';


--
-- Name: COLUMN product_pricelist_item.compute_price; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.compute_price IS 'unknown';


--
-- Name: COLUMN product_pricelist_item.base; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.base IS 'Based on';


--
-- Name: COLUMN product_pricelist_item.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_pricelist_item.categ_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.categ_id IS 'Product Category';


--
-- Name: COLUMN product_pricelist_item.price_surcharge; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.price_surcharge IS 'Price Surcharge';


--
-- Name: COLUMN product_pricelist_item.price_round; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.price_round IS 'Price Rounding';


--
-- Name: COLUMN product_pricelist_item.product_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.product_id IS 'Product';


--
-- Name: COLUMN product_pricelist_item.base_pricelist_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_pricelist_item.base_pricelist_id IS 'Other Pricelist';


--
-- Name: product_pricelist_item_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_pricelist_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_pricelist_item_id_seq OWNER TO odoouser;

--
-- Name: product_pricelist_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_pricelist_item_id_seq OWNED BY product_pricelist_item.id;


--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_product_id_seq OWNER TO odoouser;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_product_id_seq OWNED BY product_product.id;


--
-- Name: product_public_category; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_public_category (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    sequence integer,
    write_uid integer,
    parent_id integer,
    website_meta_description text,
    website_meta_title character varying,
    write_date timestamp without time zone,
    website_meta_keywords character varying
);


ALTER TABLE product_public_category OWNER TO odoouser;

--
-- Name: TABLE product_public_category; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_public_category IS 'Website Product Category';


--
-- Name: COLUMN product_public_category.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_public_category.create_uid IS 'Created by';


--
-- Name: COLUMN product_public_category.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_public_category.create_date IS 'Created on';


--
-- Name: COLUMN product_public_category.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_public_category.name IS 'Name';


--
-- Name: COLUMN product_public_category.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_public_category.sequence IS 'Sequence';


--
-- Name: COLUMN product_public_category.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_public_category.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_public_category.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_public_category.parent_id IS 'Parent Category';


--
-- Name: COLUMN product_public_category.website_meta_description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_public_category.website_meta_description IS 'Website meta description';


--
-- Name: COLUMN product_public_category.website_meta_title; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_public_category.website_meta_title IS 'Website meta title';


--
-- Name: COLUMN product_public_category.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_public_category.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_public_category.website_meta_keywords; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_public_category.website_meta_keywords IS 'Website meta keywords';


--
-- Name: product_public_category_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_public_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_public_category_id_seq OWNER TO odoouser;

--
-- Name: product_public_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_public_category_id_seq OWNED BY product_public_category.id;


--
-- Name: product_public_category_product_template_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_public_category_product_template_rel (
    product_template_id integer NOT NULL,
    product_public_category_id integer NOT NULL
);


ALTER TABLE product_public_category_product_template_rel OWNER TO odoouser;

--
-- Name: TABLE product_public_category_product_template_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_public_category_product_template_rel IS 'RELATION BETWEEN product_template AND product_public_category';


--
-- Name: product_style; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_style (
    id integer NOT NULL,
    html_class character varying,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE product_style OWNER TO odoouser;

--
-- Name: TABLE product_style; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_style IS 'product.style';


--
-- Name: COLUMN product_style.html_class; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_style.html_class IS 'HTML Classes';


--
-- Name: COLUMN product_style.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_style.create_uid IS 'Created by';


--
-- Name: COLUMN product_style.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_style.create_date IS 'Created on';


--
-- Name: COLUMN product_style.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_style.name IS 'Style Name';


--
-- Name: COLUMN product_style.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_style.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_style.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_style.write_date IS 'Last Updated on';


--
-- Name: product_style_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_style_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_style_id_seq OWNER TO odoouser;

--
-- Name: product_style_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_style_id_seq OWNED BY product_style.id;


--
-- Name: product_style_product_template_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_style_product_template_rel (
    product_template_id integer NOT NULL,
    product_style_id integer NOT NULL
);


ALTER TABLE product_style_product_template_rel OWNER TO odoouser;

--
-- Name: TABLE product_style_product_template_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_style_product_template_rel IS 'RELATION BETWEEN product_template AND product_style';


--
-- Name: product_supplier_taxes_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_supplier_taxes_rel (
    prod_id integer NOT NULL,
    tax_id integer NOT NULL
);


ALTER TABLE product_supplier_taxes_rel OWNER TO odoouser;

--
-- Name: TABLE product_supplier_taxes_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_supplier_taxes_rel IS 'RELATION BETWEEN product_template AND account_tax';


--
-- Name: product_supplierinfo; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_supplierinfo (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    product_id integer,
    sequence integer,
    product_name character varying,
    date_end date,
    date_start date,
    qty numeric,
    company_id integer,
    write_uid integer,
    currency_id integer NOT NULL,
    delay integer NOT NULL,
    write_date timestamp without time zone,
    price numeric NOT NULL,
    min_qty double precision NOT NULL,
    product_code character varying,
    product_tmpl_id integer,
    name integer NOT NULL
);


ALTER TABLE product_supplierinfo OWNER TO odoouser;

--
-- Name: TABLE product_supplierinfo; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_supplierinfo IS 'Information about a product vendor';


--
-- Name: COLUMN product_supplierinfo.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.create_uid IS 'Created by';


--
-- Name: COLUMN product_supplierinfo.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.create_date IS 'Created on';


--
-- Name: COLUMN product_supplierinfo.product_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.product_id IS 'Product Variant';


--
-- Name: COLUMN product_supplierinfo.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.sequence IS 'Sequence';


--
-- Name: COLUMN product_supplierinfo.product_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.product_name IS 'Vendor Product Name';


--
-- Name: COLUMN product_supplierinfo.date_end; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.date_end IS 'End Date';


--
-- Name: COLUMN product_supplierinfo.date_start; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.date_start IS 'Start Date';


--
-- Name: COLUMN product_supplierinfo.qty; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.qty IS 'Quantity';


--
-- Name: COLUMN product_supplierinfo.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.company_id IS 'Company';


--
-- Name: COLUMN product_supplierinfo.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_supplierinfo.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.currency_id IS 'Currency';


--
-- Name: COLUMN product_supplierinfo.delay; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.delay IS 'Delivery Lead Time';


--
-- Name: COLUMN product_supplierinfo.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.write_date IS 'Last Updated on';


--
-- Name: COLUMN product_supplierinfo.price; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.price IS 'Price';


--
-- Name: COLUMN product_supplierinfo.min_qty; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.min_qty IS 'Minimal Quantity';


--
-- Name: COLUMN product_supplierinfo.product_code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.product_code IS 'Vendor Product Code';


--
-- Name: COLUMN product_supplierinfo.product_tmpl_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.product_tmpl_id IS 'Product Template';


--
-- Name: COLUMN product_supplierinfo.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_supplierinfo.name IS 'Vendor';


--
-- Name: product_supplierinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_supplierinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_supplierinfo_id_seq OWNER TO odoouser;

--
-- Name: product_supplierinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_supplierinfo_id_seq OWNED BY product_supplierinfo.id;


--
-- Name: product_taxes_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_taxes_rel (
    prod_id integer NOT NULL,
    tax_id integer NOT NULL
);


ALTER TABLE product_taxes_rel OWNER TO odoouser;

--
-- Name: TABLE product_taxes_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_taxes_rel IS 'RELATION BETWEEN product_template AND account_tax';


--
-- Name: product_template_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_template_id_seq OWNER TO odoouser;

--
-- Name: product_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_template_id_seq OWNED BY product_template.id;


--
-- Name: product_uom_categ; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE product_uom_categ (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE product_uom_categ OWNER TO odoouser;

--
-- Name: TABLE product_uom_categ; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE product_uom_categ IS 'Product uom categ';


--
-- Name: COLUMN product_uom_categ.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom_categ.create_uid IS 'Created by';


--
-- Name: COLUMN product_uom_categ.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom_categ.create_date IS 'Created on';


--
-- Name: COLUMN product_uom_categ.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom_categ.name IS 'Name';


--
-- Name: COLUMN product_uom_categ.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom_categ.write_uid IS 'Last Updated by';


--
-- Name: COLUMN product_uom_categ.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN product_uom_categ.write_date IS 'Last Updated on';


--
-- Name: product_uom_categ_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_uom_categ_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_uom_categ_id_seq OWNER TO odoouser;

--
-- Name: product_uom_categ_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_uom_categ_id_seq OWNED BY product_uom_categ.id;


--
-- Name: product_uom_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE product_uom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_uom_id_seq OWNER TO odoouser;

--
-- Name: product_uom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE product_uom_id_seq OWNED BY product_uom.id;


--
-- Name: rating_rating; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE rating_rating (
    id integer NOT NULL,
    rating double precision,
    partner_id integer,
    create_date timestamp without time zone,
    feedback text,
    create_uid integer,
    access_token character varying,
    res_model character varying NOT NULL,
    write_uid integer,
    res_name character varying,
    message_id integer,
    write_date timestamp without time zone,
    rated_partner_id integer,
    res_id integer NOT NULL,
    website_published boolean,
    CONSTRAINT rating_rating_rating_range CHECK (((rating >= ('-1'::integer)::double precision) AND (rating <= (10)::double precision)))
);


ALTER TABLE rating_rating OWNER TO odoouser;

--
-- Name: TABLE rating_rating; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE rating_rating IS 'Rating';


--
-- Name: COLUMN rating_rating.rating; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.rating IS 'Rating';


--
-- Name: COLUMN rating_rating.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.partner_id IS 'Customer';


--
-- Name: COLUMN rating_rating.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.create_date IS 'Created on';


--
-- Name: COLUMN rating_rating.feedback; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.feedback IS 'Feedback reason';


--
-- Name: COLUMN rating_rating.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.create_uid IS 'Created by';


--
-- Name: COLUMN rating_rating.access_token; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.access_token IS 'Security Token';


--
-- Name: COLUMN rating_rating.res_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.res_model IS 'Document Model';


--
-- Name: COLUMN rating_rating.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.write_uid IS 'Last Updated by';


--
-- Name: COLUMN rating_rating.res_name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.res_name IS 'Resource Name';


--
-- Name: COLUMN rating_rating.message_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.message_id IS 'Linked message';


--
-- Name: COLUMN rating_rating.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.write_date IS 'Last Updated on';


--
-- Name: COLUMN rating_rating.rated_partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.rated_partner_id IS 'Rated Partner';


--
-- Name: COLUMN rating_rating.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.res_id IS 'Document ID';


--
-- Name: COLUMN rating_rating.website_published; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN rating_rating.website_published IS 'Published';


--
-- Name: rating_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE rating_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rating_rating_id_seq OWNER TO odoouser;

--
-- Name: rating_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE rating_rating_id_seq OWNED BY rating_rating.id;


--
-- Name: rel_modules_langexport; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE rel_modules_langexport (
    wiz_id integer NOT NULL,
    module_id integer NOT NULL
);


ALTER TABLE rel_modules_langexport OWNER TO odoouser;

--
-- Name: TABLE rel_modules_langexport; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE rel_modules_langexport IS 'RELATION BETWEEN base_language_export AND ir_module_module';


--
-- Name: rel_server_actions; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE rel_server_actions (
    server_id integer NOT NULL,
    action_id integer NOT NULL
);


ALTER TABLE rel_server_actions OWNER TO odoouser;

--
-- Name: TABLE rel_server_actions; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE rel_server_actions IS 'RELATION BETWEEN ir_act_server AND ir_act_server';


--
-- Name: report; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE report (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE report OWNER TO odoouser;

--
-- Name: TABLE report; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE report IS 'Report';


--
-- Name: COLUMN report.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report.create_uid IS 'Created by';


--
-- Name: COLUMN report.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report.create_date IS 'Created on';


--
-- Name: COLUMN report.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report.write_date IS 'Last Updated on';


--
-- Name: COLUMN report.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report.write_uid IS 'Last Updated by';


--
-- Name: report_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE report_id_seq OWNER TO odoouser;

--
-- Name: report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE report_id_seq OWNED BY report.id;


--
-- Name: report_paperformat; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE report_paperformat (
    id integer NOT NULL,
    create_uid integer,
    page_width integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    format character varying,
    "default" boolean,
    header_line boolean,
    header_spacing integer,
    dpi integer NOT NULL,
    write_uid integer,
    margin_right double precision,
    margin_top double precision,
    margin_left double precision,
    write_date timestamp without time zone,
    margin_bottom double precision,
    page_height integer,
    orientation character varying
);


ALTER TABLE report_paperformat OWNER TO odoouser;

--
-- Name: TABLE report_paperformat; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE report_paperformat IS 'Allows customization of a report.';


--
-- Name: COLUMN report_paperformat.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.create_uid IS 'Created by';


--
-- Name: COLUMN report_paperformat.page_width; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.page_width IS 'Page width (mm)';


--
-- Name: COLUMN report_paperformat.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.create_date IS 'Created on';


--
-- Name: COLUMN report_paperformat.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.name IS 'Name';


--
-- Name: COLUMN report_paperformat.format; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.format IS 'Paper size';


--
-- Name: COLUMN report_paperformat."default"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat."default" IS 'Default paper format ?';


--
-- Name: COLUMN report_paperformat.header_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.header_line IS 'Display a header line';


--
-- Name: COLUMN report_paperformat.header_spacing; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.header_spacing IS 'Header spacing';


--
-- Name: COLUMN report_paperformat.dpi; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.dpi IS 'Output DPI';


--
-- Name: COLUMN report_paperformat.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.write_uid IS 'Last Updated by';


--
-- Name: COLUMN report_paperformat.margin_right; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.margin_right IS 'Right Margin (mm)';


--
-- Name: COLUMN report_paperformat.margin_top; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.margin_top IS 'Top Margin (mm)';


--
-- Name: COLUMN report_paperformat.margin_left; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.margin_left IS 'Left Margin (mm)';


--
-- Name: COLUMN report_paperformat.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.write_date IS 'Last Updated on';


--
-- Name: COLUMN report_paperformat.margin_bottom; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.margin_bottom IS 'Bottom Margin (mm)';


--
-- Name: COLUMN report_paperformat.page_height; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.page_height IS 'Page height (mm)';


--
-- Name: COLUMN report_paperformat.orientation; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN report_paperformat.orientation IS 'Orientation';


--
-- Name: report_paperformat_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE report_paperformat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE report_paperformat_id_seq OWNER TO odoouser;

--
-- Name: report_paperformat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE report_paperformat_id_seq OWNED BY report_paperformat.id;


--
-- Name: res_bank; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_bank (
    id integer NOT NULL,
    city character varying,
    fax character varying,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    zip character varying,
    create_uid integer,
    country integer,
    street2 character varying,
    bic character varying,
    write_uid integer,
    email character varying,
    phone character varying,
    state integer,
    street character varying,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE res_bank OWNER TO odoouser;

--
-- Name: TABLE res_bank; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_bank IS 'Bank';


--
-- Name: COLUMN res_bank.city; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.city IS 'City';


--
-- Name: COLUMN res_bank.fax; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.fax IS 'Fax';


--
-- Name: COLUMN res_bank.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.create_date IS 'Created on';


--
-- Name: COLUMN res_bank.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.name IS 'Name';


--
-- Name: COLUMN res_bank.zip; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.zip IS 'Zip';


--
-- Name: COLUMN res_bank.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.create_uid IS 'Created by';


--
-- Name: COLUMN res_bank.country; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.country IS 'Country';


--
-- Name: COLUMN res_bank.street2; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.street2 IS 'Street2';


--
-- Name: COLUMN res_bank.bic; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.bic IS 'Bank Identifier Code';


--
-- Name: COLUMN res_bank.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_bank.email; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.email IS 'Email';


--
-- Name: COLUMN res_bank.phone; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.phone IS 'Phone';


--
-- Name: COLUMN res_bank.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.state IS 'Fed. State';


--
-- Name: COLUMN res_bank.street; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.street IS 'Street';


--
-- Name: COLUMN res_bank.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_bank.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_bank.active IS 'Active';


--
-- Name: res_bank_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_bank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_bank_id_seq OWNER TO odoouser;

--
-- Name: res_bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_bank_id_seq OWNED BY res_bank.id;


--
-- Name: res_company_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_company_id_seq OWNER TO odoouser;

--
-- Name: res_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_company_id_seq OWNED BY res_company.id;


--
-- Name: res_company_users_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_company_users_rel (
    cid integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE res_company_users_rel OWNER TO odoouser;

--
-- Name: TABLE res_company_users_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_company_users_rel IS 'RELATION BETWEEN res_company AND res_users';


--
-- Name: res_config; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_config (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE res_config OWNER TO odoouser;

--
-- Name: TABLE res_config; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_config IS 'res.config';


--
-- Name: COLUMN res_config.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config.create_uid IS 'Created by';


--
-- Name: COLUMN res_config.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config.create_date IS 'Created on';


--
-- Name: COLUMN res_config.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_config.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config.write_uid IS 'Last Updated by';


--
-- Name: res_config_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_config_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_config_id_seq OWNER TO odoouser;

--
-- Name: res_config_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_config_id_seq OWNED BY res_config.id;


--
-- Name: res_config_installer; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_config_installer (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE res_config_installer OWNER TO odoouser;

--
-- Name: TABLE res_config_installer; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_config_installer IS 'res.config.installer';


--
-- Name: COLUMN res_config_installer.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config_installer.create_uid IS 'Created by';


--
-- Name: COLUMN res_config_installer.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config_installer.create_date IS 'Created on';


--
-- Name: COLUMN res_config_installer.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config_installer.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_config_installer.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config_installer.write_uid IS 'Last Updated by';


--
-- Name: res_config_installer_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_config_installer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_config_installer_id_seq OWNER TO odoouser;

--
-- Name: res_config_installer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_config_installer_id_seq OWNED BY res_config_installer.id;


--
-- Name: res_config_settings; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_config_settings (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE res_config_settings OWNER TO odoouser;

--
-- Name: TABLE res_config_settings; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_config_settings IS 'res.config.settings';


--
-- Name: COLUMN res_config_settings.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config_settings.create_uid IS 'Created by';


--
-- Name: COLUMN res_config_settings.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config_settings.create_date IS 'Created on';


--
-- Name: COLUMN res_config_settings.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config_settings.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_config_settings.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_config_settings.write_uid IS 'Last Updated by';


--
-- Name: res_config_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_config_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_config_settings_id_seq OWNER TO odoouser;

--
-- Name: res_config_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_config_settings_id_seq OWNED BY res_config_settings.id;


--
-- Name: res_country; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_country (
    id integer NOT NULL,
    create_uid integer,
    code character varying(2),
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    currency_id integer,
    address_format text,
    phone_code integer,
    write_date timestamp without time zone
);


ALTER TABLE res_country OWNER TO odoouser;

--
-- Name: TABLE res_country; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_country IS 'Country';


--
-- Name: COLUMN res_country.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country.create_uid IS 'Created by';


--
-- Name: COLUMN res_country.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country.code IS 'Country Code';


--
-- Name: COLUMN res_country.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country.create_date IS 'Created on';


--
-- Name: COLUMN res_country.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country.name IS 'Country Name';


--
-- Name: COLUMN res_country.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_country.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country.currency_id IS 'Currency';


--
-- Name: COLUMN res_country.address_format; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country.address_format IS 'Address Format';


--
-- Name: COLUMN res_country.phone_code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country.phone_code IS 'Country Calling Code';


--
-- Name: COLUMN res_country.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country.write_date IS 'Last Updated on';


--
-- Name: res_country_group; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_country_group (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE res_country_group OWNER TO odoouser;

--
-- Name: TABLE res_country_group; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_country_group IS 'Country Group';


--
-- Name: COLUMN res_country_group.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_group.create_uid IS 'Created by';


--
-- Name: COLUMN res_country_group.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_group.create_date IS 'Created on';


--
-- Name: COLUMN res_country_group.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_group.name IS 'Name';


--
-- Name: COLUMN res_country_group.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_group.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_country_group.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_group.write_date IS 'Last Updated on';


--
-- Name: res_country_group_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_country_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_country_group_id_seq OWNER TO odoouser;

--
-- Name: res_country_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_country_group_id_seq OWNED BY res_country_group.id;


--
-- Name: res_country_group_website_pricelist_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_country_group_website_pricelist_rel (
    website_pricelist_id integer NOT NULL,
    res_country_group_id integer NOT NULL
);


ALTER TABLE res_country_group_website_pricelist_rel OWNER TO odoouser;

--
-- Name: TABLE res_country_group_website_pricelist_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_country_group_website_pricelist_rel IS 'RELATION BETWEEN website_pricelist AND res_country_group';


--
-- Name: res_country_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_country_id_seq OWNER TO odoouser;

--
-- Name: res_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_country_id_seq OWNED BY res_country.id;


--
-- Name: res_country_res_country_group_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_country_res_country_group_rel (
    res_country_id integer NOT NULL,
    res_country_group_id integer NOT NULL
);


ALTER TABLE res_country_res_country_group_rel OWNER TO odoouser;

--
-- Name: TABLE res_country_res_country_group_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_country_res_country_group_rel IS 'RELATION BETWEEN res_country AND res_country_group';


--
-- Name: res_country_state; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_country_state (
    id integer NOT NULL,
    create_uid integer,
    code character varying(3) NOT NULL,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    country_id integer NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE res_country_state OWNER TO odoouser;

--
-- Name: TABLE res_country_state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_country_state IS 'Country state';


--
-- Name: COLUMN res_country_state.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_state.create_uid IS 'Created by';


--
-- Name: COLUMN res_country_state.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_state.code IS 'State Code';


--
-- Name: COLUMN res_country_state.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_state.create_date IS 'Created on';


--
-- Name: COLUMN res_country_state.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_state.name IS 'State Name';


--
-- Name: COLUMN res_country_state.country_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_state.country_id IS 'Country';


--
-- Name: COLUMN res_country_state.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_state.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_country_state.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_country_state.write_date IS 'Last Updated on';


--
-- Name: res_country_state_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_country_state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_country_state_id_seq OWNER TO odoouser;

--
-- Name: res_country_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_country_state_id_seq OWNED BY res_country_state.id;


--
-- Name: res_currency; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_currency (
    id integer NOT NULL,
    name character varying NOT NULL,
    create_date timestamp without time zone,
    create_uid integer,
    rounding numeric,
    symbol character varying(4),
    write_uid integer,
    write_date timestamp without time zone,
    active boolean,
    "position" character varying
);


ALTER TABLE res_currency OWNER TO odoouser;

--
-- Name: COLUMN res_currency.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency.create_date IS 'Created on';


--
-- Name: COLUMN res_currency.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency.create_uid IS 'Created by';


--
-- Name: COLUMN res_currency.rounding; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency.rounding IS 'Rounding Factor';


--
-- Name: COLUMN res_currency.symbol; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency.symbol IS 'Symbol';


--
-- Name: COLUMN res_currency.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_currency.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_currency.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency.active IS 'Active';


--
-- Name: COLUMN res_currency."position"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_currency."position" IS 'Symbol Position';


--
-- Name: res_currency_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_currency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_currency_id_seq OWNER TO odoouser;

--
-- Name: res_currency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_currency_id_seq OWNED BY res_currency.id;


--
-- Name: res_currency_rate_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_currency_rate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_currency_rate_id_seq OWNER TO odoouser;

--
-- Name: res_currency_rate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_currency_rate_id_seq OWNED BY res_currency_rate.id;


--
-- Name: res_font; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_font (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    family character varying NOT NULL,
    write_uid integer,
    mode character varying NOT NULL,
    write_date timestamp without time zone,
    path character varying NOT NULL
);


ALTER TABLE res_font OWNER TO odoouser;

--
-- Name: TABLE res_font; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_font IS 'Fonts available';


--
-- Name: COLUMN res_font.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_font.create_uid IS 'Created by';


--
-- Name: COLUMN res_font.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_font.create_date IS 'Created on';


--
-- Name: COLUMN res_font.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_font.name IS 'Font Name';


--
-- Name: COLUMN res_font.family; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_font.family IS 'Font family';


--
-- Name: COLUMN res_font.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_font.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_font.mode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_font.mode IS 'Mode';


--
-- Name: COLUMN res_font.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_font.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_font.path; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_font.path IS 'Path';


--
-- Name: res_font_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_font_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_font_id_seq OWNER TO odoouser;

--
-- Name: res_font_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_font_id_seq OWNED BY res_font.id;


--
-- Name: res_groups; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_groups (
    id integer NOT NULL,
    comment text,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    color integer,
    share boolean,
    write_uid integer,
    write_date timestamp without time zone,
    category_id integer,
    is_portal boolean
);


ALTER TABLE res_groups OWNER TO odoouser;

--
-- Name: TABLE res_groups; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_groups IS 'Access Groups';


--
-- Name: COLUMN res_groups.comment; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_groups.comment IS 'Comment';


--
-- Name: COLUMN res_groups.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_groups.create_uid IS 'Created by';


--
-- Name: COLUMN res_groups.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_groups.create_date IS 'Created on';


--
-- Name: COLUMN res_groups.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_groups.name IS 'Name';


--
-- Name: COLUMN res_groups.color; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_groups.color IS 'Color Index';


--
-- Name: COLUMN res_groups.share; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_groups.share IS 'Share Group';


--
-- Name: COLUMN res_groups.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_groups.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_groups.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_groups.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_groups.category_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_groups.category_id IS 'Application';


--
-- Name: COLUMN res_groups.is_portal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_groups.is_portal IS 'Portal';


--
-- Name: res_groups_action_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_groups_action_rel (
    uid integer NOT NULL,
    gid integer NOT NULL
);


ALTER TABLE res_groups_action_rel OWNER TO odoouser;

--
-- Name: TABLE res_groups_action_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_groups_action_rel IS 'RELATION BETWEEN ir_actions_todo AND res_groups';


--
-- Name: res_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_groups_id_seq OWNER TO odoouser;

--
-- Name: res_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_groups_id_seq OWNED BY res_groups.id;


--
-- Name: res_groups_implied_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_groups_implied_rel (
    gid integer NOT NULL,
    hid integer NOT NULL
);


ALTER TABLE res_groups_implied_rel OWNER TO odoouser;

--
-- Name: TABLE res_groups_implied_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_groups_implied_rel IS 'RELATION BETWEEN res_groups AND res_groups';


--
-- Name: res_groups_report_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_groups_report_rel (
    uid integer NOT NULL,
    gid integer NOT NULL
);


ALTER TABLE res_groups_report_rel OWNER TO odoouser;

--
-- Name: TABLE res_groups_report_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_groups_report_rel IS 'RELATION BETWEEN ir_act_report_xml AND res_groups';


--
-- Name: res_groups_users_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_groups_users_rel (
    gid integer NOT NULL,
    uid integer NOT NULL
);


ALTER TABLE res_groups_users_rel OWNER TO odoouser;

--
-- Name: TABLE res_groups_users_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_groups_users_rel IS 'RELATION BETWEEN res_groups AND res_users';


--
-- Name: res_lang; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_lang (
    id integer NOT NULL,
    name character varying NOT NULL,
    code character varying(16) NOT NULL,
    date_format character varying NOT NULL,
    direction character varying NOT NULL,
    create_date timestamp without time zone,
    create_uid integer,
    thousands_sep character varying,
    translatable boolean,
    write_uid integer,
    time_format character varying NOT NULL,
    write_date timestamp without time zone,
    decimal_point character varying NOT NULL,
    active boolean,
    iso_code character varying(16),
    "grouping" character varying NOT NULL
);


ALTER TABLE res_lang OWNER TO odoouser;

--
-- Name: COLUMN res_lang.date_format; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.date_format IS 'Date Format';


--
-- Name: COLUMN res_lang.direction; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.direction IS 'Direction';


--
-- Name: COLUMN res_lang.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.create_date IS 'Created on';


--
-- Name: COLUMN res_lang.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.create_uid IS 'Created by';


--
-- Name: COLUMN res_lang.thousands_sep; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.thousands_sep IS 'Thousands Separator';


--
-- Name: COLUMN res_lang.translatable; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.translatable IS 'Translatable';


--
-- Name: COLUMN res_lang.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_lang.time_format; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.time_format IS 'Time Format';


--
-- Name: COLUMN res_lang.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_lang.decimal_point; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.decimal_point IS 'Decimal Separator';


--
-- Name: COLUMN res_lang.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.active IS 'Active';


--
-- Name: COLUMN res_lang.iso_code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang.iso_code IS 'ISO code';


--
-- Name: COLUMN res_lang."grouping"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_lang."grouping" IS 'Separator Format';


--
-- Name: res_lang_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_lang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_lang_id_seq OWNER TO odoouser;

--
-- Name: res_lang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_lang_id_seq OWNED BY res_lang.id;


--
-- Name: res_partner_bank; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_partner_bank (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    sequence integer,
    company_id integer,
    bank_id integer,
    currency_id integer,
    write_date timestamp without time zone,
    sanitized_acc_number character varying,
    write_uid integer,
    partner_id integer,
    acc_number character varying NOT NULL
);


ALTER TABLE res_partner_bank OWNER TO odoouser;

--
-- Name: TABLE res_partner_bank; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_partner_bank IS 'Bank Accounts';


--
-- Name: COLUMN res_partner_bank.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.create_uid IS 'Created by';


--
-- Name: COLUMN res_partner_bank.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.create_date IS 'Created on';


--
-- Name: COLUMN res_partner_bank.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.sequence IS 'Sequence';


--
-- Name: COLUMN res_partner_bank.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.company_id IS 'Company';


--
-- Name: COLUMN res_partner_bank.bank_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.bank_id IS 'Bank';


--
-- Name: COLUMN res_partner_bank.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.currency_id IS 'Currency';


--
-- Name: COLUMN res_partner_bank.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_partner_bank.sanitized_acc_number; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.sanitized_acc_number IS 'Sanitized Account Number';


--
-- Name: COLUMN res_partner_bank.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_partner_bank.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.partner_id IS 'Account Holder';


--
-- Name: COLUMN res_partner_bank.acc_number; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_bank.acc_number IS 'Account Number';


--
-- Name: res_partner_bank_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_partner_bank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_partner_bank_id_seq OWNER TO odoouser;

--
-- Name: res_partner_bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_partner_bank_id_seq OWNED BY res_partner_bank.id;


--
-- Name: res_partner_category; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_partner_category (
    id integer NOT NULL,
    parent_left integer,
    parent_right integer,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    color integer,
    write_uid integer,
    parent_id integer,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE res_partner_category OWNER TO odoouser;

--
-- Name: TABLE res_partner_category; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_partner_category IS 'Partner Tags';


--
-- Name: COLUMN res_partner_category.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_category.create_uid IS 'Created by';


--
-- Name: COLUMN res_partner_category.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_category.create_date IS 'Created on';


--
-- Name: COLUMN res_partner_category.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_category.name IS 'Category Name';


--
-- Name: COLUMN res_partner_category.color; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_category.color IS 'Color Index';


--
-- Name: COLUMN res_partner_category.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_category.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_partner_category.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_category.parent_id IS 'Parent Tag';


--
-- Name: COLUMN res_partner_category.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_category.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_partner_category.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_category.active IS 'Active';


--
-- Name: res_partner_category_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_partner_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_partner_category_id_seq OWNER TO odoouser;

--
-- Name: res_partner_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_partner_category_id_seq OWNED BY res_partner_category.id;


--
-- Name: res_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_partner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_partner_id_seq OWNER TO odoouser;

--
-- Name: res_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_partner_id_seq OWNED BY res_partner.id;


--
-- Name: res_partner_res_partner_category_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_partner_res_partner_category_rel (
    category_id integer NOT NULL,
    partner_id integer NOT NULL
);


ALTER TABLE res_partner_res_partner_category_rel OWNER TO odoouser;

--
-- Name: TABLE res_partner_res_partner_category_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_partner_res_partner_category_rel IS 'RELATION BETWEEN res_partner_category AND res_partner';


--
-- Name: res_partner_title; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_partner_title (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    shortcut character varying,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE res_partner_title OWNER TO odoouser;

--
-- Name: TABLE res_partner_title; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_partner_title IS 'res.partner.title';


--
-- Name: COLUMN res_partner_title.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_title.create_uid IS 'Created by';


--
-- Name: COLUMN res_partner_title.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_title.create_date IS 'Created on';


--
-- Name: COLUMN res_partner_title.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_title.name IS 'Title';


--
-- Name: COLUMN res_partner_title.shortcut; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_title.shortcut IS 'Abbreviation';


--
-- Name: COLUMN res_partner_title.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_title.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_partner_title.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_partner_title.write_date IS 'Last Updated on';


--
-- Name: res_partner_title_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_partner_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_partner_title_id_seq OWNER TO odoouser;

--
-- Name: res_partner_title_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_partner_title_id_seq OWNED BY res_partner_title.id;


--
-- Name: res_request_link; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_request_link (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    object character varying NOT NULL,
    write_uid integer,
    priority integer,
    write_date timestamp without time zone
);


ALTER TABLE res_request_link OWNER TO odoouser;

--
-- Name: TABLE res_request_link; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_request_link IS 'res.request.link';


--
-- Name: COLUMN res_request_link.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_request_link.create_uid IS 'Created by';


--
-- Name: COLUMN res_request_link.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_request_link.create_date IS 'Created on';


--
-- Name: COLUMN res_request_link.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_request_link.name IS 'Name';


--
-- Name: COLUMN res_request_link.object; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_request_link.object IS 'Object';


--
-- Name: COLUMN res_request_link.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_request_link.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_request_link.priority; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_request_link.priority IS 'Priority';


--
-- Name: COLUMN res_request_link.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_request_link.write_date IS 'Last Updated on';


--
-- Name: res_request_link_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_request_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_request_link_id_seq OWNER TO odoouser;

--
-- Name: res_request_link_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_request_link_id_seq OWNED BY res_request_link.id;


--
-- Name: res_users_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_users_id_seq OWNER TO odoouser;

--
-- Name: res_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_users_id_seq OWNED BY res_users.id;


--
-- Name: res_users_log; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_users_log (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE res_users_log OWNER TO odoouser;

--
-- Name: TABLE res_users_log; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_users_log IS 'res.users.log';


--
-- Name: COLUMN res_users_log.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users_log.create_uid IS 'Created by';


--
-- Name: COLUMN res_users_log.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users_log.create_date IS 'Created on';


--
-- Name: COLUMN res_users_log.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users_log.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_users_log.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN res_users_log.write_uid IS 'Last Updated by';


--
-- Name: res_users_log_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE res_users_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE res_users_log_id_seq OWNER TO odoouser;

--
-- Name: res_users_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE res_users_log_id_seq OWNED BY res_users_log.id;


--
-- Name: res_users_web_tip_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE res_users_web_tip_rel (
    web_tip_id integer NOT NULL,
    res_users_id integer NOT NULL
);


ALTER TABLE res_users_web_tip_rel OWNER TO odoouser;

--
-- Name: TABLE res_users_web_tip_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE res_users_web_tip_rel IS 'RELATION BETWEEN web_tip AND res_users';


--
-- Name: resource_calendar; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE resource_calendar (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    company_id integer,
    write_uid integer,
    manager integer,
    write_date timestamp without time zone
);


ALTER TABLE resource_calendar OWNER TO odoouser;

--
-- Name: TABLE resource_calendar; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE resource_calendar IS 'Resource Calendar';


--
-- Name: COLUMN resource_calendar.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar.create_uid IS 'Created by';


--
-- Name: COLUMN resource_calendar.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar.create_date IS 'Created on';


--
-- Name: COLUMN resource_calendar.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar.name IS 'Name';


--
-- Name: COLUMN resource_calendar.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar.company_id IS 'Company';


--
-- Name: COLUMN resource_calendar.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar.write_uid IS 'Last Updated by';


--
-- Name: COLUMN resource_calendar.manager; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar.manager IS 'Workgroup Manager';


--
-- Name: COLUMN resource_calendar.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar.write_date IS 'Last Updated on';


--
-- Name: resource_calendar_attendance; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE resource_calendar_attendance (
    id integer NOT NULL,
    dayofweek character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    date_from date,
    write_uid integer,
    hour_from double precision NOT NULL,
    hour_to double precision NOT NULL,
    write_date timestamp without time zone,
    date_to date,
    calendar_id integer NOT NULL
);


ALTER TABLE resource_calendar_attendance OWNER TO odoouser;

--
-- Name: TABLE resource_calendar_attendance; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE resource_calendar_attendance IS 'Work Detail';


--
-- Name: COLUMN resource_calendar_attendance.dayofweek; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.dayofweek IS 'Day of Week';


--
-- Name: COLUMN resource_calendar_attendance.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.create_uid IS 'Created by';


--
-- Name: COLUMN resource_calendar_attendance.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.create_date IS 'Created on';


--
-- Name: COLUMN resource_calendar_attendance.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.name IS 'Name';


--
-- Name: COLUMN resource_calendar_attendance.date_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.date_from IS 'Starting Date';


--
-- Name: COLUMN resource_calendar_attendance.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.write_uid IS 'Last Updated by';


--
-- Name: COLUMN resource_calendar_attendance.hour_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.hour_from IS 'Work from';


--
-- Name: COLUMN resource_calendar_attendance.hour_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.hour_to IS 'Work to';


--
-- Name: COLUMN resource_calendar_attendance.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.write_date IS 'Last Updated on';


--
-- Name: COLUMN resource_calendar_attendance.date_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.date_to IS 'End Date';


--
-- Name: COLUMN resource_calendar_attendance.calendar_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_attendance.calendar_id IS 'Resource''s Calendar';


--
-- Name: resource_calendar_attendance_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE resource_calendar_attendance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE resource_calendar_attendance_id_seq OWNER TO odoouser;

--
-- Name: resource_calendar_attendance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE resource_calendar_attendance_id_seq OWNED BY resource_calendar_attendance.id;


--
-- Name: resource_calendar_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE resource_calendar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE resource_calendar_id_seq OWNER TO odoouser;

--
-- Name: resource_calendar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE resource_calendar_id_seq OWNED BY resource_calendar.id;


--
-- Name: resource_calendar_leaves; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE resource_calendar_leaves (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying,
    resource_id integer,
    date_from timestamp without time zone NOT NULL,
    company_id integer,
    write_uid integer,
    write_date timestamp without time zone,
    date_to timestamp without time zone NOT NULL,
    calendar_id integer
);


ALTER TABLE resource_calendar_leaves OWNER TO odoouser;

--
-- Name: TABLE resource_calendar_leaves; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE resource_calendar_leaves IS 'Leave Detail';


--
-- Name: COLUMN resource_calendar_leaves.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_leaves.create_uid IS 'Created by';


--
-- Name: COLUMN resource_calendar_leaves.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_leaves.create_date IS 'Created on';


--
-- Name: COLUMN resource_calendar_leaves.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_leaves.name IS 'Name';


--
-- Name: COLUMN resource_calendar_leaves.resource_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_leaves.resource_id IS 'Resource';


--
-- Name: COLUMN resource_calendar_leaves.date_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_leaves.date_from IS 'Start Date';


--
-- Name: COLUMN resource_calendar_leaves.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_leaves.company_id IS 'Company';


--
-- Name: COLUMN resource_calendar_leaves.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_leaves.write_uid IS 'Last Updated by';


--
-- Name: COLUMN resource_calendar_leaves.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_leaves.write_date IS 'Last Updated on';


--
-- Name: COLUMN resource_calendar_leaves.date_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_leaves.date_to IS 'End Date';


--
-- Name: COLUMN resource_calendar_leaves.calendar_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_calendar_leaves.calendar_id IS 'Working Time';


--
-- Name: resource_calendar_leaves_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE resource_calendar_leaves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE resource_calendar_leaves_id_seq OWNER TO odoouser;

--
-- Name: resource_calendar_leaves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE resource_calendar_leaves_id_seq OWNED BY resource_calendar_leaves.id;


--
-- Name: resource_resource; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE resource_resource (
    id integer NOT NULL,
    create_uid integer,
    time_efficiency double precision NOT NULL,
    code character varying(16),
    user_id integer,
    name character varying NOT NULL,
    company_id integer,
    write_uid integer,
    write_date timestamp without time zone,
    calendar_id integer,
    active boolean,
    create_date timestamp without time zone,
    resource_type character varying NOT NULL
);


ALTER TABLE resource_resource OWNER TO odoouser;

--
-- Name: TABLE resource_resource; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE resource_resource IS 'Resource Detail';


--
-- Name: COLUMN resource_resource.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.create_uid IS 'Created by';


--
-- Name: COLUMN resource_resource.time_efficiency; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.time_efficiency IS 'Efficiency Factor';


--
-- Name: COLUMN resource_resource.code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.code IS 'Code';


--
-- Name: COLUMN resource_resource.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.user_id IS 'User';


--
-- Name: COLUMN resource_resource.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.name IS 'Name';


--
-- Name: COLUMN resource_resource.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.company_id IS 'Company';


--
-- Name: COLUMN resource_resource.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.write_uid IS 'Last Updated by';


--
-- Name: COLUMN resource_resource.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.write_date IS 'Last Updated on';


--
-- Name: COLUMN resource_resource.calendar_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.calendar_id IS 'Working Time';


--
-- Name: COLUMN resource_resource.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.active IS 'Active';


--
-- Name: COLUMN resource_resource.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.create_date IS 'Created on';


--
-- Name: COLUMN resource_resource.resource_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN resource_resource.resource_type IS 'Resource Type';


--
-- Name: resource_resource_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE resource_resource_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE resource_resource_id_seq OWNER TO odoouser;

--
-- Name: resource_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE resource_resource_id_seq OWNED BY resource_resource.id;


--
-- Name: rule_group_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE rule_group_rel (
    rule_group_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE rule_group_rel OWNER TO odoouser;

--
-- Name: TABLE rule_group_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE rule_group_rel IS 'RELATION BETWEEN ir_rule AND res_groups';


--
-- Name: sale_advance_payment_inv; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE sale_advance_payment_inv (
    id integer NOT NULL,
    count integer,
    create_uid integer,
    create_date timestamp without time zone,
    product_id integer,
    advance_payment_method character varying NOT NULL,
    write_uid integer,
    amount numeric,
    write_date timestamp without time zone,
    deposit_account_id integer
);


ALTER TABLE sale_advance_payment_inv OWNER TO odoouser;

--
-- Name: TABLE sale_advance_payment_inv; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE sale_advance_payment_inv IS 'Sales Advance Payment Invoice';


--
-- Name: COLUMN sale_advance_payment_inv.count; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_advance_payment_inv.count IS '# of Orders';


--
-- Name: COLUMN sale_advance_payment_inv.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_advance_payment_inv.create_uid IS 'Created by';


--
-- Name: COLUMN sale_advance_payment_inv.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_advance_payment_inv.create_date IS 'Created on';


--
-- Name: COLUMN sale_advance_payment_inv.product_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_advance_payment_inv.product_id IS 'Down Payment Product';


--
-- Name: COLUMN sale_advance_payment_inv.advance_payment_method; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_advance_payment_inv.advance_payment_method IS 'What do you want to invoice?';


--
-- Name: COLUMN sale_advance_payment_inv.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_advance_payment_inv.write_uid IS 'Last Updated by';


--
-- Name: COLUMN sale_advance_payment_inv.amount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_advance_payment_inv.amount IS 'Down Payment Amount';


--
-- Name: COLUMN sale_advance_payment_inv.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_advance_payment_inv.write_date IS 'Last Updated on';


--
-- Name: COLUMN sale_advance_payment_inv.deposit_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_advance_payment_inv.deposit_account_id IS 'Income Account';


--
-- Name: sale_advance_payment_inv_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE sale_advance_payment_inv_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sale_advance_payment_inv_id_seq OWNER TO odoouser;

--
-- Name: sale_advance_payment_inv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE sale_advance_payment_inv_id_seq OWNED BY sale_advance_payment_inv.id;


--
-- Name: sale_config_settings; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE sale_config_settings (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    deposit_product_id_setting integer,
    auto_done_setting integer,
    group_display_incoterm integer,
    group_pricelist_item boolean,
    group_product_variant integer,
    group_sale_pricelist boolean,
    default_invoice_policy character varying,
    group_product_pricelist boolean,
    module_website_portal boolean,
    module_website_quote integer,
    group_discount_per_so_line integer,
    module_sale_margin integer,
    sale_pricelist_setting character varying NOT NULL,
    module_website_sale_digital boolean,
    group_uom integer,
    group_sale_delivery_address integer,
    module_sale_contract boolean,
    module_crm_voip boolean,
    alias_domain character varying,
    module_website_sign boolean,
    generate_sales_team_alias boolean,
    group_use_lead integer,
    alias_prefix character varying
);


ALTER TABLE sale_config_settings OWNER TO odoouser;

--
-- Name: TABLE sale_config_settings; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE sale_config_settings IS 'sale.config.settings';


--
-- Name: COLUMN sale_config_settings.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.create_uid IS 'Created by';


--
-- Name: COLUMN sale_config_settings.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.create_date IS 'Created on';


--
-- Name: COLUMN sale_config_settings.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.write_date IS 'Last Updated on';


--
-- Name: COLUMN sale_config_settings.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.write_uid IS 'Last Updated by';


--
-- Name: COLUMN sale_config_settings.deposit_product_id_setting; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.deposit_product_id_setting IS 'Deposit Product';


--
-- Name: COLUMN sale_config_settings.auto_done_setting; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.auto_done_setting IS 'Sale Order Modification';


--
-- Name: COLUMN sale_config_settings.group_display_incoterm; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.group_display_incoterm IS 'Incoterms';


--
-- Name: COLUMN sale_config_settings.group_pricelist_item; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.group_pricelist_item IS 'Show pricelists to customers';


--
-- Name: COLUMN sale_config_settings.group_product_variant; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.group_product_variant IS 'Product Variants';


--
-- Name: COLUMN sale_config_settings.group_sale_pricelist; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.group_sale_pricelist IS 'Use pricelists to adapt your price per customers';


--
-- Name: COLUMN sale_config_settings.default_invoice_policy; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.default_invoice_policy IS 'Default Invoicing';


--
-- Name: COLUMN sale_config_settings.group_product_pricelist; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.group_product_pricelist IS 'Show pricelists On Products';


--
-- Name: COLUMN sale_config_settings.module_website_portal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.module_website_portal IS 'Enable customer portal to track orders, delivery and invoices';


--
-- Name: COLUMN sale_config_settings.module_website_quote; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.module_website_quote IS 'Online Quotations';


--
-- Name: COLUMN sale_config_settings.group_discount_per_so_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.group_discount_per_so_line IS 'Discount';


--
-- Name: COLUMN sale_config_settings.module_sale_margin; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.module_sale_margin IS 'Margins';


--
-- Name: COLUMN sale_config_settings.sale_pricelist_setting; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.sale_pricelist_setting IS 'unknown';


--
-- Name: COLUMN sale_config_settings.module_website_sale_digital; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.module_website_sale_digital IS 'Sell digital products - provide downloadable content on your customer portal';


--
-- Name: COLUMN sale_config_settings.group_uom; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.group_uom IS 'Unit of Measures';


--
-- Name: COLUMN sale_config_settings.group_sale_delivery_address; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.group_sale_delivery_address IS 'Addresses';


--
-- Name: COLUMN sale_config_settings.module_sale_contract; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.module_sale_contract IS 'Manage subscriptions and recurring invoicing';


--
-- Name: COLUMN sale_config_settings.module_crm_voip; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.module_crm_voip IS 'VoIP integration';


--
-- Name: COLUMN sale_config_settings.alias_domain; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.alias_domain IS 'Alias Domain';


--
-- Name: COLUMN sale_config_settings.module_website_sign; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.module_website_sign IS 'Odoo Sign';


--
-- Name: COLUMN sale_config_settings.generate_sales_team_alias; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.generate_sales_team_alias IS 'Automatically generate an email alias at the sales team creation';


--
-- Name: COLUMN sale_config_settings.group_use_lead; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.group_use_lead IS 'Leads';


--
-- Name: COLUMN sale_config_settings.alias_prefix; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_config_settings.alias_prefix IS 'Default Alias Name for Leads';


--
-- Name: sale_config_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE sale_config_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sale_config_settings_id_seq OWNER TO odoouser;

--
-- Name: sale_config_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE sale_config_settings_id_seq OWNED BY sale_config_settings.id;


--
-- Name: sale_order; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE sale_order (
    id integer NOT NULL,
    origin character varying,
    create_date timestamp without time zone,
    write_uid integer,
    team_id integer,
    client_order_ref character varying,
    date_order timestamp without time zone NOT NULL,
    partner_id integer NOT NULL,
    create_uid integer,
    procurement_group_id integer,
    amount_untaxed numeric,
    message_last_post timestamp without time zone,
    company_id integer,
    note text,
    state character varying,
    pricelist_id integer NOT NULL,
    project_id integer,
    amount_tax numeric,
    validity_date date,
    payment_term_id integer,
    write_date timestamp without time zone,
    partner_invoice_id integer NOT NULL,
    user_id integer,
    fiscal_position_id integer,
    amount_total numeric,
    invoice_status character varying,
    name character varying NOT NULL,
    partner_shipping_id integer NOT NULL,
    campaign_id integer,
    opportunity_id integer,
    medium_id integer,
    source_id integer,
    payment_tx_id integer,
    payment_acquirer_id integer
);


ALTER TABLE sale_order OWNER TO odoouser;

--
-- Name: TABLE sale_order; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE sale_order IS 'Sales Order';


--
-- Name: COLUMN sale_order.origin; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.origin IS 'Source Document';


--
-- Name: COLUMN sale_order.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.create_date IS 'Creation Date';


--
-- Name: COLUMN sale_order.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.write_uid IS 'Last Updated by';


--
-- Name: COLUMN sale_order.team_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.team_id IS 'Sales Team';


--
-- Name: COLUMN sale_order.client_order_ref; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.client_order_ref IS 'Customer Reference';


--
-- Name: COLUMN sale_order.date_order; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.date_order IS 'Order Date';


--
-- Name: COLUMN sale_order.partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.partner_id IS 'Customer';


--
-- Name: COLUMN sale_order.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.create_uid IS 'Created by';


--
-- Name: COLUMN sale_order.procurement_group_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.procurement_group_id IS 'Procurement Group';


--
-- Name: COLUMN sale_order.amount_untaxed; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.amount_untaxed IS 'Untaxed Amount';


--
-- Name: COLUMN sale_order.message_last_post; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.message_last_post IS 'Last Message Date';


--
-- Name: COLUMN sale_order.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.company_id IS 'Company';


--
-- Name: COLUMN sale_order.note; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.note IS 'Terms and conditions';


--
-- Name: COLUMN sale_order.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.state IS 'Status';


--
-- Name: COLUMN sale_order.pricelist_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.pricelist_id IS 'Pricelist';


--
-- Name: COLUMN sale_order.project_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.project_id IS 'Analytic Account';


--
-- Name: COLUMN sale_order.amount_tax; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.amount_tax IS 'Taxes';


--
-- Name: COLUMN sale_order.validity_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.validity_date IS 'Expiration Date';


--
-- Name: COLUMN sale_order.payment_term_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.payment_term_id IS 'Payment Term';


--
-- Name: COLUMN sale_order.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.write_date IS 'Last Updated on';


--
-- Name: COLUMN sale_order.partner_invoice_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.partner_invoice_id IS 'Invoice Address';


--
-- Name: COLUMN sale_order.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.user_id IS 'Salesperson';


--
-- Name: COLUMN sale_order.fiscal_position_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.fiscal_position_id IS 'Fiscal Position';


--
-- Name: COLUMN sale_order.amount_total; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.amount_total IS 'Total';


--
-- Name: COLUMN sale_order.invoice_status; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.invoice_status IS 'Invoice Status';


--
-- Name: COLUMN sale_order.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.name IS 'Order Reference';


--
-- Name: COLUMN sale_order.partner_shipping_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.partner_shipping_id IS 'Delivery Address';


--
-- Name: COLUMN sale_order.campaign_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.campaign_id IS 'Campaign';


--
-- Name: COLUMN sale_order.opportunity_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.opportunity_id IS 'Opportunity';


--
-- Name: COLUMN sale_order.medium_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.medium_id IS 'Medium';


--
-- Name: COLUMN sale_order.source_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.source_id IS 'Source';


--
-- Name: COLUMN sale_order.payment_tx_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.payment_tx_id IS 'Transaction';


--
-- Name: COLUMN sale_order.payment_acquirer_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order.payment_acquirer_id IS 'Payment Acquirer';


--
-- Name: sale_order_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE sale_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sale_order_id_seq OWNER TO odoouser;

--
-- Name: sale_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE sale_order_id_seq OWNED BY sale_order.id;


--
-- Name: sale_order_line; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE sale_order_line (
    id integer NOT NULL,
    create_date timestamp without time zone,
    qty_to_invoice numeric,
    sequence integer,
    price_unit numeric NOT NULL,
    product_uom_qty numeric NOT NULL,
    qty_invoiced numeric,
    write_uid integer,
    currency_id integer,
    create_uid integer,
    price_tax numeric,
    product_uom integer NOT NULL,
    customer_lead double precision NOT NULL,
    company_id integer,
    name text NOT NULL,
    state character varying,
    order_partner_id integer,
    order_id integer NOT NULL,
    price_subtotal numeric,
    discount numeric,
    write_date timestamp without time zone,
    price_reduce numeric,
    qty_delivered numeric,
    price_total numeric,
    invoice_status character varying,
    product_id integer NOT NULL,
    salesman_id integer
);


ALTER TABLE sale_order_line OWNER TO odoouser;

--
-- Name: TABLE sale_order_line; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE sale_order_line IS 'Sales Order Line';


--
-- Name: COLUMN sale_order_line.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.create_date IS 'Created on';


--
-- Name: COLUMN sale_order_line.qty_to_invoice; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.qty_to_invoice IS 'To Invoice';


--
-- Name: COLUMN sale_order_line.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.sequence IS 'Sequence';


--
-- Name: COLUMN sale_order_line.price_unit; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.price_unit IS 'Unit Price';


--
-- Name: COLUMN sale_order_line.product_uom_qty; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.product_uom_qty IS 'Quantity';


--
-- Name: COLUMN sale_order_line.qty_invoiced; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.qty_invoiced IS 'Invoiced';


--
-- Name: COLUMN sale_order_line.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN sale_order_line.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.currency_id IS 'Currency';


--
-- Name: COLUMN sale_order_line.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.create_uid IS 'Created by';


--
-- Name: COLUMN sale_order_line.price_tax; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.price_tax IS 'Taxes';


--
-- Name: COLUMN sale_order_line.product_uom; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.product_uom IS 'Unit of Measure';


--
-- Name: COLUMN sale_order_line.customer_lead; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.customer_lead IS 'Delivery Lead Time';


--
-- Name: COLUMN sale_order_line.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.company_id IS 'Company';


--
-- Name: COLUMN sale_order_line.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.name IS 'Description';


--
-- Name: COLUMN sale_order_line.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.state IS 'Order Status';


--
-- Name: COLUMN sale_order_line.order_partner_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.order_partner_id IS 'Customer';


--
-- Name: COLUMN sale_order_line.order_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.order_id IS 'Order Reference';


--
-- Name: COLUMN sale_order_line.price_subtotal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.price_subtotal IS 'Subtotal';


--
-- Name: COLUMN sale_order_line.discount; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.discount IS 'Discount (%)';


--
-- Name: COLUMN sale_order_line.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.write_date IS 'Last Updated on';


--
-- Name: COLUMN sale_order_line.price_reduce; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.price_reduce IS 'Price Reduce';


--
-- Name: COLUMN sale_order_line.qty_delivered; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.qty_delivered IS 'Delivered';


--
-- Name: COLUMN sale_order_line.price_total; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.price_total IS 'Total';


--
-- Name: COLUMN sale_order_line.invoice_status; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.invoice_status IS 'Invoice Status';


--
-- Name: COLUMN sale_order_line.product_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.product_id IS 'Product';


--
-- Name: COLUMN sale_order_line.salesman_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN sale_order_line.salesman_id IS 'Salesperson';


--
-- Name: sale_order_line_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE sale_order_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sale_order_line_id_seq OWNER TO odoouser;

--
-- Name: sale_order_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE sale_order_line_id_seq OWNED BY sale_order_line.id;


--
-- Name: sale_order_line_invoice_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE sale_order_line_invoice_rel (
    order_line_id integer NOT NULL,
    invoice_line_id integer NOT NULL
);


ALTER TABLE sale_order_line_invoice_rel OWNER TO odoouser;

--
-- Name: TABLE sale_order_line_invoice_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE sale_order_line_invoice_rel IS 'RELATION BETWEEN sale_order_line AND account_invoice_line';


--
-- Name: sale_order_tag_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE sale_order_tag_rel (
    order_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE sale_order_tag_rel OWNER TO odoouser;

--
-- Name: TABLE sale_order_tag_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE sale_order_tag_rel IS 'RELATION BETWEEN sale_order AND crm_lead_tag';


--
-- Name: sale_report; Type: VIEW; Schema: public; Owner: odoouser
--

CREATE VIEW sale_report AS
 WITH currency_rate AS (
         SELECT r.currency_id,
            COALESCE(r.company_id, c.id) AS company_id,
            r.rate,
            r.name AS date_start,
            ( SELECT r2.name
                   FROM res_currency_rate r2
                  WHERE ((r2.name > r.name) AND (r2.currency_id = r.currency_id) AND ((r2.company_id IS NULL) OR (r2.company_id = c.id)))
                  ORDER BY r2.name
                 LIMIT 1) AS date_end
           FROM (res_currency_rate r
             JOIN res_company c ON (((r.company_id IS NULL) OR (r.company_id = c.id))))
        )
 SELECT min(l.id) AS id,
    l.product_id,
    t.uom_id AS product_uom,
    sum(((l.product_uom_qty / u.factor) * u2.factor)) AS product_uom_qty,
    sum(((l.qty_delivered / u.factor) * u2.factor)) AS qty_delivered,
    sum(((l.qty_invoiced / u.factor) * u2.factor)) AS qty_invoiced,
    sum(((l.qty_to_invoice / u.factor) * u2.factor)) AS qty_to_invoice,
    sum((l.price_total / COALESCE(cr.rate, 1.0))) AS price_total,
    sum((l.price_subtotal / COALESCE(cr.rate, 1.0))) AS price_subtotal,
    count(*) AS nbr,
    s.date_order AS date,
    s.state,
    s.partner_id,
    s.user_id,
    s.company_id,
    (date_part('epoch'::text, avg((date_trunc('day'::text, s.date_order) - date_trunc('day'::text, s.create_date)))) / ((((24 * 60) * 60))::numeric(16,2))::double precision) AS delay,
    t.categ_id,
    s.pricelist_id,
    s.project_id AS analytic_account_id,
    s.team_id,
    p.product_tmpl_id,
    partner.country_id,
    partner.commercial_partner_id
   FROM ((((((((sale_order_line l
     JOIN sale_order s ON ((l.order_id = s.id)))
     JOIN res_partner partner ON ((s.partner_id = partner.id)))
     LEFT JOIN product_product p ON ((l.product_id = p.id)))
     LEFT JOIN product_template t ON ((p.product_tmpl_id = t.id)))
     LEFT JOIN product_uom u ON ((u.id = l.product_uom)))
     LEFT JOIN product_uom u2 ON ((u2.id = t.uom_id)))
     LEFT JOIN product_pricelist pp ON ((s.pricelist_id = pp.id)))
     LEFT JOIN currency_rate cr ON (((cr.currency_id = pp.currency_id) AND (cr.company_id = s.company_id) AND (cr.date_start <= COALESCE((s.date_order)::timestamp with time zone, now())) AND ((cr.date_end IS NULL) OR (cr.date_end > COALESCE((s.date_order)::timestamp with time zone, now()))))))
  GROUP BY l.product_id, l.order_id, t.uom_id, t.categ_id, s.date_order, s.partner_id, s.user_id, s.state, s.company_id, s.pricelist_id, s.project_id, s.team_id, p.product_tmpl_id, partner.country_id, partner.commercial_partner_id;


ALTER TABLE sale_report OWNER TO odoouser;

--
-- Name: utm_campaign; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE utm_campaign (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE utm_campaign OWNER TO odoouser;

--
-- Name: TABLE utm_campaign; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE utm_campaign IS 'Campaign';


--
-- Name: COLUMN utm_campaign.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_campaign.create_uid IS 'Created by';


--
-- Name: COLUMN utm_campaign.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_campaign.create_date IS 'Created on';


--
-- Name: COLUMN utm_campaign.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_campaign.name IS 'Campaign Name';


--
-- Name: COLUMN utm_campaign.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_campaign.write_uid IS 'Last Updated by';


--
-- Name: COLUMN utm_campaign.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_campaign.write_date IS 'Last Updated on';


--
-- Name: utm_campaign_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE utm_campaign_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utm_campaign_id_seq OWNER TO odoouser;

--
-- Name: utm_campaign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE utm_campaign_id_seq OWNED BY utm_campaign.id;


--
-- Name: utm_medium; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE utm_medium (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone,
    active boolean
);


ALTER TABLE utm_medium OWNER TO odoouser;

--
-- Name: TABLE utm_medium; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE utm_medium IS 'Channels';


--
-- Name: COLUMN utm_medium.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_medium.create_uid IS 'Created by';


--
-- Name: COLUMN utm_medium.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_medium.create_date IS 'Created on';


--
-- Name: COLUMN utm_medium.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_medium.name IS 'Channel Name';


--
-- Name: COLUMN utm_medium.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_medium.write_uid IS 'Last Updated by';


--
-- Name: COLUMN utm_medium.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_medium.write_date IS 'Last Updated on';


--
-- Name: COLUMN utm_medium.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_medium.active IS 'Active';


--
-- Name: utm_medium_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE utm_medium_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utm_medium_id_seq OWNER TO odoouser;

--
-- Name: utm_medium_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE utm_medium_id_seq OWNED BY utm_medium.id;


--
-- Name: utm_source; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE utm_source (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE utm_source OWNER TO odoouser;

--
-- Name: TABLE utm_source; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE utm_source IS 'Source';


--
-- Name: COLUMN utm_source.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_source.create_uid IS 'Created by';


--
-- Name: COLUMN utm_source.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_source.create_date IS 'Created on';


--
-- Name: COLUMN utm_source.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_source.name IS 'Source Name';


--
-- Name: COLUMN utm_source.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_source.write_uid IS 'Last Updated by';


--
-- Name: COLUMN utm_source.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN utm_source.write_date IS 'Last Updated on';


--
-- Name: utm_source_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE utm_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utm_source_id_seq OWNER TO odoouser;

--
-- Name: utm_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE utm_source_id_seq OWNED BY utm_source.id;


--
-- Name: validate_account_move; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE validate_account_move (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE validate_account_move OWNER TO odoouser;

--
-- Name: TABLE validate_account_move; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE validate_account_move IS 'Validate Account Move';


--
-- Name: COLUMN validate_account_move.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN validate_account_move.create_uid IS 'Created by';


--
-- Name: COLUMN validate_account_move.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN validate_account_move.create_date IS 'Created on';


--
-- Name: COLUMN validate_account_move.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN validate_account_move.write_date IS 'Last Updated on';


--
-- Name: COLUMN validate_account_move.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN validate_account_move.write_uid IS 'Last Updated by';


--
-- Name: validate_account_move_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE validate_account_move_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE validate_account_move_id_seq OWNER TO odoouser;

--
-- Name: validate_account_move_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE validate_account_move_id_seq OWNED BY validate_account_move.id;


--
-- Name: web_editor_converter_test; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE web_editor_converter_test (
    id integer NOT NULL,
    "binary" bytea,
    selection integer,
    create_date timestamp without time zone,
    create_uid integer,
    text text,
    "float" double precision,
    "numeric" numeric,
    datetime timestamp without time zone,
    "char" character varying,
    html text,
    selection_str character varying,
    write_date timestamp without time zone,
    many2one integer,
    date date,
    "integer" integer,
    write_uid integer
);


ALTER TABLE web_editor_converter_test OWNER TO odoouser;

--
-- Name: TABLE web_editor_converter_test; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE web_editor_converter_test IS 'web_editor.converter.test';


--
-- Name: COLUMN web_editor_converter_test."binary"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test."binary" IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test.selection; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.selection IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.create_date IS 'Created on';


--
-- Name: COLUMN web_editor_converter_test.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.create_uid IS 'Created by';


--
-- Name: COLUMN web_editor_converter_test.text; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.text IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test."float"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test."float" IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test."numeric"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test."numeric" IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test.datetime; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.datetime IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test."char"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test."char" IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test.html; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.html IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test.selection_str; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.selection_str IS 'Lorsqu''un pancake prend l''avion à destination de Toronto et qu''il fait une escale technique à St Claude, on dit:';


--
-- Name: COLUMN web_editor_converter_test.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.write_date IS 'Last Updated on';


--
-- Name: COLUMN web_editor_converter_test.many2one; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.many2one IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test.date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.date IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test."integer"; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test."integer" IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test.write_uid IS 'Last Updated by';


--
-- Name: web_editor_converter_test_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE web_editor_converter_test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_editor_converter_test_id_seq OWNER TO odoouser;

--
-- Name: web_editor_converter_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE web_editor_converter_test_id_seq OWNED BY web_editor_converter_test.id;


--
-- Name: web_editor_converter_test_sub; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE web_editor_converter_test_sub (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE web_editor_converter_test_sub OWNER TO odoouser;

--
-- Name: TABLE web_editor_converter_test_sub; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE web_editor_converter_test_sub IS 'web_editor.converter.test.sub';


--
-- Name: COLUMN web_editor_converter_test_sub.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test_sub.create_uid IS 'Created by';


--
-- Name: COLUMN web_editor_converter_test_sub.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test_sub.create_date IS 'Created on';


--
-- Name: COLUMN web_editor_converter_test_sub.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test_sub.name IS 'unknown';


--
-- Name: COLUMN web_editor_converter_test_sub.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test_sub.write_uid IS 'Last Updated by';


--
-- Name: COLUMN web_editor_converter_test_sub.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_editor_converter_test_sub.write_date IS 'Last Updated on';


--
-- Name: web_editor_converter_test_sub_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE web_editor_converter_test_sub_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_editor_converter_test_sub_id_seq OWNER TO odoouser;

--
-- Name: web_editor_converter_test_sub_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE web_editor_converter_test_sub_id_seq OWNED BY web_editor_converter_test_sub.id;


--
-- Name: web_planner; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE web_planner (
    id integer NOT NULL,
    menu_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    planner_application character varying NOT NULL,
    view_id integer NOT NULL,
    write_uid integer,
    write_date timestamp without time zone,
    active boolean,
    progress integer,
    data text,
    tooltip_planner text
);


ALTER TABLE web_planner OWNER TO odoouser;

--
-- Name: TABLE web_planner; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE web_planner IS 'Planner';


--
-- Name: COLUMN web_planner.menu_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.menu_id IS 'Menu';


--
-- Name: COLUMN web_planner.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.create_uid IS 'Created by';


--
-- Name: COLUMN web_planner.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.create_date IS 'Created on';


--
-- Name: COLUMN web_planner.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.name IS 'Name';


--
-- Name: COLUMN web_planner.planner_application; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.planner_application IS 'Planner Application';


--
-- Name: COLUMN web_planner.view_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.view_id IS 'Template';


--
-- Name: COLUMN web_planner.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.write_uid IS 'Last Updated by';


--
-- Name: COLUMN web_planner.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.write_date IS 'Last Updated on';


--
-- Name: COLUMN web_planner.active; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.active IS 'Active';


--
-- Name: COLUMN web_planner.progress; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.progress IS 'Progress Percentage';


--
-- Name: COLUMN web_planner.data; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.data IS 'Data';


--
-- Name: COLUMN web_planner.tooltip_planner; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_planner.tooltip_planner IS 'Planner Tooltips';


--
-- Name: web_planner_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE web_planner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_planner_id_seq OWNER TO odoouser;

--
-- Name: web_planner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE web_planner_id_seq OWNED BY web_planner.id;


--
-- Name: web_tip; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE web_tip (
    id integer NOT NULL,
    create_uid integer,
    placement character varying,
    end_selector character varying,
    title character varying,
    description text NOT NULL,
    end_event character varying,
    write_uid integer,
    mode character varying,
    write_date timestamp without time zone,
    trigger_selector character varying,
    create_date timestamp without time zone,
    model character varying,
    type character varying,
    highlight_selector character varying,
    action_id integer
);


ALTER TABLE web_tip OWNER TO odoouser;

--
-- Name: TABLE web_tip; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE web_tip IS 'Tips';


--
-- Name: COLUMN web_tip.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.create_uid IS 'Created by';


--
-- Name: COLUMN web_tip.placement; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.placement IS 'Placement';


--
-- Name: COLUMN web_tip.end_selector; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.end_selector IS 'End selector';


--
-- Name: COLUMN web_tip.title; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.title IS 'Tip title';


--
-- Name: COLUMN web_tip.description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.description IS 'Tip Description';


--
-- Name: COLUMN web_tip.end_event; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.end_event IS 'End event';


--
-- Name: COLUMN web_tip.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.write_uid IS 'Last Updated by';


--
-- Name: COLUMN web_tip.mode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.mode IS 'Mode';


--
-- Name: COLUMN web_tip.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.write_date IS 'Last Updated on';


--
-- Name: COLUMN web_tip.trigger_selector; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.trigger_selector IS 'Trigger selector';


--
-- Name: COLUMN web_tip.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.create_date IS 'Created on';


--
-- Name: COLUMN web_tip.model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.model IS 'Model';


--
-- Name: COLUMN web_tip.type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.type IS 'Type';


--
-- Name: COLUMN web_tip.highlight_selector; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.highlight_selector IS 'Highlight selector';


--
-- Name: COLUMN web_tip.action_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN web_tip.action_id IS 'Action';


--
-- Name: web_tip_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE web_tip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE web_tip_id_seq OWNER TO odoouser;

--
-- Name: web_tip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE web_tip_id_seq OWNED BY web_tip.id;


--
-- Name: website; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE website (
    id integer NOT NULL,
    domain character varying,
    create_date timestamp without time zone,
    social_linkedin character varying,
    cdn_filters text,
    social_facebook character varying,
    write_uid integer,
    google_analytics_key character varying,
    default_lang_id integer,
    social_twitter character varying,
    cdn_url character varying,
    create_uid integer,
    user_id integer,
    default_lang_code character varying,
    social_googleplus character varying,
    company_id integer,
    social_github character varying,
    compress_html boolean,
    social_youtube character varying,
    write_date timestamp without time zone,
    cdn_activated boolean,
    name character varying,
    salesteam_id integer,
    salesperson_id integer,
    channel_id integer
);


ALTER TABLE website OWNER TO odoouser;

--
-- Name: TABLE website; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE website IS 'Website';


--
-- Name: COLUMN website.domain; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.domain IS 'Website Domain';


--
-- Name: COLUMN website.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.create_date IS 'Created on';


--
-- Name: COLUMN website.social_linkedin; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.social_linkedin IS 'LinkedIn Account';


--
-- Name: COLUMN website.cdn_filters; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.cdn_filters IS 'CDN Filters';


--
-- Name: COLUMN website.social_facebook; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.social_facebook IS 'Facebook Account';


--
-- Name: COLUMN website.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.write_uid IS 'Last Updated by';


--
-- Name: COLUMN website.google_analytics_key; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.google_analytics_key IS 'Google Analytics Key';


--
-- Name: COLUMN website.default_lang_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.default_lang_id IS 'Default language';


--
-- Name: COLUMN website.social_twitter; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.social_twitter IS 'Twitter Account';


--
-- Name: COLUMN website.cdn_url; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.cdn_url IS 'CDN Base URL';


--
-- Name: COLUMN website.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.create_uid IS 'Created by';


--
-- Name: COLUMN website.user_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.user_id IS 'Public User';


--
-- Name: COLUMN website.default_lang_code; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.default_lang_code IS 'Default language code';


--
-- Name: COLUMN website.social_googleplus; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.social_googleplus IS 'Google+ Account';


--
-- Name: COLUMN website.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.company_id IS 'Company';


--
-- Name: COLUMN website.social_github; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.social_github IS 'GitHub Account';


--
-- Name: COLUMN website.compress_html; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.compress_html IS 'Compress HTML';


--
-- Name: COLUMN website.social_youtube; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.social_youtube IS 'Youtube Account';


--
-- Name: COLUMN website.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.write_date IS 'Last Updated on';


--
-- Name: COLUMN website.cdn_activated; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.cdn_activated IS 'Activate CDN for assets';


--
-- Name: COLUMN website.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.name IS 'Website Name';


--
-- Name: COLUMN website.salesteam_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.salesteam_id IS 'Sales Team';


--
-- Name: COLUMN website.salesperson_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.salesperson_id IS 'Salesperson';


--
-- Name: COLUMN website.channel_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website.channel_id IS 'Website Live Chat Channel';


--
-- Name: website_config_settings; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE website_config_settings (
    id integer NOT NULL,
    create_date timestamp without time zone,
    website_id integer NOT NULL,
    write_uid integer,
    create_uid integer,
    write_date timestamp without time zone,
    module_website_version boolean,
    module_website_form_editor boolean,
    module_delivery_usps boolean,
    module_delivery_fedex boolean,
    module_delivery_ups boolean,
    module_sale_ebay boolean,
    module_delivery_dhl boolean
);


ALTER TABLE website_config_settings OWNER TO odoouser;

--
-- Name: TABLE website_config_settings; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE website_config_settings IS 'website.config.settings';


--
-- Name: COLUMN website_config_settings.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.create_date IS 'Created on';


--
-- Name: COLUMN website_config_settings.website_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.website_id IS 'website';


--
-- Name: COLUMN website_config_settings.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.write_uid IS 'Last Updated by';


--
-- Name: COLUMN website_config_settings.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.create_uid IS 'Created by';


--
-- Name: COLUMN website_config_settings.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.write_date IS 'Last Updated on';


--
-- Name: COLUMN website_config_settings.module_website_version; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.module_website_version IS 'A/B testing and versioning';


--
-- Name: COLUMN website_config_settings.module_website_form_editor; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.module_website_form_editor IS 'Form builder: create and customize forms';


--
-- Name: COLUMN website_config_settings.module_delivery_usps; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.module_delivery_usps IS 'USPS integration';


--
-- Name: COLUMN website_config_settings.module_delivery_fedex; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.module_delivery_fedex IS 'Fedex integration';


--
-- Name: COLUMN website_config_settings.module_delivery_ups; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.module_delivery_ups IS 'UPS integration';


--
-- Name: COLUMN website_config_settings.module_sale_ebay; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.module_sale_ebay IS 'eBay connector';


--
-- Name: COLUMN website_config_settings.module_delivery_dhl; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_config_settings.module_delivery_dhl IS 'DHL integration';


--
-- Name: website_config_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE website_config_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE website_config_settings_id_seq OWNER TO odoouser;

--
-- Name: website_config_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE website_config_settings_id_seq OWNED BY website_config_settings.id;


--
-- Name: website_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE website_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE website_id_seq OWNER TO odoouser;

--
-- Name: website_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE website_id_seq OWNED BY website.id;


--
-- Name: website_lang_rel; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE website_lang_rel (
    website_id integer NOT NULL,
    lang_id integer NOT NULL
);


ALTER TABLE website_lang_rel OWNER TO odoouser;

--
-- Name: TABLE website_lang_rel; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE website_lang_rel IS 'RELATION BETWEEN website AND res_lang';


--
-- Name: website_menu; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE website_menu (
    id integer NOT NULL,
    parent_left integer,
    parent_right integer,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    sequence integer,
    url character varying,
    website_id integer,
    new_window boolean,
    write_uid integer,
    parent_id integer,
    write_date timestamp without time zone
);


ALTER TABLE website_menu OWNER TO odoouser;

--
-- Name: TABLE website_menu; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE website_menu IS 'Website Menu';


--
-- Name: COLUMN website_menu.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_menu.create_uid IS 'Created by';


--
-- Name: COLUMN website_menu.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_menu.create_date IS 'Created on';


--
-- Name: COLUMN website_menu.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_menu.name IS 'Menu';


--
-- Name: COLUMN website_menu.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_menu.sequence IS 'Sequence';


--
-- Name: COLUMN website_menu.url; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_menu.url IS 'Url';


--
-- Name: COLUMN website_menu.website_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_menu.website_id IS 'Website';


--
-- Name: COLUMN website_menu.new_window; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_menu.new_window IS 'New Window';


--
-- Name: COLUMN website_menu.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_menu.write_uid IS 'Last Updated by';


--
-- Name: COLUMN website_menu.parent_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_menu.parent_id IS 'Parent Menu';


--
-- Name: COLUMN website_menu.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_menu.write_date IS 'Last Updated on';


--
-- Name: website_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE website_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE website_menu_id_seq OWNER TO odoouser;

--
-- Name: website_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE website_menu_id_seq OWNED BY website_menu.id;


--
-- Name: website_pricelist; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE website_pricelist (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    website_id integer NOT NULL,
    write_uid integer,
    write_date timestamp without time zone,
    pricelist_id integer,
    selectable boolean
);


ALTER TABLE website_pricelist OWNER TO odoouser;

--
-- Name: TABLE website_pricelist; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE website_pricelist IS 'Website Pricelist';


--
-- Name: COLUMN website_pricelist.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_pricelist.create_uid IS 'Created by';


--
-- Name: COLUMN website_pricelist.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_pricelist.create_date IS 'Created on';


--
-- Name: COLUMN website_pricelist.website_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_pricelist.website_id IS 'Website';


--
-- Name: COLUMN website_pricelist.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_pricelist.write_uid IS 'Last Updated by';


--
-- Name: COLUMN website_pricelist.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_pricelist.write_date IS 'Last Updated on';


--
-- Name: COLUMN website_pricelist.pricelist_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_pricelist.pricelist_id IS 'Pricelist';


--
-- Name: COLUMN website_pricelist.selectable; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_pricelist.selectable IS 'Selectable';


--
-- Name: website_pricelist_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE website_pricelist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE website_pricelist_id_seq OWNER TO odoouser;

--
-- Name: website_pricelist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE website_pricelist_id_seq OWNED BY website_pricelist.id;


--
-- Name: website_seo_metadata; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE website_seo_metadata (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    website_meta_description text,
    website_meta_title character varying,
    write_date timestamp without time zone,
    website_meta_keywords character varying
);


ALTER TABLE website_seo_metadata OWNER TO odoouser;

--
-- Name: TABLE website_seo_metadata; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE website_seo_metadata IS 'SEO metadata';


--
-- Name: COLUMN website_seo_metadata.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_seo_metadata.create_uid IS 'Created by';


--
-- Name: COLUMN website_seo_metadata.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_seo_metadata.create_date IS 'Created on';


--
-- Name: COLUMN website_seo_metadata.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_seo_metadata.write_uid IS 'Last Updated by';


--
-- Name: COLUMN website_seo_metadata.website_meta_description; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_seo_metadata.website_meta_description IS 'Website meta description';


--
-- Name: COLUMN website_seo_metadata.website_meta_title; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_seo_metadata.website_meta_title IS 'Website meta title';


--
-- Name: COLUMN website_seo_metadata.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_seo_metadata.write_date IS 'Last Updated on';


--
-- Name: COLUMN website_seo_metadata.website_meta_keywords; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN website_seo_metadata.website_meta_keywords IS 'Website meta keywords';


--
-- Name: website_seo_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE website_seo_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE website_seo_metadata_id_seq OWNER TO odoouser;

--
-- Name: website_seo_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE website_seo_metadata_id_seq OWNED BY website_seo_metadata.id;


--
-- Name: wizard_ir_model_menu_create; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE wizard_ir_model_menu_create (
    id integer NOT NULL,
    menu_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE wizard_ir_model_menu_create OWNER TO odoouser;

--
-- Name: TABLE wizard_ir_model_menu_create; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE wizard_ir_model_menu_create IS 'wizard.ir.model.menu.create';


--
-- Name: COLUMN wizard_ir_model_menu_create.menu_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_ir_model_menu_create.menu_id IS 'Parent Menu';


--
-- Name: COLUMN wizard_ir_model_menu_create.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_ir_model_menu_create.create_uid IS 'Created by';


--
-- Name: COLUMN wizard_ir_model_menu_create.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_ir_model_menu_create.create_date IS 'Created on';


--
-- Name: COLUMN wizard_ir_model_menu_create.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_ir_model_menu_create.name IS 'Menu Name';


--
-- Name: COLUMN wizard_ir_model_menu_create.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_ir_model_menu_create.write_uid IS 'Last Updated by';


--
-- Name: COLUMN wizard_ir_model_menu_create.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_ir_model_menu_create.write_date IS 'Last Updated on';


--
-- Name: wizard_ir_model_menu_create_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE wizard_ir_model_menu_create_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wizard_ir_model_menu_create_id_seq OWNER TO odoouser;

--
-- Name: wizard_ir_model_menu_create_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE wizard_ir_model_menu_create_id_seq OWNED BY wizard_ir_model_menu_create.id;


--
-- Name: wizard_multi_charts_accounts; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE wizard_multi_charts_accounts (
    id integer NOT NULL,
    only_one_chart_template boolean,
    bank_account_code_prefix character varying,
    cash_account_code_prefix character varying,
    code_digits integer NOT NULL,
    create_date timestamp without time zone,
    create_uid integer,
    transfer_account_id integer NOT NULL,
    purchase_tax_id integer,
    chart_template_id integer NOT NULL,
    complete_tax_set boolean,
    sale_tax_id integer,
    write_uid integer,
    currency_id integer NOT NULL,
    company_id integer NOT NULL,
    purchase_tax_rate double precision,
    write_date timestamp without time zone,
    sale_tax_rate double precision
);


ALTER TABLE wizard_multi_charts_accounts OWNER TO odoouser;

--
-- Name: TABLE wizard_multi_charts_accounts; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE wizard_multi_charts_accounts IS 'wizard.multi.charts.accounts';


--
-- Name: COLUMN wizard_multi_charts_accounts.only_one_chart_template; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.only_one_chart_template IS 'Only One Chart Template Available';


--
-- Name: COLUMN wizard_multi_charts_accounts.bank_account_code_prefix; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.bank_account_code_prefix IS 'Bank Accounts Prefix';


--
-- Name: COLUMN wizard_multi_charts_accounts.cash_account_code_prefix; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.cash_account_code_prefix IS 'Cash Accounts Prefix';


--
-- Name: COLUMN wizard_multi_charts_accounts.code_digits; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.code_digits IS '# of Digits';


--
-- Name: COLUMN wizard_multi_charts_accounts.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.create_date IS 'Created on';


--
-- Name: COLUMN wizard_multi_charts_accounts.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.create_uid IS 'Created by';


--
-- Name: COLUMN wizard_multi_charts_accounts.transfer_account_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.transfer_account_id IS 'Transfer Account';


--
-- Name: COLUMN wizard_multi_charts_accounts.purchase_tax_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.purchase_tax_id IS 'Default Purchase Tax';


--
-- Name: COLUMN wizard_multi_charts_accounts.chart_template_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.chart_template_id IS 'Chart Template';


--
-- Name: COLUMN wizard_multi_charts_accounts.complete_tax_set; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.complete_tax_set IS 'Complete Set of Taxes';


--
-- Name: COLUMN wizard_multi_charts_accounts.sale_tax_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.sale_tax_id IS 'Default Sales Tax';


--
-- Name: COLUMN wizard_multi_charts_accounts.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.write_uid IS 'Last Updated by';


--
-- Name: COLUMN wizard_multi_charts_accounts.currency_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.currency_id IS 'Currency';


--
-- Name: COLUMN wizard_multi_charts_accounts.company_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.company_id IS 'Company';


--
-- Name: COLUMN wizard_multi_charts_accounts.purchase_tax_rate; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.purchase_tax_rate IS 'Purchase Tax(%)';


--
-- Name: COLUMN wizard_multi_charts_accounts.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.write_date IS 'Last Updated on';


--
-- Name: COLUMN wizard_multi_charts_accounts.sale_tax_rate; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wizard_multi_charts_accounts.sale_tax_rate IS 'Sales Tax(%)';


--
-- Name: wizard_multi_charts_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE wizard_multi_charts_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wizard_multi_charts_accounts_id_seq OWNER TO odoouser;

--
-- Name: wizard_multi_charts_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE wizard_multi_charts_accounts_id_seq OWNED BY wizard_multi_charts_accounts.id;


--
-- Name: wkf; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE wkf (
    id integer NOT NULL,
    name character varying NOT NULL,
    osv character varying NOT NULL,
    on_create boolean DEFAULT false,
    create_date timestamp without time zone,
    create_uid integer,
    write_date timestamp without time zone,
    write_uid integer
);


ALTER TABLE wkf OWNER TO odoouser;

--
-- Name: COLUMN wkf.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf.create_date IS 'Created on';


--
-- Name: COLUMN wkf.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf.create_uid IS 'Created by';


--
-- Name: COLUMN wkf.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf.write_date IS 'Last Updated on';


--
-- Name: COLUMN wkf.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf.write_uid IS 'Last Updated by';


--
-- Name: wkf_activity; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE wkf_activity (
    id integer NOT NULL,
    create_uid integer,
    kind character varying NOT NULL,
    create_date timestamp without time zone,
    name character varying NOT NULL,
    join_mode character varying(3) NOT NULL,
    flow_stop boolean,
    write_uid integer,
    subflow_id integer,
    split_mode character varying(3) NOT NULL,
    write_date timestamp without time zone,
    action text,
    wkf_id integer NOT NULL,
    signal_send character varying,
    flow_start boolean,
    action_id integer
);


ALTER TABLE wkf_activity OWNER TO odoouser;

--
-- Name: TABLE wkf_activity; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE wkf_activity IS 'workflow.activity';


--
-- Name: COLUMN wkf_activity.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.create_uid IS 'Created by';


--
-- Name: COLUMN wkf_activity.kind; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.kind IS 'Kind';


--
-- Name: COLUMN wkf_activity.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.create_date IS 'Created on';


--
-- Name: COLUMN wkf_activity.name; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.name IS 'Name';


--
-- Name: COLUMN wkf_activity.join_mode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.join_mode IS 'Join Mode';


--
-- Name: COLUMN wkf_activity.flow_stop; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.flow_stop IS 'Flow Stop';


--
-- Name: COLUMN wkf_activity.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.write_uid IS 'Last Updated by';


--
-- Name: COLUMN wkf_activity.subflow_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.subflow_id IS 'Subflow';


--
-- Name: COLUMN wkf_activity.split_mode; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.split_mode IS 'Split Mode';


--
-- Name: COLUMN wkf_activity.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.write_date IS 'Last Updated on';


--
-- Name: COLUMN wkf_activity.action; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.action IS 'Python Action';


--
-- Name: COLUMN wkf_activity.wkf_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.wkf_id IS 'Workflow';


--
-- Name: COLUMN wkf_activity.signal_send; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.signal_send IS 'Signal (subflow.*)';


--
-- Name: COLUMN wkf_activity.flow_start; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.flow_start IS 'Flow Start';


--
-- Name: COLUMN wkf_activity.action_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_activity.action_id IS 'Server Action';


--
-- Name: wkf_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE wkf_activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wkf_activity_id_seq OWNER TO odoouser;

--
-- Name: wkf_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE wkf_activity_id_seq OWNED BY wkf_activity.id;


--
-- Name: wkf_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE wkf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wkf_id_seq OWNER TO odoouser;

--
-- Name: wkf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE wkf_id_seq OWNED BY wkf.id;


--
-- Name: wkf_instance; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE wkf_instance (
    id integer NOT NULL,
    res_type character varying,
    uid integer,
    wkf_id integer,
    state character varying,
    res_id integer
);


ALTER TABLE wkf_instance OWNER TO odoouser;

--
-- Name: TABLE wkf_instance; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE wkf_instance IS 'workflow.instance';


--
-- Name: COLUMN wkf_instance.res_type; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_instance.res_type IS 'Resource Object';


--
-- Name: COLUMN wkf_instance.uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_instance.uid IS 'User';


--
-- Name: COLUMN wkf_instance.wkf_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_instance.wkf_id IS 'Workflow';


--
-- Name: COLUMN wkf_instance.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_instance.state IS 'Status';


--
-- Name: COLUMN wkf_instance.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_instance.res_id IS 'Resource ID';


--
-- Name: wkf_instance_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE wkf_instance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wkf_instance_id_seq OWNER TO odoouser;

--
-- Name: wkf_instance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE wkf_instance_id_seq OWNED BY wkf_instance.id;


--
-- Name: wkf_transition; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE wkf_transition (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    trigger_model character varying,
    signal character varying,
    sequence integer,
    write_uid integer,
    act_from integer NOT NULL,
    condition character varying NOT NULL,
    write_date timestamp without time zone,
    trigger_expr_id character varying,
    group_id integer,
    act_to integer NOT NULL
);


ALTER TABLE wkf_transition OWNER TO odoouser;

--
-- Name: TABLE wkf_transition; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE wkf_transition IS 'workflow.transition';


--
-- Name: COLUMN wkf_transition.create_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.create_uid IS 'Created by';


--
-- Name: COLUMN wkf_transition.create_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.create_date IS 'Created on';


--
-- Name: COLUMN wkf_transition.trigger_model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.trigger_model IS 'Trigger Object';


--
-- Name: COLUMN wkf_transition.signal; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.signal IS 'Signal (Button Name)';


--
-- Name: COLUMN wkf_transition.sequence; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.sequence IS 'Sequence';


--
-- Name: COLUMN wkf_transition.write_uid; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.write_uid IS 'Last Updated by';


--
-- Name: COLUMN wkf_transition.act_from; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.act_from IS 'Source Activity';


--
-- Name: COLUMN wkf_transition.condition; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.condition IS 'Condition';


--
-- Name: COLUMN wkf_transition.write_date; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.write_date IS 'Last Updated on';


--
-- Name: COLUMN wkf_transition.trigger_expr_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.trigger_expr_id IS 'Trigger Expression';


--
-- Name: COLUMN wkf_transition.group_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.group_id IS 'Group Required';


--
-- Name: COLUMN wkf_transition.act_to; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_transition.act_to IS 'Destination Activity';


--
-- Name: wkf_transition_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE wkf_transition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wkf_transition_id_seq OWNER TO odoouser;

--
-- Name: wkf_transition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE wkf_transition_id_seq OWNED BY wkf_transition.id;


--
-- Name: wkf_triggers; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE wkf_triggers (
    id integer NOT NULL,
    instance_id integer,
    workitem_id integer NOT NULL,
    model character varying,
    res_id integer
);


ALTER TABLE wkf_triggers OWNER TO odoouser;

--
-- Name: TABLE wkf_triggers; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE wkf_triggers IS 'workflow.triggers';


--
-- Name: COLUMN wkf_triggers.instance_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_triggers.instance_id IS 'Destination Instance';


--
-- Name: COLUMN wkf_triggers.workitem_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_triggers.workitem_id IS 'Workitem';


--
-- Name: COLUMN wkf_triggers.model; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_triggers.model IS 'Object';


--
-- Name: COLUMN wkf_triggers.res_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_triggers.res_id IS 'Resource ID';


--
-- Name: wkf_triggers_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE wkf_triggers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wkf_triggers_id_seq OWNER TO odoouser;

--
-- Name: wkf_triggers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE wkf_triggers_id_seq OWNED BY wkf_triggers.id;


--
-- Name: wkf_witm_trans; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE wkf_witm_trans (
    inst_id integer NOT NULL,
    trans_id integer NOT NULL
);


ALTER TABLE wkf_witm_trans OWNER TO odoouser;

--
-- Name: TABLE wkf_witm_trans; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE wkf_witm_trans IS 'RELATION BETWEEN wkf_instance AND wkf_transition';


--
-- Name: wkf_workitem; Type: TABLE; Schema: public; Owner: odoouser
--

CREATE TABLE wkf_workitem (
    id integer NOT NULL,
    act_id integer NOT NULL,
    inst_id integer NOT NULL,
    subflow_id integer,
    state character varying
);


ALTER TABLE wkf_workitem OWNER TO odoouser;

--
-- Name: TABLE wkf_workitem; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON TABLE wkf_workitem IS 'workflow.workitem';


--
-- Name: COLUMN wkf_workitem.act_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_workitem.act_id IS 'Activity';


--
-- Name: COLUMN wkf_workitem.inst_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_workitem.inst_id IS 'Instance';


--
-- Name: COLUMN wkf_workitem.subflow_id; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_workitem.subflow_id IS 'Subflow';


--
-- Name: COLUMN wkf_workitem.state; Type: COMMENT; Schema: public; Owner: odoouser
--

COMMENT ON COLUMN wkf_workitem.state IS 'Status';


--
-- Name: wkf_workitem_id_seq; Type: SEQUENCE; Schema: public; Owner: odoouser
--

CREATE SEQUENCE wkf_workitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wkf_workitem_id_seq OWNER TO odoouser;

--
-- Name: wkf_workitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: odoouser
--

ALTER SEQUENCE wkf_workitem_id_seq OWNED BY wkf_workitem.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_account ALTER COLUMN id SET DEFAULT nextval('account_account_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_account_tag ALTER COLUMN id SET DEFAULT nextval('account_account_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_account_template ALTER COLUMN id SET DEFAULT nextval('account_account_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_account_type ALTER COLUMN id SET DEFAULT nextval('account_account_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_aged_trial_balance ALTER COLUMN id SET DEFAULT nextval('account_aged_trial_balance_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_analytic_account ALTER COLUMN id SET DEFAULT nextval('account_analytic_account_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_analytic_chart ALTER COLUMN id SET DEFAULT nextval('account_analytic_chart_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_analytic_line ALTER COLUMN id SET DEFAULT nextval('account_analytic_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_analytic_tag ALTER COLUMN id SET DEFAULT nextval('account_analytic_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_balance_report ALTER COLUMN id SET DEFAULT nextval('account_balance_report_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_bank_accounts_wizard ALTER COLUMN id SET DEFAULT nextval('account_bank_accounts_wizard_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_bank_statement ALTER COLUMN id SET DEFAULT nextval('account_bank_statement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_bank_statement_cashbox ALTER COLUMN id SET DEFAULT nextval('account_bank_statement_cashbox_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_bank_statement_closebalance ALTER COLUMN id SET DEFAULT nextval('account_bank_statement_closebalance_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_bank_statement_import ALTER COLUMN id SET DEFAULT nextval('account_bank_statement_import_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_bank_statement_import_journal_creation ALTER COLUMN id SET DEFAULT nextval('account_bank_statement_import_journal_creation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_bank_statement_line ALTER COLUMN id SET DEFAULT nextval('account_bank_statement_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_cashbox_line ALTER COLUMN id SET DEFAULT nextval('account_cashbox_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_chart_template ALTER COLUMN id SET DEFAULT nextval('account_chart_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_common_account_report ALTER COLUMN id SET DEFAULT nextval('account_common_account_report_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_common_partner_report ALTER COLUMN id SET DEFAULT nextval('account_common_partner_report_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_common_report ALTER COLUMN id SET DEFAULT nextval('account_common_report_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_config_settings ALTER COLUMN id SET DEFAULT nextval('account_config_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_financial_report ALTER COLUMN id SET DEFAULT nextval('account_financial_report_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_fiscal_position ALTER COLUMN id SET DEFAULT nextval('account_fiscal_position_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_fiscal_position_account ALTER COLUMN id SET DEFAULT nextval('account_fiscal_position_account_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_fiscal_position_account_template ALTER COLUMN id SET DEFAULT nextval('account_fiscal_position_account_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_fiscal_position_tax ALTER COLUMN id SET DEFAULT nextval('account_fiscal_position_tax_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_fiscal_position_tax_template ALTER COLUMN id SET DEFAULT nextval('account_fiscal_position_tax_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_fiscal_position_template ALTER COLUMN id SET DEFAULT nextval('account_fiscal_position_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_full_reconcile ALTER COLUMN id SET DEFAULT nextval('account_full_reconcile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_invoice ALTER COLUMN id SET DEFAULT nextval('account_invoice_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_invoice_cancel ALTER COLUMN id SET DEFAULT nextval('account_invoice_cancel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_invoice_confirm ALTER COLUMN id SET DEFAULT nextval('account_invoice_confirm_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_invoice_line ALTER COLUMN id SET DEFAULT nextval('account_invoice_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_invoice_refund ALTER COLUMN id SET DEFAULT nextval('account_invoice_refund_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_invoice_tax ALTER COLUMN id SET DEFAULT nextval('account_invoice_tax_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_journal ALTER COLUMN id SET DEFAULT nextval('account_journal_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_move ALTER COLUMN id SET DEFAULT nextval('account_move_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_move_line ALTER COLUMN id SET DEFAULT nextval('account_move_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_move_line_reconcile ALTER COLUMN id SET DEFAULT nextval('account_move_line_reconcile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_move_line_reconcile_writeoff ALTER COLUMN id SET DEFAULT nextval('account_move_line_reconcile_writeoff_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_move_reversal ALTER COLUMN id SET DEFAULT nextval('account_move_reversal_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_operation_template ALTER COLUMN id SET DEFAULT nextval('account_operation_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_partial_reconcile ALTER COLUMN id SET DEFAULT nextval('account_partial_reconcile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_payment ALTER COLUMN id SET DEFAULT nextval('account_payment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_payment_method ALTER COLUMN id SET DEFAULT nextval('account_payment_method_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_payment_term ALTER COLUMN id SET DEFAULT nextval('account_payment_term_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_payment_term_line ALTER COLUMN id SET DEFAULT nextval('account_payment_term_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_register_payments ALTER COLUMN id SET DEFAULT nextval('account_register_payments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_report_general_ledger ALTER COLUMN id SET DEFAULT nextval('account_report_general_ledger_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_tax ALTER COLUMN id SET DEFAULT nextval('account_tax_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_tax_group ALTER COLUMN id SET DEFAULT nextval('account_tax_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_tax_template ALTER COLUMN id SET DEFAULT nextval('account_tax_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY account_unreconcile ALTER COLUMN id SET DEFAULT nextval('account_unreconcile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY accounting_report ALTER COLUMN id SET DEFAULT nextval('accounting_report_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_action_rule ALTER COLUMN id SET DEFAULT nextval('base_action_rule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_action_rule_lead_test ALTER COLUMN id SET DEFAULT nextval('base_action_rule_lead_test_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_action_rule_line_test ALTER COLUMN id SET DEFAULT nextval('base_action_rule_line_test_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_config_settings ALTER COLUMN id SET DEFAULT nextval('base_config_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_import ALTER COLUMN id SET DEFAULT nextval('base_import_import_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_char ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_char_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_char_noreadonly ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_char_noreadonly_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_char_readonly ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_char_readonly_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_char_required ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_char_required_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_char_states ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_char_states_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_char_stillreadonly ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_char_stillreadonly_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_m2o ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_m2o_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_m2o_related ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_m2o_related_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_m2o_required ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_m2o_required_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_m2o_required_related ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_m2o_required_related_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_o2m ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_o2m_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_o2m_child ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_o2m_child_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_import_tests_models_preview ALTER COLUMN id SET DEFAULT nextval('base_import_tests_models_preview_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_language_export ALTER COLUMN id SET DEFAULT nextval('base_language_export_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_language_import ALTER COLUMN id SET DEFAULT nextval('base_language_import_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_language_install ALTER COLUMN id SET DEFAULT nextval('base_language_install_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_module_configuration ALTER COLUMN id SET DEFAULT nextval('base_module_configuration_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_module_update ALTER COLUMN id SET DEFAULT nextval('base_module_update_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_module_upgrade ALTER COLUMN id SET DEFAULT nextval('base_module_upgrade_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_partner_merge_automatic_wizard ALTER COLUMN id SET DEFAULT nextval('base_partner_merge_automatic_wizard_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_partner_merge_line ALTER COLUMN id SET DEFAULT nextval('base_partner_merge_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_setup_terminology ALTER COLUMN id SET DEFAULT nextval('base_setup_terminology_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY base_update_translations ALTER COLUMN id SET DEFAULT nextval('base_update_translations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY bus_bus ALTER COLUMN id SET DEFAULT nextval('bus_bus_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY bus_presence ALTER COLUMN id SET DEFAULT nextval('bus_presence_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY calendar_alarm ALTER COLUMN id SET DEFAULT nextval('calendar_alarm_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY calendar_attendee ALTER COLUMN id SET DEFAULT nextval('calendar_attendee_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY calendar_contacts ALTER COLUMN id SET DEFAULT nextval('calendar_contacts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY calendar_event ALTER COLUMN id SET DEFAULT nextval('calendar_event_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY calendar_event_type ALTER COLUMN id SET DEFAULT nextval('calendar_event_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY cash_box_in ALTER COLUMN id SET DEFAULT nextval('cash_box_in_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY cash_box_out ALTER COLUMN id SET DEFAULT nextval('cash_box_out_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY change_password_user ALTER COLUMN id SET DEFAULT nextval('change_password_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY change_password_wizard ALTER COLUMN id SET DEFAULT nextval('change_password_wizard_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_activity ALTER COLUMN id SET DEFAULT nextval('crm_activity_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_lead ALTER COLUMN id SET DEFAULT nextval('crm_lead_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_lead2opportunity_partner ALTER COLUMN id SET DEFAULT nextval('crm_lead2opportunity_partner_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_lead2opportunity_partner_mass ALTER COLUMN id SET DEFAULT nextval('crm_lead2opportunity_partner_mass_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_lead_lost ALTER COLUMN id SET DEFAULT nextval('crm_lead_lost_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_lead_tag ALTER COLUMN id SET DEFAULT nextval('crm_lead_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_lost_reason ALTER COLUMN id SET DEFAULT nextval('crm_lost_reason_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_merge_opportunity ALTER COLUMN id SET DEFAULT nextval('crm_merge_opportunity_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_partner_binding ALTER COLUMN id SET DEFAULT nextval('crm_partner_binding_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_stage ALTER COLUMN id SET DEFAULT nextval('crm_stage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY crm_team ALTER COLUMN id SET DEFAULT nextval('crm_team_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY decimal_precision ALTER COLUMN id SET DEFAULT nextval('decimal_precision_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY decimal_precision_test ALTER COLUMN id SET DEFAULT nextval('decimal_precision_test_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY email_template_preview ALTER COLUMN id SET DEFAULT nextval('email_template_preview_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY fetchmail_config_settings ALTER COLUMN id SET DEFAULT nextval('fetchmail_config_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY fetchmail_server ALTER COLUMN id SET DEFAULT nextval('fetchmail_server_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY im_livechat_channel ALTER COLUMN id SET DEFAULT nextval('im_livechat_channel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY im_livechat_channel_rule ALTER COLUMN id SET DEFAULT nextval('im_livechat_channel_rule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_act_client ALTER COLUMN id SET DEFAULT nextval('ir_actions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_act_report_xml ALTER COLUMN id SET DEFAULT nextval('ir_actions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_act_server ALTER COLUMN id SET DEFAULT nextval('ir_actions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_act_url ALTER COLUMN id SET DEFAULT nextval('ir_actions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_act_window ALTER COLUMN id SET DEFAULT nextval('ir_actions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_act_window_view ALTER COLUMN id SET DEFAULT nextval('ir_act_window_view_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_actions ALTER COLUMN id SET DEFAULT nextval('ir_actions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_actions_todo ALTER COLUMN id SET DEFAULT nextval('ir_actions_todo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_attachment ALTER COLUMN id SET DEFAULT nextval('ir_attachment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_autovacuum ALTER COLUMN id SET DEFAULT nextval('ir_autovacuum_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_config_parameter ALTER COLUMN id SET DEFAULT nextval('ir_config_parameter_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_cron ALTER COLUMN id SET DEFAULT nextval('ir_cron_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_exports ALTER COLUMN id SET DEFAULT nextval('ir_exports_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_exports_line ALTER COLUMN id SET DEFAULT nextval('ir_exports_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_filters ALTER COLUMN id SET DEFAULT nextval('ir_filters_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_logging ALTER COLUMN id SET DEFAULT nextval('ir_logging_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_mail_server ALTER COLUMN id SET DEFAULT nextval('ir_mail_server_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_model ALTER COLUMN id SET DEFAULT nextval('ir_model_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_model_access ALTER COLUMN id SET DEFAULT nextval('ir_model_access_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_model_constraint ALTER COLUMN id SET DEFAULT nextval('ir_model_constraint_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_model_data ALTER COLUMN id SET DEFAULT nextval('ir_model_data_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_model_fields ALTER COLUMN id SET DEFAULT nextval('ir_model_fields_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_model_relation ALTER COLUMN id SET DEFAULT nextval('ir_model_relation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_module_category ALTER COLUMN id SET DEFAULT nextval('ir_module_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_module_module ALTER COLUMN id SET DEFAULT nextval('ir_module_module_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_module_module_dependency ALTER COLUMN id SET DEFAULT nextval('ir_module_module_dependency_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_property ALTER COLUMN id SET DEFAULT nextval('ir_property_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_rule ALTER COLUMN id SET DEFAULT nextval('ir_rule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_sequence ALTER COLUMN id SET DEFAULT nextval('ir_sequence_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_sequence_date_range ALTER COLUMN id SET DEFAULT nextval('ir_sequence_date_range_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_server_object_lines ALTER COLUMN id SET DEFAULT nextval('ir_server_object_lines_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_translation ALTER COLUMN id SET DEFAULT nextval('ir_translation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_ui_menu ALTER COLUMN id SET DEFAULT nextval('ir_ui_menu_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_ui_view ALTER COLUMN id SET DEFAULT nextval('ir_ui_view_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_ui_view_custom ALTER COLUMN id SET DEFAULT nextval('ir_ui_view_custom_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY ir_values ALTER COLUMN id SET DEFAULT nextval('ir_values_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_alias ALTER COLUMN id SET DEFAULT nextval('mail_alias_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_channel ALTER COLUMN id SET DEFAULT nextval('mail_channel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_channel_partner ALTER COLUMN id SET DEFAULT nextval('mail_channel_partner_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_compose_message ALTER COLUMN id SET DEFAULT nextval('mail_compose_message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_followers ALTER COLUMN id SET DEFAULT nextval('mail_followers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_mail ALTER COLUMN id SET DEFAULT nextval('mail_mail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_message ALTER COLUMN id SET DEFAULT nextval('mail_message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_message_subtype ALTER COLUMN id SET DEFAULT nextval('mail_message_subtype_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_shortcode ALTER COLUMN id SET DEFAULT nextval('mail_shortcode_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_template ALTER COLUMN id SET DEFAULT nextval('mail_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_tracking_value ALTER COLUMN id SET DEFAULT nextval('mail_tracking_value_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY mail_wizard_invite ALTER COLUMN id SET DEFAULT nextval('mail_wizard_invite_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY marketing_config_settings ALTER COLUMN id SET DEFAULT nextval('marketing_config_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY payment_acquirer ALTER COLUMN id SET DEFAULT nextval('payment_acquirer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY payment_method ALTER COLUMN id SET DEFAULT nextval('payment_method_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY payment_transaction ALTER COLUMN id SET DEFAULT nextval('payment_transaction_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY portal_wizard ALTER COLUMN id SET DEFAULT nextval('portal_wizard_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY portal_wizard_user ALTER COLUMN id SET DEFAULT nextval('portal_wizard_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY procurement_group ALTER COLUMN id SET DEFAULT nextval('procurement_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY procurement_order ALTER COLUMN id SET DEFAULT nextval('procurement_order_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY procurement_order_compute_all ALTER COLUMN id SET DEFAULT nextval('procurement_order_compute_all_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY procurement_rule ALTER COLUMN id SET DEFAULT nextval('procurement_rule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_attribute ALTER COLUMN id SET DEFAULT nextval('product_attribute_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_attribute_line ALTER COLUMN id SET DEFAULT nextval('product_attribute_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_attribute_price ALTER COLUMN id SET DEFAULT nextval('product_attribute_price_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_attribute_value ALTER COLUMN id SET DEFAULT nextval('product_attribute_value_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_category ALTER COLUMN id SET DEFAULT nextval('product_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_packaging ALTER COLUMN id SET DEFAULT nextval('product_packaging_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_price_history ALTER COLUMN id SET DEFAULT nextval('product_price_history_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_price_list ALTER COLUMN id SET DEFAULT nextval('product_price_list_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_pricelist ALTER COLUMN id SET DEFAULT nextval('product_pricelist_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_pricelist_item ALTER COLUMN id SET DEFAULT nextval('product_pricelist_item_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_product ALTER COLUMN id SET DEFAULT nextval('product_product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_public_category ALTER COLUMN id SET DEFAULT nextval('product_public_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_style ALTER COLUMN id SET DEFAULT nextval('product_style_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_supplierinfo ALTER COLUMN id SET DEFAULT nextval('product_supplierinfo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_template ALTER COLUMN id SET DEFAULT nextval('product_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_uom ALTER COLUMN id SET DEFAULT nextval('product_uom_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY product_uom_categ ALTER COLUMN id SET DEFAULT nextval('product_uom_categ_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY rating_rating ALTER COLUMN id SET DEFAULT nextval('rating_rating_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY report ALTER COLUMN id SET DEFAULT nextval('report_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY report_paperformat ALTER COLUMN id SET DEFAULT nextval('report_paperformat_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_bank ALTER COLUMN id SET DEFAULT nextval('res_bank_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_company ALTER COLUMN id SET DEFAULT nextval('res_company_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_config ALTER COLUMN id SET DEFAULT nextval('res_config_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_config_installer ALTER COLUMN id SET DEFAULT nextval('res_config_installer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_config_settings ALTER COLUMN id SET DEFAULT nextval('res_config_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_country ALTER COLUMN id SET DEFAULT nextval('res_country_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_country_group ALTER COLUMN id SET DEFAULT nextval('res_country_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_country_state ALTER COLUMN id SET DEFAULT nextval('res_country_state_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_currency ALTER COLUMN id SET DEFAULT nextval('res_currency_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_currency_rate ALTER COLUMN id SET DEFAULT nextval('res_currency_rate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_font ALTER COLUMN id SET DEFAULT nextval('res_font_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_groups ALTER COLUMN id SET DEFAULT nextval('res_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_lang ALTER COLUMN id SET DEFAULT nextval('res_lang_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_partner ALTER COLUMN id SET DEFAULT nextval('res_partner_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_partner_bank ALTER COLUMN id SET DEFAULT nextval('res_partner_bank_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_partner_category ALTER COLUMN id SET DEFAULT nextval('res_partner_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_partner_title ALTER COLUMN id SET DEFAULT nextval('res_partner_title_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_request_link ALTER COLUMN id SET DEFAULT nextval('res_request_link_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_users ALTER COLUMN id SET DEFAULT nextval('res_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY res_users_log ALTER COLUMN id SET DEFAULT nextval('res_users_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY resource_calendar ALTER COLUMN id SET DEFAULT nextval('resource_calendar_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY resource_calendar_attendance ALTER COLUMN id SET DEFAULT nextval('resource_calendar_attendance_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY resource_calendar_leaves ALTER COLUMN id SET DEFAULT nextval('resource_calendar_leaves_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY resource_resource ALTER COLUMN id SET DEFAULT nextval('resource_resource_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY sale_advance_payment_inv ALTER COLUMN id SET DEFAULT nextval('sale_advance_payment_inv_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY sale_config_settings ALTER COLUMN id SET DEFAULT nextval('sale_config_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY sale_order ALTER COLUMN id SET DEFAULT nextval('sale_order_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY sale_order_line ALTER COLUMN id SET DEFAULT nextval('sale_order_line_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY utm_campaign ALTER COLUMN id SET DEFAULT nextval('utm_campaign_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY utm_medium ALTER COLUMN id SET DEFAULT nextval('utm_medium_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY utm_source ALTER COLUMN id SET DEFAULT nextval('utm_source_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY validate_account_move ALTER COLUMN id SET DEFAULT nextval('validate_account_move_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY web_editor_converter_test ALTER COLUMN id SET DEFAULT nextval('web_editor_converter_test_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY web_editor_converter_test_sub ALTER COLUMN id SET DEFAULT nextval('web_editor_converter_test_sub_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY web_planner ALTER COLUMN id SET DEFAULT nextval('web_planner_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY web_tip ALTER COLUMN id SET DEFAULT nextval('web_tip_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY website ALTER COLUMN id SET DEFAULT nextval('website_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY website_config_settings ALTER COLUMN id SET DEFAULT nextval('website_config_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY website_menu ALTER COLUMN id SET DEFAULT nextval('website_menu_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY website_pricelist ALTER COLUMN id SET DEFAULT nextval('website_pricelist_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY website_seo_metadata ALTER COLUMN id SET DEFAULT nextval('website_seo_metadata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY wizard_ir_model_menu_create ALTER COLUMN id SET DEFAULT nextval('wizard_ir_model_menu_create_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY wizard_multi_charts_accounts ALTER COLUMN id SET DEFAULT nextval('wizard_multi_charts_accounts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY wkf ALTER COLUMN id SET DEFAULT nextval('wkf_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY wkf_activity ALTER COLUMN id SET DEFAULT nextval('wkf_activity_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY wkf_instance ALTER COLUMN id SET DEFAULT nextval('wkf_instance_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY wkf_transition ALTER COLUMN id SET DEFAULT nextval('wkf_transition_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY wkf_triggers ALTER COLUMN id SET DEFAULT nextval('wkf_triggers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: odoouser
--

ALTER TABLE ONLY wkf_workitem ALTER COLUMN id SET DEFAULT nextval('wkf_workitem_id_seq'::regclass);


--
-- Data for Name: account_account; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account (id, create_uid, internal_type, create_date, name, deprecated, currency_id, company_id, write_uid, note, code, write_date, user_type_id, last_time_entries_checked, reconcile) FROM stdin;
1	1	other	2016-11-22 14:05:06.609403	Liquidity Transfers	f	\N	1	1	\N	101700	2016-11-22 14:05:06.609403	4	\N	t
2	1	other	2016-11-22 14:05:06.609403	Fixed Asset Account	f	\N	1	1	\N	100000	2016-11-22 14:05:06.609403	7	\N	f
3	1	other	2016-11-22 14:05:06.609403	Current Assets	f	\N	1	1	\N	101000	2016-11-22 14:05:06.609403	4	\N	f
4	1	other	2016-11-22 14:05:06.609403	Stock Valuation Account	f	\N	1	1	\N	101110	2016-11-22 14:05:06.609403	4	\N	f
5	1	other	2016-11-22 14:05:06.609403	Stock Interim Account (Received)	f	\N	1	1	\N	101120	2016-11-22 14:05:06.609403	4	\N	f
6	1	other	2016-11-22 14:05:06.609403	Stock Interim Account (Delivered)	f	\N	1	1	\N	101130	2016-11-22 14:05:06.609403	4	\N	f
7	1	receivable	2016-11-22 14:05:06.609403	Account Receivable	f	\N	1	1	\N	101200	2016-11-22 14:05:06.609403	1	\N	t
8	1	other	2016-11-22 14:05:06.609403	Tax Paid	f	\N	1	1	\N	101300	2016-11-22 14:05:06.609403	4	\N	f
9	1	other	2016-11-22 14:05:06.609403	Opening Income Account	f	\N	1	1	\N	101600	2016-11-22 14:05:06.609403	12	\N	f
10	1	other	2016-11-22 14:05:06.609403	Non-current assets	f	\N	1	1	\N	102000	2016-11-22 14:05:06.609403	5	\N	f
11	1	other	2016-11-22 14:05:06.609403	Prepayments	f	\N	1	1	\N	103000	2016-11-22 14:05:06.609403	6	\N	f
12	1	other	2016-11-22 14:05:06.609403	Current Liabilities	f	\N	1	1	\N	111000	2016-11-22 14:05:06.609403	8	\N	f
13	1	payable	2016-11-22 14:05:06.609403	Account Payable	f	\N	1	1	\N	111100	2016-11-22 14:05:06.609403	2	\N	t
14	1	other	2016-11-22 14:05:06.609403	Tax Received	f	\N	1	1	\N	111200	2016-11-22 14:05:06.609403	8	\N	f
15	1	other	2016-11-22 14:05:06.609403	Reserve and Profit/Loss Account	f	\N	1	1	\N	111300	2016-11-22 14:05:06.609403	8	\N	t
16	1	other	2016-11-22 14:05:06.609403	Non-current Liabilities	f	\N	1	1	\N	112000	2016-11-22 14:05:06.609403	9	\N	f
17	1	other	2016-11-22 14:05:06.609403	Product Sales	f	\N	1	1	\N	200000	2016-11-22 14:05:06.609403	13	\N	f
18	1	other	2016-11-22 14:05:06.609403	Cost of Revenue	f	\N	1	1	\N	210000	2016-11-22 14:05:06.609403	16	\N	f
19	1	other	2016-11-22 14:05:06.609403	Expenses	f	\N	1	1	\N	220000	2016-11-22 14:05:06.609403	15	\N	f
20	1	other	2016-11-22 14:05:06.609403	Foreign Exchange Gain	f	\N	1	1	\N	201000	2016-11-22 14:05:06.609403	13	\N	f
21	1	other	2016-11-22 14:05:06.609403	Foreign Exchange Loss	f	\N	1	1	\N	211000	2016-11-22 14:05:06.609403	15	\N	f
22	1	other	2016-11-22 14:05:06.609403	Salary Expenses	f	\N	1	1	\N	212100	2016-11-22 14:05:06.609403	15	\N	f
23	1	other	2016-11-22 14:05:06.609403	Purchase of Equipments	f	\N	1	1	\N	212200	2016-11-22 14:05:06.609403	15	\N	f
24	1	other	2016-11-22 14:05:06.609403	Bank Fees	f	\N	1	1	\N	212300	2016-11-22 14:05:06.609403	15	\N	f
25	1	other	2016-11-22 14:05:06.609403	Capital	f	\N	1	1	\N	300100	2016-11-22 14:05:06.609403	10	\N	f
26	1	other	2016-11-22 14:05:06.609403	Dividends	f	\N	1	1	\N	300200	2016-11-22 14:05:06.609403	10	\N	f
27	1	liquidity	2016-11-22 14:05:06.609403	Наличные	f	\N	1	1	\N	101501	2016-11-22 14:05:06.609403	3	\N	f
28	1	liquidity	2016-11-22 14:05:06.609403	Банк	f	\N	1	1	\N	101401	2016-11-22 14:05:06.609403	3	\N	f
29	1	other	2016-11-22 14:05:06.609403	Нераспределенная Прибыль/Убытки	f	\N	1	1	\N	999999	2016-11-22 14:05:06.609403	11	\N	f
\.


--
-- Data for Name: account_account_account_tag; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_account_tag (account_account_id, account_account_tag_id) FROM stdin;
17	1
18	1
19	1
20	2
21	2
22	1
23	3
24	2
\.


--
-- Data for Name: account_account_financial_report; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_financial_report (report_line_id, account_id) FROM stdin;
\.


--
-- Data for Name: account_account_financial_report_type; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_financial_report_type (report_id, account_type_id) FROM stdin;
2	12
2	13
3	15
3	16
3	14
5	1
5	3
5	4
5	5
5	7
7	2
7	10
7	8
7	9
\.


--
-- Name: account_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_account_id_seq', 29, true);


--
-- Data for Name: account_account_tag; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_tag (id, create_uid, applicability, create_date, name, color, write_uid, write_date) FROM stdin;
1	1	accounts	2016-11-22 14:04:29.876622	Operating Activities	\N	1	2016-11-22 14:04:29.876622
2	1	accounts	2016-11-22 14:04:29.876622	Financing Activities	\N	1	2016-11-22 14:04:29.876622
3	1	accounts	2016-11-22 14:04:29.876622	Investing & Extraordinary Activities	\N	1	2016-11-22 14:04:29.876622
\.


--
-- Data for Name: account_account_tag_account_tax_template_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_tag_account_tax_template_rel (account_tax_template_id, account_account_tag_id) FROM stdin;
\.


--
-- Name: account_account_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_account_tag_id_seq', 3, true);


--
-- Data for Name: account_account_tax_default_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_tax_default_rel (account_id, tax_id) FROM stdin;
\.


--
-- Data for Name: account_account_template; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_template (id, create_uid, code, create_date, name, currency_id, chart_template_id, write_uid, note, nocreate, write_date, user_type_id, reconcile) FROM stdin;
1	1	1017	2016-11-22 14:05:06.609403	Liquidity Transfers	\N	1	1	\N	f	2016-11-22 14:05:06.609403	4	t
2	1	1000	2016-11-22 14:05:06.609403	Fixed Asset Account	\N	1	1	\N	f	2016-11-22 14:05:06.609403	7	f
3	1	1010	2016-11-22 14:05:06.609403	Current Assets	\N	1	1	\N	f	2016-11-22 14:05:06.609403	4	f
4	1	10111	2016-11-22 14:05:06.609403	Stock Valuation Account	\N	1	1	\N	f	2016-11-22 14:05:06.609403	4	f
5	1	10112	2016-11-22 14:05:06.609403	Stock Interim Account (Received)	\N	1	1	\N	f	2016-11-22 14:05:06.609403	4	f
6	1	10113	2016-11-22 14:05:06.609403	Stock Interim Account (Delivered)	\N	1	1	\N	f	2016-11-22 14:05:06.609403	4	f
7	1	1012	2016-11-22 14:05:06.609403	Account Receivable	\N	1	1	\N	f	2016-11-22 14:05:06.609403	1	t
8	1	1013	2016-11-22 14:05:06.609403	Tax Paid	\N	1	1	\N	f	2016-11-22 14:05:06.609403	4	f
9	1	1016	2016-11-22 14:05:06.609403	Opening Income Account	\N	1	1	\N	f	2016-11-22 14:05:06.609403	12	f
10	1	1020	2016-11-22 14:05:06.609403	Non-current assets	\N	1	1	\N	f	2016-11-22 14:05:06.609403	5	f
11	1	1030	2016-11-22 14:05:06.609403	Prepayments	\N	1	1	\N	f	2016-11-22 14:05:06.609403	6	f
12	1	1110	2016-11-22 14:05:06.609403	Current Liabilities	\N	1	1	\N	f	2016-11-22 14:05:06.609403	8	f
13	1	1111	2016-11-22 14:05:06.609403	Account Payable	\N	1	1	\N	f	2016-11-22 14:05:06.609403	2	t
14	1	1112	2016-11-22 14:05:06.609403	Tax Received	\N	1	1	\N	f	2016-11-22 14:05:06.609403	8	f
15	1	1113	2016-11-22 14:05:06.609403	Reserve and Profit/Loss Account	\N	1	1	\N	f	2016-11-22 14:05:06.609403	8	t
16	1	1120	2016-11-22 14:05:06.609403	Non-current Liabilities	\N	1	1	\N	f	2016-11-22 14:05:06.609403	9	f
17	1	200	2016-11-22 14:05:06.609403	Product Sales	\N	1	1	\N	f	2016-11-22 14:05:06.609403	13	f
18	1	210	2016-11-22 14:05:06.609403	Cost of Revenue	\N	1	1	\N	f	2016-11-22 14:05:06.609403	16	f
19	1	220	2016-11-22 14:05:06.609403	Expenses	\N	1	1	\N	f	2016-11-22 14:05:06.609403	15	f
20	1	2010	2016-11-22 14:05:06.609403	Foreign Exchange Gain	\N	1	1	\N	f	2016-11-22 14:05:06.609403	13	f
21	1	2110	2016-11-22 14:05:06.609403	Foreign Exchange Loss	\N	1	1	\N	f	2016-11-22 14:05:06.609403	15	f
22	1	2121	2016-11-22 14:05:06.609403	Salary Expenses	\N	1	1	\N	f	2016-11-22 14:05:06.609403	15	f
23	1	2122	2016-11-22 14:05:06.609403	Purchase of Equipments	\N	1	1	\N	f	2016-11-22 14:05:06.609403	15	f
24	1	2123	2016-11-22 14:05:06.609403	Bank Fees	\N	1	1	\N	f	2016-11-22 14:05:06.609403	15	f
25	1	3001	2016-11-22 14:05:06.609403	Capital	\N	1	1	\N	f	2016-11-22 14:05:06.609403	10	f
26	1	3002	2016-11-22 14:05:06.609403	Dividends	\N	1	1	\N	f	2016-11-22 14:05:06.609403	10	f
\.


--
-- Data for Name: account_account_template_account_tag; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_template_account_tag (account_account_template_id, account_account_tag_id) FROM stdin;
17	1
18	1
19	1
20	2
21	2
22	1
23	3
24	2
\.


--
-- Name: account_account_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_account_template_id_seq', 26, true);


--
-- Data for Name: account_account_template_tax_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_template_tax_rel (account_id, tax_id) FROM stdin;
\.


--
-- Data for Name: account_account_type; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_type (id, create_uid, create_date, name, write_uid, note, write_date, include_initial_balance, type) FROM stdin;
1	1	2016-11-22 14:04:29.876622	Receivable	1	\N	2016-11-22 14:04:29.876622	t	receivable
2	1	2016-11-22 14:04:29.876622	Payable	1	\N	2016-11-22 14:04:29.876622	t	payable
3	1	2016-11-22 14:04:29.876622	Bank and Cash	1	\N	2016-11-22 14:04:29.876622	t	liquidity
4	1	2016-11-22 14:04:29.876622	Current Assets	1	\N	2016-11-22 14:04:29.876622	t	other
5	1	2016-11-22 14:04:29.876622	Non-current Assets	1	\N	2016-11-22 14:04:29.876622	t	other
6	1	2016-11-22 14:04:29.876622	Prepayments	1	\N	2016-11-22 14:04:29.876622	t	other
7	1	2016-11-22 14:04:29.876622	Fixed Assets	1	\N	2016-11-22 14:04:29.876622	t	other
8	1	2016-11-22 14:04:29.876622	Current Liabilities	1	\N	2016-11-22 14:04:29.876622	t	other
9	1	2016-11-22 14:04:29.876622	Non-current Liabilities	1	\N	2016-11-22 14:04:29.876622	t	other
10	1	2016-11-22 14:04:29.876622	Equity	1	\N	2016-11-22 14:04:29.876622	t	other
11	1	2016-11-22 14:04:29.876622	Current Year Earnings	1	\N	2016-11-22 14:04:29.876622	t	other
12	1	2016-11-22 14:04:29.876622	Other Income	1	\N	2016-11-22 14:04:29.876622	f	other
13	1	2016-11-22 14:04:29.876622	Income	1	\N	2016-11-22 14:04:29.876622	f	other
14	1	2016-11-22 14:04:29.876622	Depreciation	1	\N	2016-11-22 14:04:29.876622	f	other
15	1	2016-11-22 14:04:29.876622	Expenses	1	\N	2016-11-22 14:04:29.876622	f	other
16	1	2016-11-22 14:04:29.876622	Cost of Revenue	1	\N	2016-11-22 14:04:29.876622	f	other
\.


--
-- Name: account_account_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_account_type_id_seq', 16, true);


--
-- Data for Name: account_account_type_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_account_type_rel (journal_id, account_id) FROM stdin;
\.


--
-- Data for Name: account_aged_trial_balance; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_aged_trial_balance (id, create_uid, create_date, period_length, date_from, result_selection, company_id, write_date, date_to, write_uid, target_move) FROM stdin;
\.


--
-- Data for Name: account_aged_trial_balance_account_journal_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_aged_trial_balance_account_journal_rel (account_aged_trial_balance_id, account_journal_id) FROM stdin;
\.


--
-- Name: account_aged_trial_balance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_aged_trial_balance_id_seq', 1, false);


--
-- Data for Name: account_analytic_account; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_analytic_account (id, code, create_date, name, create_uid, message_last_post, company_id, write_uid, write_date, account_type, partner_id) FROM stdin;
\.


--
-- Name: account_analytic_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_analytic_account_id_seq', 1, false);


--
-- Data for Name: account_analytic_account_tag_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_analytic_account_tag_rel (account_id, tag_id) FROM stdin;
\.


--
-- Data for Name: account_analytic_chart; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_analytic_chart (id, create_uid, create_date, write_uid, from_date, to_date, write_date) FROM stdin;
\.


--
-- Name: account_analytic_chart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_analytic_chart_id_seq', 1, false);


--
-- Data for Name: account_analytic_line; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_analytic_line (id, create_uid, user_id, account_id, company_id, write_uid, amount, unit_amount, date, create_date, write_date, partner_id, name, code, currency_id, ref, general_account_id, move_id, product_id, product_uom_id, amount_currency, so_line) FROM stdin;
\.


--
-- Name: account_analytic_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_analytic_line_id_seq', 1, false);


--
-- Data for Name: account_analytic_line_tag_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_analytic_line_tag_rel (line_id, tag_id) FROM stdin;
\.


--
-- Data for Name: account_analytic_tag; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_analytic_tag (id, create_uid, create_date, name, color, write_uid, write_date) FROM stdin;
\.


--
-- Name: account_analytic_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_analytic_tag_id_seq', 1, false);


--
-- Data for Name: account_balance_report; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_balance_report (id, create_uid, create_date, display_account, date_from, company_id, write_date, date_to, write_uid, target_move) FROM stdin;
\.


--
-- Name: account_balance_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_balance_report_id_seq', 1, false);


--
-- Data for Name: account_balance_report_journal_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_balance_report_journal_rel (account_id, journal_id) FROM stdin;
\.


--
-- Data for Name: account_bank_accounts_wizard; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_bank_accounts_wizard (id, create_uid, create_date, bank_account_id, acc_name, write_uid, currency_id, write_date, account_type) FROM stdin;
\.


--
-- Name: account_bank_accounts_wizard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_bank_accounts_wizard_id_seq', 2, true);


--
-- Data for Name: account_bank_statement; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_bank_statement (id, create_date, date_done, balance_start, company_id, write_uid, create_uid, user_id, message_last_post, journal_id, state, cashbox_start_id, cashbox_end_id, total_entry_encoding, write_date, date, difference, name, balance_end, balance_end_real) FROM stdin;
\.


--
-- Data for Name: account_bank_statement_cashbox; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_bank_statement_cashbox (id, create_uid, create_date, write_uid, write_date) FROM stdin;
\.


--
-- Name: account_bank_statement_cashbox_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_bank_statement_cashbox_id_seq', 1, false);


--
-- Data for Name: account_bank_statement_closebalance; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_bank_statement_closebalance (id, create_uid, create_date, write_date, write_uid) FROM stdin;
\.


--
-- Name: account_bank_statement_closebalance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_bank_statement_closebalance_id_seq', 1, false);


--
-- Name: account_bank_statement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_bank_statement_id_seq', 1, false);


--
-- Data for Name: account_bank_statement_import; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_bank_statement_import (id, create_uid, create_date, data_file, write_uid, write_date) FROM stdin;
\.


--
-- Name: account_bank_statement_import_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_bank_statement_import_id_seq', 1, false);


--
-- Data for Name: account_bank_statement_import_journal_creation; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_bank_statement_import_journal_creation (id, create_uid, create_date, journal_id, write_uid, write_date) FROM stdin;
\.


--
-- Name: account_bank_statement_import_journal_creation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_bank_statement_import_journal_creation_id_seq', 1, false);


--
-- Data for Name: account_bank_statement_line; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_bank_statement_line (id, create_uid, create_date, statement_id, name, sequence, partner_name, ref, currency_id, journal_id, company_id, note, amount, write_date, bank_account_id, date, amount_currency, write_uid, partner_id, account_id, unique_import_id) FROM stdin;
\.


--
-- Name: account_bank_statement_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_bank_statement_line_id_seq', 1, false);


--
-- Data for Name: account_cashbox_line; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_cashbox_line (id, create_uid, create_date, number, cashbox_id, write_uid, write_date, coin_value) FROM stdin;
\.


--
-- Name: account_cashbox_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_cashbox_line_id_seq', 1, false);


--
-- Data for Name: account_chart_template; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_chart_template (id, bank_account_code_prefix, cash_account_code_prefix, create_date, write_uid, currency_id, visible, property_account_receivable_id, property_stock_valuation_account_id, create_uid, complete_tax_set, property_stock_account_output_categ_id, transfer_account_id, company_id, expense_currency_exchange_account_id, parent_id, property_account_income_categ_id, property_stock_account_input_categ_id, property_account_income_id, property_account_expense_categ_id, write_date, use_anglo_saxon, code_digits, name, property_account_expense_id, property_account_payable_id, income_currency_exchange_account_id) FROM stdin;
1	1014	1015	2016-11-22 14:05:06.609403	1	3	t	7	4	1	f	6	1	\N	21	\N	17	5	\N	19	2016-11-22 14:05:06.609403	t	6	Configurable Account Chart Template	\N	13	20
\.


--
-- Name: account_chart_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_chart_template_id_seq', 1, true);


--
-- Data for Name: account_common_account_report; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_common_account_report (id, create_uid, create_date, display_account, date_from, company_id, write_date, date_to, write_uid, target_move) FROM stdin;
\.


--
-- Data for Name: account_common_account_report_account_journal_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_common_account_report_account_journal_rel (account_common_account_report_id, account_journal_id) FROM stdin;
\.


--
-- Name: account_common_account_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_common_account_report_id_seq', 1, false);


--
-- Data for Name: account_common_partner_report; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_common_partner_report (id, create_uid, create_date, date_from, result_selection, company_id, write_date, date_to, write_uid, target_move) FROM stdin;
\.


--
-- Data for Name: account_common_partner_report_account_journal_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_common_partner_report_account_journal_rel (account_common_partner_report_id, account_journal_id) FROM stdin;
\.


--
-- Name: account_common_partner_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_common_partner_report_id_seq', 1, false);


--
-- Data for Name: account_common_report; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_common_report (id, create_uid, create_date, date_from, company_id, write_date, date_to, write_uid, target_move) FROM stdin;
\.


--
-- Data for Name: account_common_report_account_journal_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_common_report_account_journal_rel (account_common_report_id, account_journal_id) FROM stdin;
\.


--
-- Name: account_common_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_common_report_id_seq', 1, false);


--
-- Data for Name: account_config_settings; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_config_settings (id, create_date, module_account_asset, write_uid, module_account_accountant, module_account_plaid, create_uid, complete_tax_set, template_transfer_account_id, module_account_bank_statement_import_qif, module_account_budget, company_id, group_multi_currency, group_proforma_invoices, has_chart_of_accounts, has_default_company, purchase_tax_rate, module_account_bank_statement_import_ofx, default_purchase_tax_id, group_analytic_accounting, write_date, sale_tax_rate, module_account_batch_deposit, module_account_yodlee, module_account_tax_cash_basis, chart_template_id, default_sale_tax_id, sale_tax_id, module_account_sepa, module_account_reports, module_l10n_us_check_printing, module_account_reports_followup, purchase_tax_id, module_payment_paypal, module_payment_buckaroo, module_payment_adyen, module_payment_ogone, module_payment_transfer, group_analytic_account_for_sales, default_acquirer) FROM stdin;
\.


--
-- Name: account_config_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_config_settings_id_seq', 1, false);


--
-- Data for Name: account_financial_report; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_financial_report (id, create_uid, create_date, name, sequence, level, style_overwrite, sign, parent_id, write_date, account_report_id, display_detail, write_uid, type) FROM stdin;
1	1	2016-11-22 14:04:29.876622	Profit and Loss	\N	0	\N	-1	\N	2016-11-22 14:04:29.876622	\N	detail_flat	1	sum
2	1	2016-11-22 14:04:29.876622	Income	\N	1	\N	-1	1	2016-11-22 14:04:29.876622	\N	detail_with_hierarchy	1	account_type
3	1	2016-11-22 14:04:29.876622	Expense	\N	1	\N	-1	1	2016-11-22 14:04:29.876622	\N	detail_with_hierarchy	1	account_type
4	1	2016-11-22 14:04:29.876622	Balance Sheet	\N	0	\N	1	\N	2016-11-22 14:04:29.876622	\N	detail_flat	1	sum
5	1	2016-11-22 14:04:29.876622	Assets	\N	1	\N	1	4	2016-11-22 14:04:29.876622	\N	detail_with_hierarchy	1	account_type
6	1	2016-11-22 14:04:29.876622	Liability	\N	1	\N	1	4	2016-11-22 14:04:29.876622	\N	no_detail	1	sum
7	1	2016-11-22 14:04:29.876622	Liability	\N	2	\N	1	6	2016-11-22 14:04:29.876622	\N	detail_with_hierarchy	1	account_type
8	1	2016-11-22 14:04:29.876622	Profit (Loss) to report	\N	2	\N	1	6	2016-11-22 14:04:29.876622	1	no_detail	1	account_report
\.


--
-- Name: account_financial_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_financial_report_id_seq', 8, true);


--
-- Data for Name: account_fiscal_position; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_fiscal_position (id, create_uid, country_group_id, create_date, zip_to, name, sequence, country_id, company_id, auto_apply, write_uid, note, zip_from, write_date, vat_required, active) FROM stdin;
\.


--
-- Data for Name: account_fiscal_position_account; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_fiscal_position_account (id, create_uid, create_date, position_id, write_uid, account_dest_id, write_date, account_src_id) FROM stdin;
\.


--
-- Name: account_fiscal_position_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_fiscal_position_account_id_seq', 1, false);


--
-- Data for Name: account_fiscal_position_account_template; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_fiscal_position_account_template (id, create_uid, create_date, position_id, write_uid, account_dest_id, write_date, account_src_id) FROM stdin;
\.


--
-- Name: account_fiscal_position_account_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_fiscal_position_account_template_id_seq', 1, false);


--
-- Name: account_fiscal_position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_fiscal_position_id_seq', 1, false);


--
-- Data for Name: account_fiscal_position_res_country_state_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_fiscal_position_res_country_state_rel (account_fiscal_position_id, res_country_state_id) FROM stdin;
\.


--
-- Data for Name: account_fiscal_position_tax; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_fiscal_position_tax (id, create_uid, create_date, position_id, tax_src_id, write_uid, tax_dest_id, write_date) FROM stdin;
\.


--
-- Name: account_fiscal_position_tax_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_fiscal_position_tax_id_seq', 1, false);


--
-- Data for Name: account_fiscal_position_tax_template; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_fiscal_position_tax_template (id, create_uid, create_date, position_id, tax_src_id, write_uid, tax_dest_id, write_date) FROM stdin;
\.


--
-- Name: account_fiscal_position_tax_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_fiscal_position_tax_template_id_seq', 1, false);


--
-- Data for Name: account_fiscal_position_template; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_fiscal_position_template (id, create_uid, create_date, name, chart_template_id, write_uid, note, write_date) FROM stdin;
\.


--
-- Name: account_fiscal_position_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_fiscal_position_template_id_seq', 1, false);


--
-- Data for Name: account_full_reconcile; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_full_reconcile (id, create_uid, create_date, name, write_uid, write_date) FROM stdin;
\.


--
-- Name: account_full_reconcile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_full_reconcile_id_seq', 1, false);


--
-- Data for Name: account_invoice; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_invoice (id, comment, date_due, create_date, reference, reference_type, number, journal_id, currency_id, amount_total_company_signed, partner_id, create_uid, amount_untaxed, partner_bank_id, residual_company_signed, amount_total_signed, message_last_post, company_id, amount_tax, state, fiscal_position_id, type, sent, account_id, reconciled, origin, residual, move_name, date_invoice, payment_term_id, write_date, residual_signed, date, user_id, write_uid, move_id, amount_total, amount_untaxed_signed, name, commercial_partner_id, team_id) FROM stdin;
\.


--
-- Data for Name: account_invoice_account_move_line_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_invoice_account_move_line_rel (account_invoice_id, account_move_line_id) FROM stdin;
\.


--
-- Data for Name: account_invoice_cancel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_invoice_cancel (id, create_uid, create_date, write_date, write_uid) FROM stdin;
\.


--
-- Name: account_invoice_cancel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_invoice_cancel_id_seq', 1, false);


--
-- Data for Name: account_invoice_confirm; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_invoice_confirm (id, create_uid, create_date, write_date, write_uid) FROM stdin;
\.


--
-- Name: account_invoice_confirm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_invoice_confirm_id_seq', 1, false);


--
-- Name: account_invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_invoice_id_seq', 1, false);


--
-- Data for Name: account_invoice_line; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_invoice_line (id, origin, create_date, sequence, price_unit, price_subtotal, write_uid, currency_id, uom_id, partner_id, create_uid, company_id, account_analytic_id, account_id, discount, write_date, price_subtotal_signed, name, product_id, invoice_id, quantity) FROM stdin;
\.


--
-- Name: account_invoice_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_invoice_line_id_seq', 1, false);


--
-- Data for Name: account_invoice_line_tax; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_invoice_line_tax (invoice_line_id, tax_id) FROM stdin;
\.


--
-- Data for Name: account_invoice_payment_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_invoice_payment_rel (payment_id, invoice_id) FROM stdin;
\.


--
-- Data for Name: account_invoice_refund; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_invoice_refund (id, create_uid, filter_refund, create_date, description, write_uid, date_invoice, write_date, date) FROM stdin;
\.


--
-- Name: account_invoice_refund_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_invoice_refund_id_seq', 1, false);


--
-- Data for Name: account_invoice_tax; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_invoice_tax (id, create_uid, create_date, account_id, name, sequence, invoice_id, manual, company_id, write_uid, currency_id, amount, write_date, account_analytic_id, tax_id) FROM stdin;
\.


--
-- Name: account_invoice_tax_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_invoice_tax_id_seq', 1, false);


--
-- Data for Name: account_journal; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_journal (id, code, create_date, sequence, write_uid, currency_id, at_least_one_inbound, bank_statements_source, create_uid, group_invoice_lines, company_id, bank_account_id, profit_account_id, display_on_footer, type, default_debit_account_id, show_on_dashboard, default_credit_account_id, sequence_id, write_date, refund_sequence_id, loss_account_id, update_posted, name, at_least_one_outbound, refund_sequence) FROM stdin;
1	СЧЕТ	2016-11-22 14:05:06.609403	\N	1	\N	t	\N	1	f	1	\N	\N	f	sale	17	t	17	9	2016-11-22 14:05:06.609403	\N	\N	f	Счета заказчику	t	f
2	СЧЕТ	2016-11-22 14:05:06.609403	\N	1	\N	t	\N	1	f	1	\N	\N	f	purchase	19	t	19	10	2016-11-22 14:05:06.609403	\N	\N	f	Счета от поставщиков	t	f
3	РАЗНО	2016-11-22 14:05:06.609403	\N	1	\N	t	\N	1	f	1	\N	\N	f	general	\N	f	\N	11	2016-11-22 14:05:06.609403	\N	\N	f	Разные Операции	t	f
4	EXCH	2016-11-22 14:05:06.609403	\N	1	\N	t	\N	1	f	1	\N	\N	f	general	21	f	20	12	2016-11-22 14:05:06.609403	\N	\N	f	Курсовая Разница	t	f
5	CSH1	2016-11-22 14:05:06.609403	\N	1	\N	t	\N	1	f	1	\N	\N	f	cash	27	t	27	13	2016-11-22 14:05:06.609403	\N	\N	f	Наличные	t	f
6	BNK1	2016-11-22 14:05:06.609403	\N	1	\N	t	\N	1	f	1	\N	\N	f	bank	28	t	28	14	2016-11-22 14:05:06.609403	\N	\N	f	Банк	t	f
\.


--
-- Data for Name: account_journal_accounting_report_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_journal_accounting_report_rel (accounting_report_id, account_journal_id) FROM stdin;
\.


--
-- Name: account_journal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_journal_id_seq', 6, true);


--
-- Data for Name: account_journal_inbound_payment_method_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_journal_inbound_payment_method_rel (journal_id, inbound_payment_method) FROM stdin;
1	1
2	1
3	1
4	1
5	1
6	1
\.


--
-- Data for Name: account_journal_outbound_payment_method_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_journal_outbound_payment_method_rel (journal_id, outbound_payment_method) FROM stdin;
1	2
2	2
3	2
4	2
5	2
6	2
\.


--
-- Data for Name: account_journal_type_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_journal_type_rel (journal_id, type_id) FROM stdin;
\.


--
-- Data for Name: account_move; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_move (id, create_uid, create_date, statement_line_id, ref, journal_id, company_id, currency_id, state, rate_diff_partial_rec_id, matched_percentage, write_date, narration, date, amount, write_uid, partner_id, name) FROM stdin;
\.


--
-- Name: account_move_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_move_id_seq', 1, false);


--
-- Data for Name: account_move_line; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_move_line (id, create_date, statement_id, account_id, company_id, currency_id, date_maturity, user_type_id, partner_id, blocked, analytic_account_id, create_uid, amount_residual, journal_id, amount_residual_currency, debit, ref, debit_cash_basis, reconciled, credit, balance_cash_basis, write_date, date, write_uid, move_id, name, payment_id, company_currency_id, product_id, invoice_id, tax_line_id, credit_cash_basis, product_uom_id, amount_currency, balance, quantity, full_reconcile_id) FROM stdin;
\.


--
-- Data for Name: account_move_line_account_tax_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_move_line_account_tax_rel (account_move_line_id, account_tax_id) FROM stdin;
\.


--
-- Name: account_move_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_move_line_id_seq', 1, false);


--
-- Data for Name: account_move_line_reconcile; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_move_line_reconcile (id, create_uid, create_date, writeoff, company_id, write_uid, credit, write_date, debit, trans_nbr) FROM stdin;
\.


--
-- Name: account_move_line_reconcile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_move_line_reconcile_id_seq', 1, false);


--
-- Data for Name: account_move_line_reconcile_writeoff; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_move_line_reconcile_writeoff (id, comment, create_uid, create_date, writeoff_acc_id, journal_id, analytic_id, write_date, date_p, write_uid) FROM stdin;
\.


--
-- Name: account_move_line_reconcile_writeoff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_move_line_reconcile_writeoff_id_seq', 1, false);


--
-- Data for Name: account_move_reversal; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_move_reversal (id, create_uid, create_date, journal_id, write_uid, write_date, date) FROM stdin;
\.


--
-- Name: account_move_reversal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_move_reversal_id_seq', 1, false);


--
-- Data for Name: account_operation_template; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_operation_template (id, second_analytic_account_id, create_date, sequence, second_amount_type, second_journal_id, write_uid, analytic_account_id, create_uid, second_tax_id, has_second_line, journal_id, label, second_label, second_account_id, account_id, company_id, write_date, tax_id, amount_type, name, amount, second_amount) FROM stdin;
\.


--
-- Name: account_operation_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_operation_template_id_seq', 1, false);


--
-- Data for Name: account_partial_reconcile; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_partial_reconcile (id, create_uid, create_date, credit_move_id, company_id, write_uid, currency_id, amount, debit_move_id, write_date, amount_currency, full_reconcile_id) FROM stdin;
\.


--
-- Name: account_partial_reconcile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_partial_reconcile_id_seq', 1, false);


--
-- Data for Name: account_payment; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_payment (id, create_date, communication, company_id, currency_id, partner_id, payment_method_id, payment_date, payment_difference_handling, journal_id, state, writeoff_account_id, create_uid, partner_type, write_date, write_uid, name, destination_journal_id, amount, payment_type, payment_reference) FROM stdin;
\.


--
-- Name: account_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_payment_id_seq', 1, false);


--
-- Data for Name: account_payment_method; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_payment_method (id, create_uid, code, create_date, name, write_uid, payment_type, write_date) FROM stdin;
1	1	manual	2016-11-22 14:04:29.876622	Manual	1	inbound	2016-11-22 14:04:29.876622
2	1	manual	2016-11-22 14:04:29.876622	Manual	1	outbound	2016-11-22 14:04:29.876622
\.


--
-- Name: account_payment_method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_payment_method_id_seq', 2, true);


--
-- Data for Name: account_payment_term; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_payment_term (id, create_uid, create_date, name, company_id, write_uid, note, write_date, active) FROM stdin;
1	1	2016-11-22 14:04:29.876622	Immediate Payment	1	1	Payment term: Immediate Payment	2016-11-22 14:04:29.876622	t
2	1	2016-11-22 14:04:29.876622	15 Days	1	1	Payment term: 15 Days	2016-11-22 14:04:29.876622	t
3	1	2016-11-22 14:04:29.876622	30 Net Days	1	1	Payment term: 30 Net Days	2016-11-22 14:04:29.876622	t
\.


--
-- Name: account_payment_term_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_payment_term_id_seq', 3, true);


--
-- Data for Name: account_payment_term_line; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_payment_term_line (id, payment_id, create_uid, create_date, option, sequence, days, value, write_uid, write_date, value_amount) FROM stdin;
1	1	1	2016-11-22 14:04:29.876622	day_after_invoice_date	9	0	balance	1	2016-11-22 14:04:29.876622	0.00
2	2	1	2016-11-22 14:04:29.876622	day_after_invoice_date	500	15	balance	1	2016-11-22 14:04:29.876622	0.00
3	3	1	2016-11-22 14:04:29.876622	day_after_invoice_date	500	30	balance	1	2016-11-22 14:04:29.876622	0.00
\.


--
-- Name: account_payment_term_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_payment_term_line_id_seq', 3, true);


--
-- Data for Name: account_register_payments; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_register_payments (id, create_uid, create_date, payment_date, communication, journal_id, write_uid, currency_id, partner_type, amount, payment_type, write_date, partner_id, payment_method_id) FROM stdin;
\.


--
-- Name: account_register_payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_register_payments_id_seq', 1, false);


--
-- Data for Name: account_report_general_ledger; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_report_general_ledger (id, create_uid, initial_balance, create_date, display_account, date_from, company_id, sortby, write_date, date_to, write_uid, target_move) FROM stdin;
\.


--
-- Name: account_report_general_ledger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_report_general_ledger_id_seq', 1, false);


--
-- Data for Name: account_report_general_ledger_journal_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_report_general_ledger_journal_rel (account_id, journal_id) FROM stdin;
\.


--
-- Data for Name: account_tax; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_tax (id, amount_type, create_uid, create_date, description, name, sequence, tax_group_id, company_id, type_tax_use, write_uid, analytic, amount, include_base_amount, write_date, price_include, active, refund_account_id, account_id) FROM stdin;
1	percent	1	2016-11-22 14:05:06.609403	15.00%	Налог 15.00%	1	1	1	sale	1	f	15.0000	f	2016-11-22 14:05:06.609403	f	t	14	14
2	percent	1	2016-11-22 14:05:06.609403	15.00%	Налог 15.00%	1	1	1	purchase	1	f	15.0000	f	2016-11-22 14:05:06.609403	f	t	8	8
\.


--
-- Data for Name: account_tax_account_tag; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_tax_account_tag (account_tax_id, account_account_tag_id) FROM stdin;
\.


--
-- Data for Name: account_tax_filiation_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_tax_filiation_rel (parent_tax, child_tax) FROM stdin;
\.


--
-- Data for Name: account_tax_group; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_tax_group (id, create_uid, create_date, name, sequence, write_uid, write_date) FROM stdin;
1	1	2016-11-22 14:04:29.876622	Taxes	0	1	2016-11-22 14:04:29.876622
\.


--
-- Name: account_tax_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_tax_group_id_seq', 1, true);


--
-- Name: account_tax_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_tax_id_seq', 2, true);


--
-- Data for Name: account_tax_sale_advance_payment_inv_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_tax_sale_advance_payment_inv_rel (sale_advance_payment_inv_id, account_tax_id) FROM stdin;
\.


--
-- Data for Name: account_tax_sale_order_line_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_tax_sale_order_line_rel (sale_order_line_id, account_tax_id) FROM stdin;
\.


--
-- Data for Name: account_tax_template; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_tax_template (id, amount_type, create_uid, create_date, description, name, sequence, price_include, chart_template_id, company_id, type_tax_use, write_uid, analytic, amount, include_base_amount, write_date, active, refund_account_id, account_id) FROM stdin;
1	percent	1	2016-11-22 14:05:06.609403	15.00%	Налог 15.00%	1	f	1	1	sale	1	f	15.0000	f	2016-11-22 14:05:06.609403	t	14	14
2	percent	1	2016-11-22 14:05:06.609403	15.00%	Налог 15.00%	1	f	1	1	purchase	1	f	15.0000	f	2016-11-22 14:05:06.609403	t	8	8
\.


--
-- Data for Name: account_tax_template_filiation_rel; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_tax_template_filiation_rel (parent_tax, child_tax) FROM stdin;
\.


--
-- Name: account_tax_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_tax_template_id_seq', 2, true);


--
-- Data for Name: account_unreconcile; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY account_unreconcile (id, create_uid, create_date, write_date, write_uid) FROM stdin;
\.


--
-- Name: account_unreconcile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: odoouser
--

SELECT pg_catalog.setval('account_unreconcile_id_seq', 1, false);


--
-- Data for Name: accounting_report; Type: TABLE DATA; Schema: public; Owner: odoouser
--

COPY accounting_report (id, create_uid, create_date, filter_cmp, date_from, enable_filter, company_id, date_to_cmp, date_from_cmp, label_filter, debit_credit, write_date, date_to, account_report_id, write_uid, target_move) FROM stdin;
