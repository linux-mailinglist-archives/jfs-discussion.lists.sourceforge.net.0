Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 571F11C40B8
	for <lists+jfs-discussion@lfdr.de>; Mon,  4 May 2020 19:03:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVeVI-0001xC-7Q; Mon, 04 May 2020 17:03:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1jVeF7-0006dt-0X
 for jfs-discussion@lists.sourceforge.net; Mon, 04 May 2020 16:46:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:From:Subject:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qC0SI+5SZ49ylQlp3ZhuDSCxoQ1HHJLYKeHEfROkZiA=; b=gNaPhBY534Vz3UxrTWi6V1Na3F
 gHmQk5Es+SSJSxDZDi5Vc5ALrGPV55RWE/4svIpss8MIFA0URIuBSs0f+IBCINtwufVglvaDF6ZJC
 1A8R6D2g1Xkr1t/WiYaL3iM7edeMU6YDH0F/X23odWbt7yqhVJoDSjdSLaPfTYycH5Rg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:From:
 Subject:Cc:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qC0SI+5SZ49ylQlp3ZhuDSCxoQ1HHJLYKeHEfROkZiA=; b=d
 Bo81izpXQBCjQeWimzvN57aJ3+uFYPArVwz90RvKW7BdZRGx70OJMONZUWFkEzbZXQFad7dleyzU+
 VtKNxAwzDEevJlOKW6sXXimYijahMBTZiS9SvjHBNdaZv7793XhQfJEO7AVqi9Pdv7OGJHBLJ4Xek
 34EbYQqzCs5ndhqY=;
Received: from mout.web.de ([217.72.192.78])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVeF4-0077o9-Vw
 for jfs-discussion@lists.sourceforge.net; Mon, 04 May 2020 16:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588610808;
 bh=iKajeEThUjwNdKgviLkmcHAYeTjhUS1wUVRcmyQKF6Y=;
 h=X-UI-Sender-Class:To:Cc:Subject:From:Date;
 b=IGJxO6vdV8gOdb0aQLZX66gSK4ajITvlzIHmFlSzaBFRhESYqpTwuffgjCKIw5/l/
 2f7EFBJxSu7oHqMlQx/sTE/ZCEG+HObBAOxWRYsxxBXejmXBGv4rSB/Xp3dKPE9yN5
 WJvSbCfOCVvmXcTQrLx1ekMz9YjtRnVxtVsrI3sk=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.133.152.69]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LxODe-1j3ir10BNy-016u7u; Mon, 04
 May 2020 18:33:41 +0200
