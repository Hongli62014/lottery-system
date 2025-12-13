// 年会抽奖系统 - 强制指定路径显示脚本
(function() {
    'use strict';
    
    console.log('🎉 年会抽奖系统启动...');
    console.log('🎯 目标路径：#/log-lottery/home');
    
    // 多重保障确保显示指定路径
    function ensureTargetPage() {
        console.log('🔄 执行目标页面检查...');
        
        // 1. Hash路径检查和设置
        if (!window.location.hash || window.location.hash === '#/' || window.location.hash === '') {
            console.log('✅ 设置Hash路径为：#/log-lottery/home');
            window.location.hash = '#/log-lottery/home';
        }
        
        // 确保Hash路径正确
        if (window.location.hash !== '#/log-lottery/home') {
            console.log('✅ 修正Hash路径为：#/log-lottery/home');
            window.location.hash = '#/log-lottery/home';
        }
        
        // 2. Vue应用检查
        try {
            const app = document.getElementById('app');
            if (app && app.__vue_app__) {
                const router = app.__vue_app__.config.globalProperties.$router;
                if (router) {
                    const currentPath = router.currentRoute.value.path;
                    if (currentPath !== '/log-lottery/home') {
                        router.replace('/log-lottery/home');
                        console.log('✅ Vue Router已导航到：/log-lottery/home');
                    }
                }
            }
        } catch (e) {
            console.log('🔄 Vue应用还未完全加载，使用Hash导航');
            // 确保Hash路径正确
            if (window.location.hash !== '#/log-lottery/home') {
                window.location.hash = '#/log-lottery/home';
            }
        }
    }
    
    // 立即执行一次
    ensureTargetPage();
    
    // DOM加载完成后再次检查
    document.addEventListener('DOMContentLoaded', ensureTargetPage);
    
    // 页面完全加载后最终检查
    window.addEventListener('load', function() {
        setTimeout(ensureTargetPage, 200);
    });
    
    // 监听Hash变化，确保始终在目标路径
    window.addEventListener('hashchange', function() {
        if (window.location.hash !== '#/log-lottery/home') {
            console.log('🔄 检测到Hash变化，重置到目标路径');
            window.location.hash = '#/log-lottery/home';
        }
    });
    
    console.log('🎯 指定路径强制显示脚本加载完成');
})();