Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C18B63E4B2B
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 19:50:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD9PO-0000A3-W8; Mon, 09 Aug 2021 17:49:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <slava@dubeyko.com>) id 1mD9PO-00009l-9J
 for jfs-discussion@lists.sourceforge.net; Mon, 09 Aug 2021 17:49:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jpfIGx2EzYaUOkGK/YPaLej8O5uKozVOIfYq7wV/cTQ=; b=k5cdduj7k9GQUSWnrCsNsMrhnh
 mffioyVpegsvDpotxw5Im8zuNVVeUBAhq/8FUkQTN/dFGRKs/7sSkuRCcOZBqo5ArIp3WVlXZInO+
 2XDxVuZefnSnkJ7II4Us0dIxeD3cbPWTVa8Mr9kK+V3rXMucgUbgmy8a+ORUzzIPpCFU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jpfIGx2EzYaUOkGK/YPaLej8O5uKozVOIfYq7wV/cTQ=; b=RGfU+Ge2gDQPXFukVHThB0IvU8
 Rz1FJlD5lUor0WIjQvN5ZrW4LrO8VuIodBfTEAGtwin6lpSh1FQVWMSBTvB5Vb28fryywTJ8UzedR
 eiNR4D8rJOYSwRK7yoCiGgv6oUE2+HB3d57Nr1QiCj3v5CkNN10LNoSkx13IWPFuKszc=;
