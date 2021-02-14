<article class="ch_news {{{ if ../thumb }}}ch_news--with-thumb{{{ end }}}">
  {{{ if ../thumb }}}
    <a href="/post/{../pid}">
      <img src="{{ ../thumb.url }}" class="ch_news__thumb" alt="[[custom-homepage:preview]] - {{ ../topic.name }}">
    </a>
  {{{ end }}}
  <div class="ch_news__content">
    <div class="ch_news__top">
      <time datetime="{ ../timestampISO }" class="ch_news__date">{../date}</time>
      {{{ if ../user }}}
        <span class="ch_news__author-c">&nbsp;by <a href="/user/{{ ../user.userslug }}" class="ch_news__author">{{ ../user.displayname }}</a></span>
      {{{ end }}}
      {{{ if ../category }}}
        <a href="/category/{../category.cid}" class="ch_news__category">{{ ../category.name }}</a>
      {{{ end }}}
    </div>
    <a href="/post/{../pid}" class="ch_news__link">
      <h3 class="ch_news__title">{{ ../topic.title }}</h3>
    </a>
    <div class="ch_news__desc">{ ../teaser }</div>
  </div>
</article>