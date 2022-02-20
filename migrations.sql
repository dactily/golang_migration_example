create table metrics
(
    id        serial
        primary key,
    name      text,
    value     text,
    ts timestamp,
    domain text
);

create table history
(
    id     serial
        primary key,
    domain text,
    result text,
    ts     timestamp
);

create unique index metric_id_uindex
    on metrics (id);

create index metric_timestamp_index
    on metrics (ts);

create unique index history_id_uindex
    on history (id);

create index history_timestamp_index
    on history (ts);

INSERT INTO public.metrics (id, name, value, ts) VALUES (1, 'test1', '34', '2022-01-23 02:21:07.000000');
INSERT INTO public.metrics (id, name, value, ts) VALUES (2, 'test3', '33', '2022-01-23 02:21:07.000000');
INSERT INTO public.metrics (id, name, value, ts) VALUES (3, 'test5', '333', '2022-01-23 01:21:07.000000');
INSERT INTO public.metrics (id, name, value, ts) VALUES (4, 'mysql', '23', '2022-01-22 14:02:52.281964');
INSERT INTO public.metrics (id, name, value, ts) VALUES (6, 'ping', '73', '2022-01-22 16:04:52.281964');
INSERT INTO public.metrics (id, name, value, ts) VALUES (7, 'myapp', '32', '2022-01-22 17:05:52.281964');
INSERT INTO public.metrics (id, name, value, ts) VALUES (8, 'redis', '16', '2022-01-22 18:06:52.281964');
INSERT INTO public.metrics (id, name, value, ts) VALUES (5, 'cassandra', '40', '2022-01-22 15:03:52.281964');
INSERT INTO public.metrics (id, name, value, ts) VALUES (15, 'test123654123', '34', '2022-01-23 02:51:40.500508');
INSERT INTO public.metrics (id, name, value, ts) VALUES (16, 'hello', '23', '2022-01-23 02:52:07.967203');
INSERT INTO public.metrics (id, name, value, ts) VALUES (17, 'another-service', '42', '2022-01-23 16:00:20.024990');
INSERT INTO public.metrics (id, name, value, ts) VALUES (18, 'another-service', '42', '2022-01-23 16:00:38.631777');

ALTER SEQUENCE metrics_id_seq RESTART WITH 50