Received: from mail-qk1-f176.google.com ([209.85.222.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mD9PF-000rKj-WA
 for jfs-discussion@lists.sourceforge.net; Mon, 09 Aug 2021 17:49:54 +0000
Received: by mail-qk1-f176.google.com with SMTP id y130so6643794qkb.6
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 09 Aug 2021 10:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dubeyko-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=jpfIGx2EzYaUOkGK/YPaLej8O5uKozVOIfYq7wV/cTQ=;
 b=Tj7RAOmM1x2cET3pYHKg6cLSxjzwEmOYMIpGiMmjmkZHludn4vfEy5dyhIf3mMCMG3
 fndz4DvX7LH/eCPn453Ic3kGMhGSareukjsqhkN3I46oL21egiPsE5H0acE4fUc9ABYB
 iDxJGa8pi5M7Xd7x6CNHNWSYZEJJOxbf8shbEK53dwP+akOODp/rRjWTszoaquPBeXWd
 9hsdgEWotN4xK1oqzCUtlnJ6Bz7hyS/ZWSFZ0SAy+iFX8u75i1wpTtvEtENsVNSVZoBv
 Gt1FGzTBknfRVQLco9vYwXInh8Xy+xBS/7uZQ+zRHb5GazZF2jD9V/r5ozx7q6FBDjnq
 K5OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=jpfIGx2EzYaUOkGK/YPaLej8O5uKozVOIfYq7wV/cTQ=;
 b=BrqFfg1YDMIS18rEpSVmCBNdUdhM7ehGOzt3ph8NfcfMtZ//1MyYGQ0Ek2TEriDS0V
 d4nRNjBAdnZ6C+Z/srwiDcnh7N6VnPiPILTOzao93gYNuGcRwhPph/gk3ZSxNkwtRE0H
 nKSoo77JX82h/VMMcnoSTdCwKgDZvPc8bRAAcYJ4tG9ZkUAc7/SULhmK9Ie2GWW4PiWW
 Td9GffwhavBwKORlnoCZIf5ZKGj59GxU3Z6dqJT7U1oSTn+9g5+A+porn1jfpfqZonMZ
 hWUEnesx38NeTk0Z/oK5It39t0BUcsGE8u1M98TP2rUfv9fYkdPWLeObWzjw9xIVRQUV
 EG1A==
X-Gm-Message-State: AOAM533ebW5C/0seUb09gRIpikC0csQSe8/KfaCkE7WU4TOHvlo7vgx8
 OuX3KkDm7GxgMDQxxNc8rdwTRw==
X-Google-Smtp-Source: ABdhPJz2058dUuvRBlMStlQcuOvywn5SOSNHYuAFINAcfE0R3v56luVgJPI9khFKBeN8xtsVzZxpoA==
X-Received: by 2002:a37:8306:: with SMTP id f6mr24935656qkd.82.1628531380217; 
 Mon, 09 Aug 2021 10:49:40 -0700 (PDT)
Received: from smtpclient.apple ([2600:1700:42f0:6600:615b:6e84:29a:3bc6])
 by smtp.gmail.com with ESMTPSA id a8sm8629059qkn.63.2021.08.09.10.49.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Aug 2021 10:49:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Viacheslav Dubeyko <slava@dubeyko.com>
In-Reply-To: <20210808162453.1653-13-pali@kernel.org>
Date: Mon, 9 Aug 2021 10:49:34 -0700
Message-Id: <4B1987C7-F6D9-4493-ACD0-846B92F86037@dubeyko.com>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-13-pali@kernel.org>
To: =?utf-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.176 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mD9PF-000rKj-WA
Subject: Re: [Jfs-discussion] [RFC PATCH 12/20] hfs: Do not use broken utf8
 NLS table for iocharset=utf8 mount option
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 "Theodore Y . Ts'o" <tytso@mit.edu>, Andrew Morton <akpm@linux-foundation.org>,
 =?utf-8?Q?Marek_Beh=C3=BAn?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Cgo+IE9uIEF1ZyA4LCAyMDIxLCBhdCA5OjI0IEFNLCBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwu
b3JnPiB3cm90ZToKPiAKPiBOTFMgdGFibGUgZm9yIHV0ZjggaXMgYnJva2VuIGFuZCBjYW5ub3Qg
YmUgZml4ZWQuCj4gCj4gU28gaW5zdGVhZCBvZiBicm9rZW4gdXRmOCBubHMgZnVuY3Rpb25zIGNo
YXIydW5pKCkgYW5kIHVuaTJjaGFyKCkgdXNlCj4gZnVuY3Rpb25zIHV0ZjhfdG9fdXRmMzIoKSBh
bmQgdXRmMzJfdG9fdXRmOCgpIHdoaWNoIGltcGxlbWVudHMgY29ycmVjdAo+IGVuY29kaW5nIGFu
ZCBkZWNvZGluZyBiZXR3ZWVuIFVuaWNvZGUgY29kZSBwb2ludHMgYW5kIFVURi04IHNlcXVlbmNl
Lgo+IAo+IFdoZW4gaW9jaGF0c2V0PXV0ZjggaXMgdXNlZCB0aGVuIHNldCBoc2ItPm5sc19pbyB0
byBOVUxMIGFuZCB1c2UgaXQgZm9yCj4gZGlzdGluZ3Vpc2ggYmV0d2VlbiB0aGUgZmFjdCBpZiBO
TFMgdGFibGUgb3IgbmF0aXZlIFVURi04IGZ1bmN0aW9ucyBzaG91bGQKPiBiZSB1c2VkLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gLS0tCj4gZnMv
aGZzL3N1cGVyLmMgfCAzMyArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiBmcy9o
ZnMvdHJhbnMuYyB8IDI0ICsrKysrKysrKysrKysrKysrKysrLS0tLQo+IDIgZmlsZXMgY2hhbmdl
ZCwgNDIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Zz
L2hmcy9zdXBlci5jIGIvZnMvaGZzL3N1cGVyLmMKPiBpbmRleCA4NmJjNDY3NDZjN2YuLjA3NjMw
OGRmNDFjZiAxMDA2NDQKPiAtLS0gYS9mcy9oZnMvc3VwZXIuYwo+ICsrKyBiL2ZzL2hmcy9zdXBl
ci5jCj4gQEAgLTE0OSwxMCArMTQ5LDEzIEBAIHN0YXRpYyBpbnQgaGZzX3Nob3dfb3B0aW9ucyhz
dHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgc3RydWN0IGRlbnRyeSAqcm9vdCkKPiAJCXNlcV9wcmludGYo
c2VxLCAiLHBhcnQ9JXUiLCBzYmktPnBhcnQpOwo+IAlpZiAoc2JpLT5zZXNzaW9uID49IDApCj4g
CQlzZXFfcHJpbnRmKHNlcSwgIixzZXNzaW9uPSV1Iiwgc2JpLT5zZXNzaW9uKTsKPiAtCWlmIChz
YmktPm5sc19kaXNrKQo+ICsJaWYgKHNiaS0+bmxzX2Rpc2spIHsKPiAJCXNlcV9wcmludGYoc2Vx
LCAiLGNvZGVwYWdlPSVzIiwgc2JpLT5ubHNfZGlzay0+Y2hhcnNldCk7CgpNYXliZSwgSSBhbSBt
aXNzaW5nIHNvbWV0aGluZy4gQnV0IHdoZXJlIGlzIHRoZSBjbG9zaW5nIOKAnH3igJ0/CgoKPiAt
CWlmIChzYmktPm5sc19pbykKPiAtCQlzZXFfcHJpbnRmKHNlcSwgIixpb2NoYXJzZXQ9JXMiLCBz
YmktPm5sc19pby0+Y2hhcnNldCk7Cj4gKwkJaWYgKHNiaS0+bmxzX2lvKQo+ICsJCQlzZXFfcHJp
bnRmKHNlcSwgIixpb2NoYXJzZXQ9JXMiLCBzYmktPm5sc19pby0+Y2hhcnNldCk7Cj4gKwkJZWxz
ZQo+ICsJCQlzZXFfcHV0cyhzZXEsICIsaW9jaGFyc2V0PXV0ZjgiKTsKPiArCX0KPiAJaWYgKHNi
aS0+c19xdWlldCkKPiAJCXNlcV9wcmludGYoc2VxLCAiLHF1aWV0Iik7Cj4gCXJldHVybiAwOwo+
IEBAIC0yMjUsNiArMjI4LDcgQEAgc3RhdGljIGludCBwYXJzZV9vcHRpb25zKGNoYXIgKm9wdGlv
bnMsIHN0cnVjdCBoZnNfc2JfaW5mbyAqaHNiKQo+IAljaGFyICpwOwo+IAlzdWJzdHJpbmdfdCBh
cmdzW01BWF9PUFRfQVJHU107Cj4gCWludCB0bXAsIHRva2VuOwo+ICsJaW50IGhhdmVfaW9jaGFy
c2V0OwoKV2hhdOKAmXMgYWJvdXQgYm9vbGVhbiB0eXBlPwoKPiAKPiAJLyogaW5pdGlhbGl6ZSB0
aGUgc2Igd2l0aCBkZWZhdWx0cyAqLwo+IAloc2ItPnNfdWlkID0gY3VycmVudF91aWQoKTsKPiBA
QCAtMjM5LDYgKzI0Myw4IEBAIHN0YXRpYyBpbnQgcGFyc2Vfb3B0aW9ucyhjaGFyICpvcHRpb25z
LCBzdHJ1Y3QgaGZzX3NiX2luZm8gKmhzYikKPiAJaWYgKCFvcHRpb25zKQo+IAkJcmV0dXJuIDE7
Cj4gCj4gKwloYXZlX2lvY2hhcnNldCA9IDA7CgpXaGF04oCZcyBhYm91dCBmYWxzZSBoZXJlPwoK
PiArCj4gCXdoaWxlICgocCA9IHN0cnNlcCgmb3B0aW9ucywgIiwiKSkgIT0gTlVMTCkgewo+IAkJ
aWYgKCEqcCkKPiAJCQljb250aW51ZTsKPiBAQCAtMzMyLDE4ICszMzgsMjIgQEAgc3RhdGljIGlu
dCBwYXJzZV9vcHRpb25zKGNoYXIgKm9wdGlvbnMsIHN0cnVjdCBoZnNfc2JfaW5mbyAqaHNiKQo+
IAkJCWtmcmVlKHApOwo+IAkJCWJyZWFrOwo+IAkJY2FzZSBvcHRfaW9jaGFyc2V0Ogo+IC0JCQlp
ZiAoaHNiLT5ubHNfaW8pIHsKPiArCQkJaWYgKGhhdmVfaW9jaGFyc2V0KSB7Cj4gCQkJCXByX2Vy
cigidW5hYmxlIHRvIGNoYW5nZSBpb2NoYXJzZXRcbiIpOwo+IAkJCQlyZXR1cm4gMDsKPiAJCQl9
Cj4gCQkJcCA9IG1hdGNoX3N0cmR1cCgmYXJnc1swXSk7Cj4gLQkJCWlmIChwKQo+IC0JCQkJaHNi
LT5ubHNfaW8gPSBsb2FkX25scyhwKTsKPiAtCQkJaWYgKCFoc2ItPm5sc19pbykgewo+IC0JCQkJ
cHJfZXJyKCJ1bmFibGUgdG8gbG9hZCBpb2NoYXJzZXQgXCIlc1wiXG4iLCBwKTsKPiAtCQkJCWtm
cmVlKHApOwo+ICsJCQlpZiAoIXApCj4gCQkJCXJldHVybiAwOwo+ICsJCQlpZiAoc3RyY21wKHAs
ICJ1dGY4IikgIT0gMCkgewo+ICsJCQkJaHNiLT5ubHNfaW8gPSBsb2FkX25scyhwKTsKPiArCQkJ
CWlmICghaHNiLT5ubHNfaW8pIHsKPiArCQkJCQlwcl9lcnIoInVuYWJsZSB0byBsb2FkIGlvY2hh
cnNldCBcIiVzXCJcbiIsIHApOwo+ICsJCQkJCWtmcmVlKHApOwo+ICsJCQkJCXJldHVybiAwOwo+
ICsJCQkJfQo+IAkJCX0KPiArCQkJaGF2ZV9pb2NoYXJzZXQgPSAxOwoKV2hhdOKAmXMgYWJvdXQg
dHJ1ZSBoZXJlPwoKPiAJCQlrZnJlZShwKTsKPiAJCQlicmVhazsKPiAJCWRlZmF1bHQ6Cj4gQEAg
LTM1MSw3ICszNjEsNyBAQCBzdGF0aWMgaW50IHBhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywg
c3RydWN0IGhmc19zYl9pbmZvICpoc2IpCj4gCQl9Cj4gCX0KPiAKPiAtCWlmIChoc2ItPm5sc19p
byAmJiAhaHNiLT5ubHNfZGlzaykgewo+ICsJaWYgKGhhdmVfaW9jaGFyc2V0ICYmICFoc2ItPm5s
c19kaXNrKSB7Cj4gCQkvKgo+IAkJICogUHJldmlvdXMgdmVyc2lvbiBvZiBoZnMgZHJpdmVyIGRp
ZCBzb21ldGhpbmcgdW5leHBlY3RlZDoKPiAJCSAqIFdoZW4gY29kZXBhZ2Ugd2FzIG5vdCBkZWZp
bmVkIGJ1dCBpb2NoYXJzZXQgd2FzIHRoZW4KPiBAQCAtMzgyLDcgKzM5Miw4IEBAIHN0YXRpYyBp
bnQgcGFyc2Vfb3B0aW9ucyhjaGFyICpvcHRpb25zLCBzdHJ1Y3QgaGZzX3NiX2luZm8gKmhzYikK
PiAJCQlyZXR1cm4gMDsKPiAJCX0KPiAJfQo+IC0JaWYgKGhzYi0+bmxzX2Rpc2sgJiYgIWhzYi0+
bmxzX2lvKSB7Cj4gKwlpZiAoaHNiLT5ubHNfZGlzayAmJgo+ICsJICAgICFoYXZlX2lvY2hhcnNl
dCAmJiBzdHJjbXAoQ09ORklHX05MU19ERUZBVUxULCAidXRmOCIpICE9IDApIHsKCk1heWJlLCBp
bnRyb2R1Y2UgdGhlIHZhcmlhYmxlIHRvIGNhbGN1bGF0ZSB0aGUgYm9vbGVhbiB2YWx1ZSBoZXJl
PyBUaGVuIGlmIHN0YXRlbWVudCB3aWxsIGxvb2sgbXVjaCBjbGVhbmVyLgoKPiAJCWhzYi0+bmxz
X2lvID0gbG9hZF9ubHNfZGVmYXVsdCgpOwo+IAkJaWYgKCFoc2ItPm5sc19pbykgewo+IAkJCXBy
X2VycigidW5hYmxlIHRvIGxvYWQgZGVmYXVsdCBpb2NoYXJzZXRcbiIpOwo+IGRpZmYgLS1naXQg
YS9mcy9oZnMvdHJhbnMuYyBiL2ZzL2hmcy90cmFucy5jCj4gaW5kZXggYzc1NjgyYzYxYjA2Li5i
ZmY4ZTU0MDAzYWIgMTAwNjQ0Cj4gLS0tIGEvZnMvaGZzL3RyYW5zLmMKPiArKysgYi9mcy9oZnMv
dHJhbnMuYwo+IEBAIC00NCw3ICs0NCw3IEBAIGludCBoZnNfbWFjMmFzYyhzdHJ1Y3Qgc3VwZXJf
YmxvY2sgKnNiLCBjaGFyICpvdXQsIGNvbnN0IHN0cnVjdCBoZnNfbmFtZSAqaW4pCj4gCQlzcmNs
ZW4gPSBIRlNfTkFNRUxFTjsKPiAJZHN0ID0gb3V0Owo+IAlkc3RsZW4gPSBIRlNfTUFYX05BTUVM
RU47Cj4gLQlpZiAobmxzX2lvKSB7Cj4gKwlpZiAobmxzX2Rpc2spIHsKPiAJCXdjaGFyX3QgY2g7
Cj4gCgpJIGNvdWxkIG1pc3Mgc29tZXRoaW5nIGhlcmUuIEJ1dCB3aGF04oCZcyBhYm91dCB0aGUg
Y2xvc2luZyDigJx94oCdPwoKVGhhbmtzLApTbGF2YS4KCj4gCQl3aGlsZSAoc3JjbGVuID4gMCkg
ewo+IEBAIC01Nyw3ICs1NywxMiBAQCBpbnQgaGZzX21hYzJhc2Moc3RydWN0IHN1cGVyX2Jsb2Nr
ICpzYiwgY2hhciAqb3V0LCBjb25zdCBzdHJ1Y3QgaGZzX25hbWUgKmluKQo+IAkJCXNyY2xlbiAt
PSBzaXplOwo+IAkJCWlmIChjaCA9PSAnLycpCj4gCQkJCWNoID0gJzonOwo+IC0JCQlzaXplID0g
bmxzX2lvLT51bmkyY2hhcihjaCwgZHN0LCBkc3RsZW4pOwo+ICsJCQlpZiAobmxzX2lvKQo+ICsJ
CQkJc2l6ZSA9IG5sc19pby0+dW5pMmNoYXIoY2gsIGRzdCwgZHN0bGVuKTsKPiArCQkJZWxzZSBp
ZiAoZHN0bGVuID4gMCkKPiArCQkJCXNpemUgPSB1dGYzMl90b191dGY4KGNoLCBkc3QsIGRzdGxl
bik7Cj4gKwkJCWVsc2UKPiArCQkJCXNpemUgPSAtRU5BTUVUT09MT05HOwo+IAkJCWlmIChzaXpl
IDwgMCkgewo+IAkJCQlpZiAoc2l6ZSA9PSAtRU5BTUVUT09MT05HKQo+IAkJCQkJZ290byBvdXQ7
Cj4gQEAgLTEwMSwxMSArMTA2LDIyIEBAIHZvaWQgaGZzX2FzYzJtYWMoc3RydWN0IHN1cGVyX2Js
b2NrICpzYiwgc3RydWN0IGhmc19uYW1lICpvdXQsIGNvbnN0IHN0cnVjdCBxc3RyCj4gCXNyY2xl
biA9IGluLT5sZW47Cj4gCWRzdCA9IG91dC0+bmFtZTsKPiAJZHN0bGVuID0gSEZTX05BTUVMRU47
Cj4gLQlpZiAobmxzX2lvKSB7Cj4gKwlpZiAobmxzX2Rpc2spIHsKPiAJCXdjaGFyX3QgY2g7Cj4g
KwkJdW5pY29kZV90IHU7Cj4gCj4gCQl3aGlsZSAoc3JjbGVuID4gMCkgewo+IC0JCQlzaXplID0g
bmxzX2lvLT5jaGFyMnVuaShzcmMsIHNyY2xlbiwgJmNoKTsKPiArCQkJaWYgKG5sc19pbykKPiAr
CQkJCXNpemUgPSBubHNfaW8tPmNoYXIydW5pKHNyYywgc3JjbGVuLCAmY2gpOwo+ICsJCQllbHNl
IHsKPiArCQkJCXNpemUgPSB1dGY4X3RvX3V0ZjMyKHN0ciwgc3RybGVuLCAmdSk7Cj4gKwkJCQlp
ZiAoc2l6ZSA+PSAwKSB7Cj4gKwkJCQkJaWYgKHUgPD0gTUFYX1dDSEFSX1QpCj4gKwkJCQkJCWNo
ID0gdTsKPiArCQkJCQllbHNlCj4gKwkJCQkJCXNpemUgPSAtRUlOVkFMOwo+ICsJCQkJfQo+ICsJ
CQl9Cj4gCQkJaWYgKHNpemUgPCAwKSB7Cj4gCQkJCWNoID0gJz8nOwo+IAkJCQlzaXplID0gMTsK
PiAtLSAKPiAyLjIwLjEKPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
