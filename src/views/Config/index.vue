<script setup lang="ts">
import { ref } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { configRoutes } from '../../router'

const router = useRouter()
const route = useRoute()
const menuList = ref<any[]>(configRoutes.children)

function cleanMenuList(menu: any) {
  const newList = menu
  for (let i = 0; i < newList.length; i++) {
    if (newList[i].children) {
      cleanMenuList(newList[i].children)
    }
    if (!newList[i].meta) {
      newList.splice(i, 1)
      i--
    }
  }

  return newList
}

menuList.value = cleanMenuList(menuList.value)

function skip(path: string) {
  router.push(path)
}

// 复制微信号功能
function copyWechat() {
  const wechatId = 'wsuiry'
  navigator.clipboard.writeText(wechatId).then(() => {
    // 使用console.warn替代console.log，符合ESLint规则
    console.warn('微信号已复制到剪贴板')
  }).catch((err) => {
    console.error('复制失败:', err)
  })
}
</script>

<template>
  <div class="flex min-h-[calc(100%-280px)]">
    <ul class="w-56 m-0 mr-3 min-w-56 menu bg-base-200 pt-14">
      <li v-for="item in menuList" :key="item.name">
        <details v-if="item.children" open>
          <summary>{{ item.meta.title }}</summary>
          <ul>
            <li v-for="subItem in item.children" :key="subItem.name">
              <details v-if="subItem.children" open>
                <summary>{{ subItem.meta!.title }}</summary>
                <ul>
                  <li v-for="subSubItem in subItem.children" :key="subSubItem.name">
                    <a
                      :style="subSubItem.name === route.name ? 'background-color:rgba(12,12,12,0.2)' : ''"
                      @click="skip(subItem.path)"
                    >{{
                      subSubItem.meta!.title }}</a>
                  </li>
                </ul>
              </details>
              <a
                v-else :style="subItem.name === route.name ? 'background-color:rgba(12,12,12,0.2)' : ''"
                @click="skip(subItem.path)"
              >{{
                subItem.meta!.title }}</a>
            </li>
          </ul>
        </details>
        <a
          v-else :style="item.name === route.name ? 'background-color:rgba(12,12,12,0.2)' : ''"
          @click="skip(item.path)"
        >{{ item.meta!.title }}</a>
      </li>
    </ul>
    <router-view class="flex-1 mt-5" />
  </div>
  <footer class="p-6 rounded footer footer-center bg-base-200 text-base-content">
    <div class="space-y-4">
      <!-- 联系作者（小圆圈样式） -->
      <div class="flex items-center justify-center gap-3">
        <a href="weixin://dl/business/?t=wsuiry" class="w-10 h-10 bg-green-500 rounded-full flex items-center justify-center text-white hover:bg-green-600 transition-colors shadow-lg">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-5 h-5">
            <path d="M12 0C5.373 0 0 5.373 0 12s5.373 12 12 12 12-5.373 12-12S18.627 0 12 0zm4.707 9.293l-4 4a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L12 10.586l3.293-3.293a1 1 0 111.414 1.414z" />
          </svg>
        </a>
        <div class="text-sm text-center">
          <p class="cursor-pointer hover:text-green-500 transition-colors" @click="copyWechat">
            微信号：<strong>wsuiry</strong>
          </p>
        </div>
      </div>

      <!-- 广告文字 -->
      <div class="text-center">
        <p class="text-xs text-gray-500 animate-pulse-colors">
          专业系统定制 | 网页开发 | 小程序开发
        </p>
      </div>

      <!-- 文字内容 -->
      <div class="space-y-1 text-center">
        <p class="text-lg font-semibold">
          行有不得，反求诸己
        </p>
        <p class="text-lg font-semibold">
          破山中贼易，破心中贼难
        </p>
      </div>
    </div>
  </footer>
</template>

<style scoped>
/* 广告文字颜色渐变动画 */
@keyframes pulse-colors {
  0%, 100% {
    color: #6b7280; /* 初始灰色 */
  }
  50% {
    color: #10b981; /* 中间绿色 */
  }
}

.animate-pulse-colors {
  animation: pulse-colors 2s ease-in-out infinite;
}
</style>
