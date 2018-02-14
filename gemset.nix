{
  actioncable = {
    dependencies = ["actionpack" "nio4r" "websocket-driver"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05k9slwr3bjc6n564l9qr5b22ss2ig5sf1k3rf4fx8kacgsnina7";
      type = "gem";
    };
    version = "5.1.4";
  };
  actionmailer = {
    dependencies = ["actionpack" "actionview" "activejob" "mail" "rails-dom-testing"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1scqqmpbs6f56qs3k4n1m21j2sc9n3b8fs00rh1zi16j1f2rirss";
      type = "gem";
    };
    version = "5.1.4";
  };
  actionpack = {
    dependencies = ["actionview" "activesupport" "rack" "rack-test" "rails-dom-testing" "rails-html-sanitizer"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ip4al2k6q814i7m1ydank9jdl2k8ckmrg1bjffz28qr0m3ygl7m";
      type = "gem";
    };
    version = "5.1.4";
  };
  actionview = {
    dependencies = ["activesupport" "builder" "erubi" "rails-dom-testing" "rails-html-sanitizer"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hhpljazbc89fpfxdz72vxgsnv236sqk8n92ykk1hy1khs53jbrh";
      type = "gem";
    };
    version = "5.1.4";
  };
  activejob = {
    dependencies = ["activesupport" "globalid"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jkbrfhhnwww468sw6x64pwcpjskxjnwas2gfzvgg4km9bglz0gp";
      type = "gem";
    };
    version = "5.1.4";
  };
  activemodel = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qws28wsgbh4hyx92zjip979xczq7dsblfhplzrxsjg1aj7ss220";
      type = "gem";
    };
    version = "5.1.4";
  };
  activerecord = {
    dependencies = ["activemodel" "activesupport" "arel"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gj1nap7dn8fcx1nvni79zvl034jp6113sjjrr3hq1v2r5s7igl9";
      type = "gem";
    };
    version = "5.1.4";
  };
  activesupport = {
    dependencies = ["concurrent-ruby" "i18n" "minitest" "tzinfo"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0sgf4rsfr7jcaqsx0wwzx4l4k9xsjlwv0mzl08pxiyp1qzyx8scr";
      type = "gem";
    };
    version = "5.1.4";
  };
  arel = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nw0qbc6ph625p6n3maqq9f527vz3nbl0hk72fbyka8jzsmplxzl";
      type = "gem";
    };
    version = "8.0.0";
  };
  builder = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qibi5s67lpdv1wgcj66wcymcr04q6j4mzws6a479n0mlrmh5wr1";
      type = "gem";
    };
    version = "3.2.3";
  };
  byebug = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vv7s88w8jb1qg4qz3jrs3x3y5d9jfyyl7wfiz78b5x95ydvx41q";
      type = "gem";
    };
    version = "9.1.0";
  };
  concurrent-ruby = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "183lszf5gx84kcpb779v6a2y0mx9sssy8dgppng1z9a505nj1qcf";
      type = "gem";
    };
    version = "1.0.5";
  };
  crass = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1czijxlagzpzwchr2ldrgfi7kywg08idjpq37ndcmwh4fmz72c4l";
      type = "gem";
    };
    version = "1.0.3";
  };
  erubi = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zkaqb8zv14azb2fa8w79d3mssdx86k9kg2m1bgc2k428y2zf8g9";
      type = "gem";
    };
    version = "1.7.0";
  };
  ffi = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "034f52xf7zcqgbvwbl20jwdyjwznvqnwpbaps9nk18v9lgb1dpx0";
      type = "gem";
    };
    version = "1.9.18";
  };
  globalid = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02smrgdi11kziqi9zhnsy9i6yr2fnxrqlv3lllsvdjki3cd4is38";
      type = "gem";
    };
    version = "0.4.1";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "032wbfixfpwa67c893x5sn02ab0928vfqfshcs02bwkkxpqy9x8s";
      type = "gem";
    };
    version = "0.9.1";
  };
  listen = {
    dependencies = ["rb-fsevent" "rb-inotify" "ruby_dep"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01v5mrnfqm6sgm8xn2v5swxsn1wlmq7rzh2i48d4jzjsc7qvb6mx";
      type = "gem";
    };
    version = "3.1.5";
  };
  loofah = {
    dependencies = ["crass" "nokogiri"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0672aifc9rshw2fpfwca07pz8wizb707a1w1aaxmb6irnjhrbzac";
      type = "gem";
    };
    version = "2.1.1";
  };
  mail = {
    dependencies = ["mini_mime"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10dyifazss9mgdzdv08p47p344wmphp5pkh5i73s7c04ra8y6ahz";
      type = "gem";
    };
    version = "2.7.0";
  };
  method_source = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xqj21j3vfq4ldia6i2akhn2qd84m0iqcnsl49kfpq3xk6x0dzgn";
      type = "gem";
    };
    version = "0.9.0";
  };
  mini_mime = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lwhlvjqaqfm6k3ms4v29sby9y7m518ylsqz2j74i740715yl5c8";
      type = "gem";
    };
    version = "1.0.0";
  };
  mini_portile2 = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13d32jjadpjj6d2wdhkfpsmy68zjx90p49bgf8f7nkpz86r1fr11";
      type = "gem";
    };
    version = "2.3.0";
  };
  minitest = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12mhxwabzxh0hp8k3pywsq5kywb3pn45wjipp0amn18mqb930875";
      type = "gem";
    };
    version = "5.11.1";
  };
  nio4r = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jjrj7vs29w6dfgsxq08226jfbi2j0x62lf4p9zmvyp19dj4z00a";
      type = "gem";
    };
    version = "2.2.0";
  };
  nokogiri = {
    dependencies = ["mini_portile2"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "105xh2zkr8nsyfaj2izaisarpnkrrl9000y3nyflg9cbzrfxv021";
      type = "gem";
    };
    version = "1.8.1";
  };
  puma = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dvd3snbjmkz3y39hxf5qiqxjp5izscqa45a4as9d9q8gwqz31sv";
      type = "gem";
    };
    version = "3.11.2";
  };
  rack = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kczgp2zwcrvp257dl8j4y3mnyqflxr7rn4vl9w1rwblznx9n74c";
      type = "gem";
    };
    version = "2.0.3";
  };
  rack-test = {
    dependencies = ["rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gv8sb6bxp6anqvqr53w10hs4xj8i39c0jajd0qd03lvjadgc926";
      type = "gem";
    };
    version = "0.8.2";
  };
  rails = {
    dependencies = ["actioncable" "actionmailer" "actionpack" "actionview" "activejob" "activemodel" "activerecord" "activesupport" "railties" "sprockets-rails"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1f4qdznh7cqc4233hwg61qhpj2mwz1m4g2djwzjqk1v78lh1khjw";
      type = "gem";
    };
    version = "5.1.4";
  };
  rails-dom-testing = {
    dependencies = ["activesupport" "nokogiri"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lfq2a7kp2x64dzzi5p4cjcbiv62vxh9lyqk2f0rqq3fkzrw8h5i";
      type = "gem";
    };
    version = "2.0.3";
  };
  rails-html-sanitizer = {
    dependencies = ["loofah"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "138fd86kv073zqfx0xifm646w6bgw2lr8snk16lknrrfrss8xnm7";
      type = "gem";
    };
    version = "1.0.3";
  };
  railties = {
    dependencies = ["actionpack" "activesupport" "method_source" "rake" "thor"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00c0laqxcsa243nv7dzln4x9vyxwvv63lg53b15n63w1nhrg6xz4";
      type = "gem";
    };
    version = "5.1.4";
  };
  rake = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "190p7cs8zdn07mjj6xwwsdna3g0r98zs4crz7jh2j2q5b0nbxgjf";
      type = "gem";
    };
    version = "12.3.0";
  };
  rb-fsevent = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fbpmjypwxkb8r7y1kmhmyp6gawa4byw0yb3jc3dn9ly4ld9lizf";
      type = "gem";
    };
    version = "0.10.2";
  };
  rb-inotify = {
    dependencies = ["ffi"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yfsgw5n7pkpyky6a9wkf1g9jafxb0ja7gz0qw0y14fd2jnzfh71";
      type = "gem";
    };
    version = "0.9.10";
  };
  ruby_dep = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1c1bkl97i9mkcvkn1jks346ksnvnnp84cs22gwl0vd7radybrgy5";
      type = "gem";
    };
    version = "1.5.0";
  };
  spring = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "168yz9c1fv21wc5i8q7n43b9nk33ivg3ws1fn6x0afgryz3ssx75";
      type = "gem";
    };
    version = "2.0.2";
  };
  spring-watcher-listen = {
    dependencies = ["listen" "spring"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ybz9nsngfz4psvgnbr3gdk5ibqqhq47lsjkwh5yq4f8brpr10yz";
      type = "gem";
    };
    version = "2.0.1";
  };
  sprockets = {
    dependencies = ["concurrent-ruby" "rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0sv3zk5hwxyjvg7iy9sggjc7k3mfxxif7w8p260rharfyib939ar";
      type = "gem";
    };
    version = "3.7.1";
  };
  sprockets-rails = {
    dependencies = ["actionpack" "activesupport" "sprockets"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ab42pm8p5zxpv3sfraq45b9lj39cz9mrpdirm30vywzrwwkm5p1";
      type = "gem";
    };
    version = "3.2.1";
  };
  sqlite3 = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01ifzp8nwzqppda419c9wcvr8n82ysmisrs0hph9pdmv1lpa4f5i";
      type = "gem";
    };
    version = "1.3.13";
  };
  thor = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nmqpyj642sk4g16nkbq6pj856adpv91lp4krwhqkh2iw63aszdl";
      type = "gem";
    };
    version = "0.20.0";
  };
  thread_safe = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nmhcgq6cgz44srylra07bmaw99f5271l0dpsvl5f75m44l0gmwy";
      type = "gem";
    };
    version = "0.3.6";
  };
  tzinfo = {
    dependencies = ["thread_safe"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09dpbrih054mn42flbbcdpzk2727mzfvjrgqb12zdafhx7p9rrzp";
      type = "gem";
    };
    version = "1.2.4";
  };
  websocket-driver = {
    dependencies = ["websocket-extensions"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1943442yllhldh9dbp374x2q39cxa49xrm28nb78b7mfbv3y195l";
      type = "gem";
    };
    version = "0.6.5";
  };
  websocket-extensions = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "034sdr7fd34yag5l6y156rkbhiqgmy395m231dwhlpcswhs6d270";
      type = "gem";
    };
    version = "0.1.3";
  };
}