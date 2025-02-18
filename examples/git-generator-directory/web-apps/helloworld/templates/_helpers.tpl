{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "helloworld.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "helloworld.fullname" -}}
{{- printf "%s" (include "helloworld.name" .) }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "helloworld.labels" -}}
app.kubernetes.io/name: {{ include "helloworld.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
