import { defineConfig } from "vite"

export default defineConfig({
    server: {
        proxy: {
            '/api': 'Enter your backend host with port',
        },
    },
    build: {
        outDir: '../dist',// output directory
    },
    root: './src',// source folder
    publicDir: '../public',// public/backend folder
    base: './',// base public path : add ./ before url, otherwise vite make this : /url
})
