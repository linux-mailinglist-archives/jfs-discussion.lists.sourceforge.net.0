Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FAE2545D5
	for <lists+jfs-discussion@lfdr.de>; Thu, 27 Aug 2020 15:23:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kBHrZ-00079I-Sr; Thu, 27 Aug 2020 13:22:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1kBHrY-000797-V4
 for jfs-discussion@lists.sourceforge.net; Thu, 27 Aug 2020 13:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:From:Subject:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZDs2ik1/owfOaVWKfPqGsUKE7Si0m63igeslvPclKXU=; b=mfA0fRuNYmdv8QiOPpbCKY4o4L
 sY0gFqFPpzhIgc9Zeqjr0biRXaZeAkP65F6CZmfcCacVqP8C+RakJRng1t3FJHnKG5xw4pxO1moC+
 AplQK6T1gNoMoZAprwvVErTSYODKw3+YNEzj7AQdiv5sdBmtBBGnactj40wQlo8r6YHc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:From:
 Subject:Cc:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZDs2ik1/owfOaVWKfPqGsUKE7Si0m63igeslvPclKXU=; b=f
 8n6cDr3zPm4t+x7hHCqceEMT+R3Wzzi2luLM6lD5dGzN71zH3gM7HfAp/V2+UO5v9YZ0LyLrg5jXW
 zOYb+YLi++KK666QeEE2g1FzxOR05yvNLJK4Z57NC3sl8o7IJa3rM9KfGkKHlm+Oq5/27Egxfprm4
 wQZl7mSmk9jxgZu8=;
Received: from mout.web.de ([212.227.17.11])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kBHrW-004wVm-QS
 for jfs-discussion@lists.sourceforge.net; Thu, 27 Aug 2020 13:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1598534543;
 bh=EHGZOxM1yyKziu18+QL/idNP/lC3aMGaqCf4xt40XrE=;
 h=X-UI-Sender-Class:To:Cc:Subject:From:Date;
 b=UkA7nKytjJ7YIK7PrLeTeTj1Nx5D/RHMwV911LPgwDlN1l4JJBcRz/Py4iXjo9omj
 ZyNqgbIB5nA9Lfev1llFtH+Cft70RD5yZvTM1Pnj5Rexu89Er5vX6Qou5RKJ4aaOTK
 dQFrLLgT+38+Htzs7FIAaoFcvjSB5+Ux7zxf7UYQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.99.195]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1N1uAl-1kdVxO1lLV-012BEg; Thu, 27
 Aug 2020 15:22:23 +0200
