<script setup lang='ts'>
import markdownit from 'markdown-it'
import { onMounted, ref } from 'vue'
import i18n from '@/locales/i18n'

const md = markdownit()
const readmeHtml = ref('')
function readMd() {
  fetch(`/${i18n.global.t('data.readmeName')}`)
    .then(res => res.text())
    .then((res) => {
      readmeHtml.value = md.render(res)
    })
}

onMounted(() => {
  readMd()
})
</script>

<template>
  <div class="w-full max-w-4xl mx-auto p-6 mb-10">
    <div
      v-dompurify-html="readmeHtml"
      class="markdown-body bg-white/90 dark:bg-base-800/90 p-8 rounded-lg shadow-lg"
    />
  </div>
</template>

<style scoped>
.markdown-body {
  color: #333;
  font-size: 16px;
  line-height: 1.6;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
}

.dark .markdown-body {
  color: #f5f5f5;
}

.markdown-body h1, .markdown-body h2, .markdown-body h3 {
  color: #1a1a1a;
  margin-top: 24px;
  margin-bottom: 16px;
  font-weight: 600;
  line-height: 1.25;
}

.dark .markdown-body h1, .dark .markdown-body h2, .dark .markdown-body h3 {
  color: #ffffff;
}

.markdown-body h1 {
  font-size: 2em;
  border-bottom: 1px solid #eaecef;
  padding-bottom: 0.3em;
}

.dark .markdown-body h1 {
  border-bottom-color: #30363d;
}

.markdown-body h2 {
  font-size: 1.5em;
  border-bottom: 1px solid #eaecef;
  padding-bottom: 0.3em;
}

.dark .markdown-body h2 {
  border-bottom-color: #30363d;
}

.markdown-body ul, .markdown-body ol {
  padding-left: 2em;
  margin-top: 0;
  margin-bottom: 16px;
}

.markdown-body li {
  margin-top: 0.25em;
}

.markdown-body code {
  background-color: rgba(27, 31, 35, 0.05);
  border-radius: 3px;
  font-size: 85%;
  margin: 0;
  padding: 0.2em 0.4em;
}

.dark .markdown-body code {
  background-color: rgba(255, 255, 255, 0.1);
}

.markdown-body table {
  border-collapse: collapse;
  margin-top: 0;
  margin-bottom: 16px;
  width: 100%;
  overflow: auto;
}

.markdown-body table th {
  font-weight: 600;
  background-color: rgba(27, 31, 35, 0.05);
  padding: 6px 13px;
  border: 1px solid #dfe2e5;
}

.markdown-body table td {
  padding: 6px 13px;
  border: 1px solid #dfe2e5;
}

.markdown-body table tr {
  background-color: #fff;
  border-top: 1px solid #c6cbd1;
}

.markdown-body table tr:nth-child(2n) {
  background-color: #f6f8fa;
}

.dark .markdown-body table th {
  background-color: rgba(255, 255, 255, 0.1);
  border-color: #30363d;
}

.dark .markdown-body table td {
  border-color: #30363d;
}

.dark .markdown-body table tr {
  background-color: #161b22;
  border-top-color: #30363d;
}

.dark .markdown-body table tr:nth-child(2n) {
  background-color: #0d1117;
}

.markdown-body p {
  margin-top: 0;
  margin-bottom: 16px;
}
</style>
