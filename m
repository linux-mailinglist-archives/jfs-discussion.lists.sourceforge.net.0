Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 938D81C5880
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 16:15:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVyM7-0007Co-17; Tue, 05 May 2020 14:15:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1jVyM5-0007Ch-Q6
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:15:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=99wQzqPT0+jRtEdXlp+aRUTWRGiB0RCHRJfcrj67nfk=; b=dB3uH1l9nFxsq0o2mgaikhizzo
 bMhHurucZwy3pWF/DnIydvzegDG8OGAnLKPVQSEejHGsmikN76k1dn6+KuB0tbW7KHZrAo2JUAGf0
 A6EsrDwP9kMLCFUbzuAYcdPmcLCb6sonhEGAfU4PwjLOvVvmSEgHtH6HDhpE/z0hBhH8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=99wQzqPT0+jRtEdXlp+aRUTWRGiB0RCHRJfcrj67nfk=; b=HBJpA0c7z2GNzJDJW5+k0gZBVC
 lpge9OJUdn5avch1JkgD5jg3GyXRv4SaEC762dy6I4FOd06fTWwlZ8q0yBois55I31ZZ8haScmaam
 gy3kwkCdM1kSZiyRCffZQD9IWnhiufwpQhcY10UIkhLPdydYcxgjqcV/5WLcfNEgxh40=;
Received: from mout.web.de ([212.227.17.11])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVyLz-008GJc-Tc
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:15:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588688106;
 bh=mf+yc1THoV4pyv4ey9hGDxLNZka1B4z5xCXHHlp3NBo=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=gYytFFqrgxEhnMiNctQEWfaB2tmp5SoA75+VAEI1gESiBHcL41LSde8uzuEynFf9L
 OL0Z2xNHKaHd5AegX8Lgg1+mBtux9PDZco5ONf8AVWF1O8+v++DU2nv+/Rxjsrpn+5
 BGM9fR/Wbu3vkg57DMj4+c0aQB1cW/d9ABk3XMNE=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.132.123]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MPpIE-1jS6jg1OmQ-005080; Tue, 05
 May 2020 16:15:06 +0200
To: Jia-Ju Bai <baijiaju1990@gmail.com>, jfs-discussion@lists.sourceforge.net
References: <20200505135313.28793-1-baijiaju1990@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <d3e126df-e7f6-00bd-aa3c-ea39fcd1582e@web.de>
Date: Tue, 5 May 2020 16:15:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505135313.28793-1-baijiaju1990@gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:QP5sqwEUOajYPTCypdV+V2cQv0nAqBqPw6LwvVHLNPF/+loAea0
 8FZWYinEvl3JjjgzrmORj9yCT05CZfs+6F/RoRHwkUnxPUh+7Bo1tq2TJsQz9U8Yy1o6kVK
 E0KfvFVPNXswaiDWXEQLBfIkqnBRBbq3gCs2FV50toH5/O2dJMUTJ9S98YrKT95lEH+wLoL
 ghLtjHiL0dBbRmqKBD+oA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0BZCCghejvA=:m1frBApvFnEwLFSglBajkJ
 fU2RRFOrB2kZm1BcP1JeACybbvyW3ch5C2Pa2bXswzciSo8yXexAaYsekjcnmcggV8lcfm127
 HbinQBEGT/A+vNh1NDL8nCUv2TbtZfCiE/l1qBE4IFKyB4JppFuFJf+3Bphbw8rkqkM3Kpl5b
 wPmutVvYbkxZJXp13shKAVYU/eRUluIcr5o1hoApM8FkQVgAKph60ABtc2qQ9J/rAKKHJL9Ul
 kkyrtMlGiX/RqrEaD24T8/7D+JI9hqhdJ2pbfiHEEI4rg/muUsXoGstCoINj/53LbGlTmxQCi
 gCpkECSvOJ+6MoeYUbLVLHhb+3mQrFcw5bI+tKaLI/eBOsG5XvAh/DRTL3oIOHgvglM9Gxu5g
 unFlzin50f6kdk2JlSnWJyueEVfgxEBkTVlMfl/wEWf0Limk1wkWkxLtsGwd3/a4cX1hXuYHq
 8zU7uuRtwGiJqJ1bXa0ja9PovvLuZUItPcTcQuf3LnD4hiUm8IzXDkxS2lpPubLBiNATGIVSv
 Z2yVkgfWCLkJYMjHBKif2j+MF7zuwf+uYqLTrrYEaZUVW67C0FmUY1+0EVIJ1waFrpYOrsgWN
 xi+Sk0l8jlQ2dnt+5dFtoTSAgkav/eIEjU9JWNojbsNV8cY/kYF/9/MBPpSPIwDrwfPk0E1w6
 +EmoO6Ndc1jmrbVdlc0wsNHqBNKfJOxtZRIZrM5MVEPyUJwJuMYNMQKtmykgRlPZu/sG5KWNE
 hIxPbioz5IYJALhFTq7rvugO2SShigLpoNZx8Are/JbU7eBQUw4csxe3dAkIne3+1PLf3kSUo
 4WYU9BC2JhTT9yRSRgTH+TBgxXaotmIZOEXDkq8PBllsLL7nvhlenQBpaREw2FbDNUg/9H+mD
 USw+7oTPk3KmE//V/k0PokpajqaxHzYgddFLv/A0BR7/rFGLw2xaknDGQSzlhN/Np78++THV/
 EdAQI3m4Qr03ciRn1kP7O2TpzwYYufYguR9YRPVzu+Vd357xmnppqg0IhRGNgP1+DCJr1U00e
 ifcV0gtEWw8+eWp2uzneSMk02sLpJoS/JuulBfAoUHzqa68Qi9FnLQQLjeMtrHybsmHKqS5Y0
 fcQtoCyRcDh7fHDcH4MtNyf5tvNBXetRZN18GpPM0ctm5hD22PCWQT6WY3foRwjuNy7VcemEm
 3EK/gsREJ76UCrLn59PXLeXHmBKpmvI9mNb50oz7jGsqQaJz9tgtCpWBG8jz1r2EzDWX4Ipsz
 wRWUJoyxOaAoSKQUh
X-Spam-Score: -0.3 (/)
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
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVyLz-008GJc-Tc
Subject: Re: [Jfs-discussion] [PATCH v2] fs: jfs: fix a possible data race
 in metapage_writepage()
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
Cc: Dave Kleikamp <shaggy@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

PiBUaGlzIGRhdGEgcmFjZSBpcyBmb3VuZCBieSBvdXIgY29uY3VycmVuY3kgZnV6emVyLgoKKiBI
b3cgZG8geW91IHRoaW5rIGFib3V0IHRvIHJlcGxhY2UgdGhlIHdvcmQg4oCcaXPigJ0gYnkg4oCc
d2Fz4oCdPwoKKiBJcyB0aGlzIGFuYWx5c2lzIHRvb2wgcHVibGljbHkgYXZhaWxhYmxlPwoKCuKA
pgo+IC0tLQo+ICBmcy9qZnMvamZzX21ldGFwYWdlLmMgfCAxMSArKysrKysrKystLQoKSSBzdWdn
ZXN0IHRvIG9taXQgdGhlIHRyaXBsZSBkYXNoZXMgYmVmb3JlIHRoaXMgaW5mb3JtYXRpb24uCgpS
ZWdhcmRzLApNYXJrdXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2pmcy1kaXNjdXNzaW9uCg==