To: Dinghao Liu <dinghao.liu@zju.edu.cn>, jfs-discussion@lists.sourceforge.net
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 mQINBFg2+xABEADBJW2hoUoFXVFWTeKbqqif8VjszdMkriilx90WB5c0ddWQX14h6w5bT/A8
 +v43YoGpDNyhgA0w9CEhuwfZrE91GocMtjLO67TAc2i2nxMc/FJRDI0OemO4VJ9RwID6ltwt
 mpVJgXGKkNJ1ey+QOXouzlErVvE2fRh+KXXN1Q7fSmTJlAW9XJYHS3BDHb0uRpymRSX3O+E2
 lA87C7R8qAigPDZi6Z7UmwIA83ZMKXQ5stA0lhPyYgQcM7fh7V4ZYhnR0I5/qkUoxKpqaYLp
 YHBczVP+Zx/zHOM0KQphOMbU7X3c1pmMruoe6ti9uZzqZSLsF+NKXFEPBS665tQr66HJvZvY
 GMDlntZFAZ6xQvCC1r3MGoxEC1tuEa24vPCC9RZ9wk2sY5Csbva0WwYv3WKRZZBv8eIhGMxs
 rcpeGShRFyZ/0BYO53wZAPV1pEhGLLxd8eLN/nEWjJE0ejakPC1H/mt5F+yQBJAzz9JzbToU
 5jKLu0SugNI18MspJut8AiA1M44CIWrNHXvWsQ+nnBKHDHHYZu7MoXlOmB32ndsfPthR3GSv
 jN7YD4Ad724H8fhRijmC1+RpuSce7w2JLj5cYj4MlccmNb8YUxsE8brY2WkXQYS8Ivse39MX
 BE66MQN0r5DQ6oqgoJ4gHIVBUv/ZwgcmUNS5gQkNCFA0dWXznQARAQABtCZNYXJrdXMgRWxm
 cmluZyA8TWFya3VzLkVsZnJpbmdAd2ViLmRlPokCVAQTAQgAPhYhBHDP0hzibeXjwQ/ITuU9
 Figxg9azBQJYNvsQAhsjBQkJZgGABQsJCAcCBhUICQoLAgQWAgMBAh4BAheAAAoJEOU9Figx
 g9azcyMP/iVihZkZ4VyH3/wlV3nRiXvSreqg+pGPI3c8J6DjP9zvz7QHN35zWM++1yNek7Ar
 OVXwuKBo18ASlYzZPTFJZwQQdkZSV+atwIzG3US50ZZ4p7VyUuDuQQVVqFlaf6qZOkwHSnk+
 CeGxlDz1POSHY17VbJG2CzPuqMfgBtqIU1dODFLpFq4oIAwEOG6fxRa59qbsTLXxyw+PzRaR
 LIjVOit28raM83Efk07JKow8URb4u1n7k9RGAcnsM5/WMLRbDYjWTx0lJ2WO9zYwPgRykhn2
 sOyJVXk9xVESGTwEPbTtfHM+4x0n0gC6GzfTMvwvZ9G6xoM0S4/+lgbaaa9t5tT/PrsvJiob
 kfqDrPbmSwr2G5mHnSM9M7B+w8odjmQFOwAjfcxoVIHxC4Cl/GAAKsX3KNKTspCHR0Yag78w
 i8duH/eEd4tB8twcqCi3aCgWoIrhjNS0myusmuA89kAWFFW5z26qNCOefovCx8drdMXQfMYv
 g5lRk821ZCNBosfRUvcMXoY6lTwHLIDrEfkJQtjxfdTlWQdwr0mM5ye7vd83AManSQwutgpI
 q+wE8CNY2VN9xAlE7OhcmWXlnAw3MJLW863SXdGlnkA3N+U4BoKQSIToGuXARQ14IMNvfeKX
 NphLPpUUnUNdfxAHu/S3tPTc/E/oePbHo794dnEm57LuuQINBFg2+xABEADZg/T+4o5qj4cw
 nd0G5pFy7ACxk28mSrLuva9tyzqPgRZ2bdPiwNXJUvBg1es2u81urekeUvGvnERB/TKekp25
 4wU3I2lEhIXj5NVdLc6eU5czZQs4YEZbu1U5iqhhZmKhlLrhLlZv2whLOXRlLwi4jAzXIZAu
 76mT813jbczl2dwxFxcT8XRzk9+dwzNTdOg75683uinMgskiiul+dzd6sumdOhRZR7YBT+xC
 wzfykOgBKnzfFscMwKR0iuHNB+VdEnZw80XGZi4N1ku81DHxmo2HG3icg7CwO1ih2jx8ik0r
 riIyMhJrTXgR1hF6kQnX7p2mXe6K0s8tQFK0ZZmYpZuGYYsV05OvU8yqrRVL/GYvy4Xgplm3
 DuMuC7/A9/BfmxZVEPAS1gW6QQ8vSO4zf60zREKoSNYeiv+tURM2KOEj8tCMZN3k3sNASfoG
 fMvTvOjT0yzMbJsI1jwLwy5uA2JVdSLoWzBD8awZ2X/eCU9YDZeGuWmxzIHvkuMj8FfX8cK/
 2m437UA877eqmcgiEy/3B7XeHUipOL83gjfq4ETzVmxVswkVvZvR6j2blQVr+MhCZPq83Ota
 xNB7QptPxJuNRZ49gtT6uQkyGI+2daXqkj/Mot5tKxNKtM1Vbr/3b+AEMA7qLz7QjhgGJcie
 qp4b0gELjY1Oe9dBAXMiDwARAQABiQI8BBgBCAAmFiEEcM/SHOJt5ePBD8hO5T0WKDGD1rMF
 Alg2+xACGwwFCQlmAYAACgkQ5T0WKDGD1rOYSw/+P6fYSZjTJDAl9XNfXRjRRyJSfaw6N1pA
 Ahuu0MIa3djFRuFCrAHUaaFZf5V2iW5xhGnrhDwE1Ksf7tlstSne/G0a+Ef7vhUyeTn6U/0m
 +/BrsCsBUXhqeNuraGUtaleatQijXfuemUwgB+mE3B0SobE601XLo6MYIhPh8MG32MKO5kOY
 hB5jzyor7WoN3ETVNQoGgMzPVWIRElwpcXr+yGoTLAOpG7nkAUBBj9n9TPpSdt/npfok9ZfL
 /Q+ranrxb2Cy4tvOPxeVfR58XveX85ICrW9VHPVq9sJf/a24bMm6+qEg1V/G7u/AM3fM8U2m
 tdrTqOrfxklZ7beppGKzC1/WLrcr072vrdiN0icyOHQlfWmaPv0pUnW3AwtiMYngT96BevfA
 qlwaymjPTvH+cTXScnbydfOQW8220JQwykUe+sHRZfAF5TS2YCkQvsyf7vIpSqo/ttDk4+xc
 Z/wsLiWTgKlih2QYULvW61XU+mWsK8+ZlYUrRMpkauN4CJ5yTpvp+Orcz5KixHQmc5tbkLWf
 x0n1QFc1xxJhbzN+r9djSGGN/5IBDfUqSANC8cWzHpWaHmSuU3JSAMB/N+yQjIad2ztTckZY
 pwT6oxng29LzZspTYUEzMz3wK2jQHw+U66qBFk8whA7B2uAU1QdGyPgahLYSOa4XAEGb6wbI FEE=
