document.addEventListener('DOMContentLoaded', function(){
  previewImage()
})

function previewImage() {
  if (document.getElementById('prototype_image_preview')){
    const imagePreview = document.getElementById('prototype_image_preview')

    // プロトタイプの画像変更時の処理
    document.getElementById('prototype_image').addEventListener('change', function(e){
      const file = e.target.files[0]
      const blob = window.URL.createObjectURL(file)

      // 画像を表示するためのdiv要素を生成
      const imageElement = document.createElement('div')

      // 表示する画像を生成
      const blobImage = document.createElement('img')
      blobImage.setAttribute('src', blob)

      // 生成したHTMLの要素をブラウザに表示させる
      imageElement.appendChild(blobImage)
      imagePreview.appendChild(imageElement)
    })
  }
}