To: Jia-Ju Bai <baijiaju1990@gmail.com>, jfs-discussion@lists.sourceforge.net
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <bcfeb785-b787-4ebe-c1e1-159b6efc7e51@web.de>
Date: Mon, 4 May 2020 18:33:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-GB
X-Provags-ID: V03:K1:7YzZOCIxWKK/06F9z/ZoK6WsDS8atsDgIU4fFcNjE6d6Q+wNyQX
 TbHjc+gy8VxPl6nXw2MEX992I2z5RX7o3FEyn1hhQRCKfQviHJjoPn4YQ9Zn1UI4TT/7LnQ
 5bTsgigi4YzCdVxOShXOLhDjtc4tFK8v5Vf/ZazivbflC/VT09VwzktchzAsYooQzhcZLIp
 WXyV3/ul3uZpfuPLJYI4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qfwwgB5/ceA=:xIUpZoVliLivOxMT+Q4iyI
 0D1Y8/TBx+58gMJheJKjl8OAhiVEY6ZbnkzU1Z8EDKd3C4EQ7L+zdNaDHmIvlL0DCQX5eNoyx
 eHH9PFOJdyGT5tc4BZdqbSvDHitvXVQAFSK58xtFdyUvwB6fZsKp3nmmWcU7Poigs2dwxh6m+
 5AeEs3IYy67NBhdsvy9RclsEQGlLN3+cXL5O4HYwbBZiUUHjgmUSeVOxyyNhxQmc8AUQzKD1c
 viaIepM+8g8l6kx0gt+DccsOefmX+1oihLLLwHq3B18H1hxBgLDa53cPoJNxzcFjOQpyMJCS/
 ln8yaY/AelLqbgqNMcEgGNy7IN6AEwa6eBr4bzcOwBZmatvrXfLiY58sPe9JSJaT6F7rV8N3C
 l1SF+H+d0+U2Az/Uj/5vE6yQ4/DaC4cyxMHhH9hD30hFPXEwzC2EaQzZBCB+dnAvZI0Lxv+VW
 Ty1wdTDlQWer5IjehNttfTrPHAhY9kuN+g3dNrnaXhWGst+G86yv66CjHZrr9cER/ZoikVid1
 OXXMEd+DXTckjpSPRoeK6rvEX7RDM3ZfFHqiFrcp01x6Rslc6FsLVo9SQ0ce6Hqd0cfkpOR5l
 Onb/cF8o27R9W/RKTcqv6ZHmHvoj5mF8lcrYfJtbebYFqFvLeDj5s3D8ouguaMM25nLOhNEK/
 9VRygd3WP4DD/Sp0Vx314lfBH1KLOkczb98dxmFRQEiK/SmTXs0LoGLAgN2i720vDUKArPesa
 Q9VQEhY0GLSjn7muQOkdLRtwsmVJmI49VI3vLtHemHH18Lp5f7y+0bmhJp37tIfQ91jFHvB34
 /8aeW81YzLRFidl2WshePddFERS0Z2f09riYfbCQUwbZq7aDqEuktq4jpRY7BnuZ7z2SVGlY1
 RaKxx/fu6RiXOqiK3cH/OJUNTN9sF+IBi7sm+yvZVSopscqyIt8M7H04mlm2j8xAu/t6/2Ljh
 k8dyPcGJIvrvNjD0IagKYMXG/yCRaOYyKcmGDXo5x+a2swIB0qGdu6u8lVAH/wyHDh8di8aQH
 0pUu9k3Gt/mkq4Ea3MfTkcTmZ0Whk71Nkl71mU0TzUToL+3dXDXrFtQdAJ66xvjCa3zMkbnFX
 lmo7u430NRS79sfv5kStYOTEfKMx8g+blDcLwy7LjPo/cF62y0qkPgHY9myhZFLMg7NZB1pJo
 7NAVK+84hg+Ui2+oTP7jBMTS0QHAtfDL3wmMxB5bm57pSrICaX+ymnLnjT98XIwB9lFaM+0TO
 2cWn9J2GZeyaygF9p
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (markus.elfring[at]web.de)
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.78 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVeF4-0077o9-Vw
X-Mailman-Approved-At: Mon, 04 May 2020 17:03:39 +0000
Subject: Re: [Jfs-discussion] [PATCH] fs: jfs: fix a possible data race in
 metapage_writepage()
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
Cc: Dave Kleikamp <shaggy@kernel.org>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

4oCmCj4gVG8gZml4IHRoaXMgZGF0YSByYWNlLCB0aGUgc3BpbmxvY2sgbXAtPmxvZy0+Z2Nsb2Nr
IGlzIHVzZWQgaW4KPiBtZXRhcGFnZV93cml0ZXBhZ2UoKS4KPgo+IFRoaXMgZGF0YSByYWNlIGlz
IGZvdW5kIGJ5IG91ciBjb25jdXJyZW5jeSBmdXp6ZXIuCgpIb3cgZG8geW91IHRoaW5rIGFib3V0
IGEgd29yZGluZyB2YXJpYW50IGxpa2UgdGhlIGZvbGxvd2luZz8KCiAgIENoYW5nZSBkZXNjcmlw
dGlvbjoKICAg4oCmCiAgIFRoaXMgZGF0YSByYWNlIHdhcyBmb3VuZCBieSBvdXIgY29uY3VycmVu
Y3kgZnV6emVyLgoKICAgVGh1cyB1c2UgdGhlIHNwaW4gbG9jayDigJxtcC0+bG9nLT5nY2xvY2vi
gJ0gZm9yIHRoZSBhc3NpZ25tZW50IG9mCiAgIHRoZSBkYXRhIHN0cnVjdHVyZSBtZW1iZXIg4oCc
bG9nLT5jZmxhZ+KAnSB0byBhIGxvY2FsIHZhcmlhYmxlCiAgIGluIHRoaXMgZnVuY3Rpb24gaW1w
bGVtZW50YXRpb24uCgoKV291bGQgeW91IGxpa2UgdG8gYWRkIHRoZSB0YWcg4oCcRml4ZXPigJ0g
dG8gdGhlIGNvbW1pdCBtZXNzYWdlPwoKUmVnYXJkcywKTWFya3VzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