Message-ID: <26193f53-8413-a264-dd76-abe44a357d57@web.de>
Date: Thu, 27 Aug 2020 15:22:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Language: en-GB
X-Provags-ID: V03:K1:NR3so4VHkDp+qbx45XD0m8idkOlWgnwwlKoP9MHC1Lz2k5+hOsQ
 zeQ0qNukidRYkBuH/cxovEdYHkyJbVu3wAQzjAsll1loPNZ/hVPp3QAXiXyBKUujHWC6get
 OXIjDgGyi/Z07vSz3+ZdW9/Z4/+Ki8JSlEiHplSRbessveJSEooquXV69xllC+Tbpkwl9mf
 7OKxcgy/ZZXWYgA+Ct6lQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:H+xmLbLO4u8=:+e1C1DS8I/ez2wFwKbSTu9
 1GBiPX+U93stOxGLTZKdYIbFVNl4987wrONdMTKlHdMdmt3G8sKYI/p9DHg2YqLTv96eBQQ3t
 dGYawhFLTBNQCu+hsvsLS2f20jv25pRn/oki0jH1dVT0/fUW0linov3k5+cyGT0SajO1lvJuP
 u2OiBV0GVo5gfoZmD5X+yjdttlFOrjWJr0rmynRwUuDBOfdiHGZNwLeD7OihypnIrC7P8gZrm
 2rmF8m4yPP7m+NBMTo22eH6aH6LtZXwx8VltIpTztIe6ZlZJSiteuda22CbW0ZlwZva1voNBw
 rP/pze7XKrnN6f4kRl5fUC2eLlJ0U0cuWiju8Xi7tP45y1hx9anGpT+26HbmY83ZBOgY7J/h9
 0H7djK9d8OryFG8/FeTxednvJmwog5TtogVjXaUFvrcRbRtFjGMXjAohmjT2tEAqd9FBiyosV
 8hWjAHk/MLPpTWZaMtNpH/y5xad9OsujG4V82VnLQ1r+fx7gKybBFxg9p3AkJc1HBrgAsIQp9
 u67jJOtcnAkl6lNg6nOejvl7loK2TdDgmhJbkzFc2et4a+2i1uLlygzB95Rsyh6orYdsvH9PM
 /hBNuDpoEi9TnyEpk1pGsrGJGpaLTYnpeA/vMaIojLYyU2TrylgG35pfwR8Xq6d5Qnde2LES7
 hLEIqgJ/CkTGU+r3jDz2BCgssu1Vs8LjZ6fsIN5XhE6+kiY4ZUC5ipTycMV0zLWXZwps7By/q
 ErCKr70Wj+mzcxZamVD/y5umS3O7q6CxFzkj9tHR+HXVFia7XyKIal4/QyCN5YTlljE2z7Q9R
 Hy0JY2MFPRMwWB7aiZl/KzdBV8aiKELPY6GZIUWyq1/aXK8CrsYFKiW5/QTSUsu/PkYdNwRVa
 xx3/XaaZTtwCrpAJPyLPNpPn+LFxzHNNuDUlhnUGmH+6VxLmXQPaMG+k2+4GaYtFtg4/5s3EO
 6YZUN5f+MXzJeI0EHcxfChB6FrAL4xS8q9am6B6WHCBl3t3G6hO1jmnuFBQhQcHPvM1lyM9dd
 DI4qQQC8kR05UsSrjt4CRHyjjogVPgezNXu9Hx3gJCE0aeUPUMOmTwRltTMF/X+aze0vhF/c3
 NjOSjKjWXHnVp6JrrNVX975LWS89vtcjClFksarvxzP02c0IAva2hhifAWBsHgUttGRyf/npV
 63WC3dMLYj9Pg+gZtNueNJDhAGYNwuyBq1BZlFNxLBtFduKGILtz+FJy5MOiLWOLTjJoiEpMx
 O3+X10O6WDNzWmA60tfMomxhRd33WhoOXlB3+qw==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (markus.elfring[at]web.de)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kBHrW-004wVm-QS
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix memory leak in dbAdjCtl()
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Kangjie Lu <kjlu@umn.edu>, Dave Kleikamp <shaggy@kernel.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

