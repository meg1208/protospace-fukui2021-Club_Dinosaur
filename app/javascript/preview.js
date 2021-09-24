document.addEventListener('DOMContentLoaded', function(){
  previewImage()
})

function previewImage() {
  const prototype_image = document.getElementById('prototype_image')

  // プロトタイプの画像選択フィールドがある場合のみ、以下処理を行う
  if (prototype_image){

    // プロトタイプの画像変更時の処理
    prototype_image.addEventListener('change', function(e){
      
      // プロトタイプの画像が表示されている場合のみ、すでに存在している画像を削除する
      const imageContent = document.getElementById("image_content");
      if (imageContent) {
        imageContent.remove();
      }
      
      // 画像表示領域の要素を取得
      const image_section = document.getElementById('image_section')
      // ファイル情報を取得
      const file = e.target.files[0]
      // ファイルのURLを作成
      const blob = window.URL.createObjectURL(file)

      // 表示する画像を生成
      const blobImage = document.createElement('img')
      blobImage.setAttribute('id', 'image_content')
      blobImage.setAttribute('src', blob)

      // 生成したHTMLの要素をブラウザに表示させる
      image_section.appendChild(blobImage)
    })
  }
}
