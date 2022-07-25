#!/usr/bin/clickhouse-local --queries-file

SELECT arrayJoin(splitByChar(' ', lower(line))) AS word, count() AS c FROM file(stdin, LineAsString) WHERE notEmpty(word) GROUP BY word ORDER BY c DESC
