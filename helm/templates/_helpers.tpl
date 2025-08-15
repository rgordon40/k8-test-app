{{/*
Generate a fullname for the chart
*/}}
{{- define "hello-helm.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}