PiBXaGVuIGRiQmFja1NwbGl0KCkgZmFpbHMsIG1wIHNob3VsZCBiZSByZWxlYXNlZCB0bwo+IHBy
ZXZlbnQgbWVtbGVhay4gSXQncyB0aGUgc2FtZSB3aGVuIGRiSm9pbigpIGZhaWxzLgoKKiBDYW4g
YW5vdGhlciBpbXBlcmF0aXZlIHdvcmRpbmcgYmUgaGVscGZ1bCBmb3IgdGhlIGNoYW5nZSBkZXNj
cmlwdGlvbj8KCiogV291bGQgeW91IGxpa2UgdG8gYWRkIHRoZSB0YWcg4oCcRml4ZXPigJ0gdG8g
dGhlIGNvbW1pdCBtZXNzYWdlPwoKCuKApgo+ICsrKyBiL2ZzL2pmcy9qZnNfZG1hcC5jCj4gQEAg
LTI1NDksMTUgKzI1NDksMTkgQEAgIGRiQWRqQ3RsKHN0cnVjdCBibWFwICogYm1wLCBzNjQgYmxr
bm8sIGludCBuZXd2YWwsIGludCBhbGxvYywgaW50IGxldmVsKQo+ICAJCSAqLwo+ICAJCWlmIChv
bGR2YWwgPT0gTk9GUkVFKSB7Cj4gIAkJCXJjID0gZGJCYWNrU3BsaXQoKGRtdHJlZV90ICopIGRj
cCwgbGVhZm5vKTsKPiAtCQkJaWYgKHJjKQo+ICsJCQlpZiAocmMpIHsKPiArCQkJCXJlbGVhc2Vf
bWV0YXBhZ2UobXApOwo+ICAJCQkJcmV0dXJuIHJjOwo+ICsJCQl9Cj4gIAkJCW9sZHZhbCA9IGRj
cC0+c3RyZWVbdGldOwo+ICAJCX0KPiAgCQlkYlNwbGl0KChkbXRyZWVfdCAqKSBkY3AsIGxlYWZu
bywgZGNwLT5idWRtaW4sIG5ld3ZhbCk7Cj4gIAl9IGVsc2Ugewo+ICAJCXJjID0gZGJKb2luKChk
bXRyZWVfdCAqKSBkY3AsIGxlYWZubywgbmV3dmFsKTsKPiAtCQlpZiAocmMpCj4gKwkJaWYgKHJj
KSB7Cj4gKwkJCXJlbGVhc2VfbWV0YXBhZ2UobXApOwo+ICAJCQlyZXR1cm4gcmM7Cj4gKwkJfQo+
ICAJfQrigKYKCkkgaW1hZ2luZSB0aGF0IHRoZSBleGNlcHRpb24gaGFuZGxpbmcgY29kZSBjYW4g
YmUgaW1wcm92ZWQgYW5vdGhlciBiaXQKZm9yIHRoaXMgZnVuY3Rpb24gaW1wbGVtZW50YXRpb24g
YnkgYWRkaW5nIHRoZSBqdW1wIHRhcmdldCDigJxyZWxlYXNlX21ldGFwYWdl4oCdLgoKUmVnYXJk
cywKTWFya3VzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9q
ZnMtZGlzY3Vzc2lvbgo=
