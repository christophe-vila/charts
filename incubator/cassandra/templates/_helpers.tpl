{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "cassandra.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 21 chars because Kubernetes name fields are limited to 24 (by the DNS naming spec)
and Statefulset will append -xx at the end of name.
*/}}
{{- define "cassandra.fullname" -}}
{{- $releaseName := .Release.Name | replace "_" "-" -}}
{{- if ne .Chart.Name  .Release.Name -}}
{{- printf "%s-%s" $releaseName .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s" .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
