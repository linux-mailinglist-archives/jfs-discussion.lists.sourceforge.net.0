Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6743E4BC3
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 20:02:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD9bN-0000QC-Ca; Mon, 09 Aug 2021 18:02:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <slava@dubeyko.com>) id 1mD9bM-0000Q2-34
 for jfs-discussion@lists.sourceforge.net; Mon, 09 Aug 2021 18:02:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Vd5SsqyCkC/WgUABGMpKlM3a+dx8fPcAdSDlrr7kY0=; b=LDqpLL4Prtoq+pMpxsB7fplJ+L
 rhB+bsmPy6xy+XqSC1OMkTRkLPX9Cpx74O1WoIMRiSZXd5Td7TnVAgft6AgbgAPepEDYKCN9li6BI
 qXQpfql6Qn1CnInbdUpEo/z1SGTDtCg8OAKCDrUz9ByadnZ9Nruu0aKSI6FhwWKj1P9I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7Vd5SsqyCkC/WgUABGMpKlM3a+dx8fPcAdSDlrr7kY0=; b=ar7esIFLDuIt5RkpSikc7XH4o6
 AeLR8K1AiG+fZ1cVRFLSWqIc3xYc0rY4hHoCi6iBqjpQaSGdSb5l0b9LWl9ZGkga+aShpUHmYbCQl
 GOr2L9Qd55IXeIn/zSops5BHJf4QCimqE5AKzouXM1B0gp+JTK0eedwd0ySSl6+9lIdg=;
Received: from mail-qt1-f170.google.com ([209.85.160.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mD9bK-0000Bm-B6
 for jfs-discussion@lists.sourceforge.net; Mon, 09 Aug 2021 18:02:16 +0000
Received: by mail-qt1-f170.google.com with SMTP id a12so13235551qtb.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 09 Aug 2021 11:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dubeyko-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=7Vd5SsqyCkC/WgUABGMpKlM3a+dx8fPcAdSDlrr7kY0=;
 b=seUpAt0yXvIirfnAYoUqFGjwoZC+rgyLhRUXlyHk3nDPCzLGfb78L05dlREknR+/XH
 iO69QBKFLuPFL9UszB05RDwabdo0TMVtwRm0dHaqAGTiCJsivHKb2IEQr6zGJAWNkHzT
 OymplCtr3L4tWqzFprpeRpm7lUfzEi4mAKMYbTSTeun3UgJxEtf9LyiJ2EKDWirNC0Bl
 O8QDSpv2LBkMbEgJrr84bAO/JRCYDNIgEV65WmX6Ci9knvEWvmy8Su/1GHvbJO+aynvE
 qMAbzsWh+CdaYqzxlIN4W2esY+q5bXjvs3YHho+kD1ATwChA7LooxcjoKjQBj6h58ZaB
 6TAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=7Vd5SsqyCkC/WgUABGMpKlM3a+dx8fPcAdSDlrr7kY0=;
 b=hLMZtEB7NMtKK4j8t1Tzkd9BSkkQUJ6uZISlncdtBL/L49LlzUvy4TXBo6+wpLycVg
 J8OsQhWXRYg7Gv3HS0VySIHKkmzUj2kw2ISLHDg+C/z7kvXi6dfaIZpRBSrWxGR7dSuv
 Di47QOXTBlyYw6/PVeBDmfY4BSWJZ3qTlWQGUARfaF669z7OLdku4QX/QbHMoq+QevQ1
 YsK0o0lj5RHDcinKUN6HQtHOaSZe/PPQtwg/4bo5AbAQcTOgk4PBxOFsiqQke+wmDajv
 z0zbtTqmmpADpZhSPtC5aIEf8hg0cISFVR8jPbRIq8W8wsS5bxJjovwl7tP4rHsBZXYQ
 QeOw==
X-Gm-Message-State: AOAM532jSB1wJQRRLE1LW4kjedNN6c8By4tWdLNhYpxzZNrN0/Wy6lrw
 KP7VgmuSA6dtYFh+ce7jjm4SuB8yCYgmOoH/7Sw=
X-Google-Smtp-Source: ABdhPJxDxb8Z+GtvraOrw4meO7gw2JzU3WYo0bH8LeIk4lSkmYbk6azkakGXV9z7D9hJ8zUXrToayw==
X-Received: by 2002:a05:620a:1193:: with SMTP id
 b19mr23546498qkk.439.1628530321096; 
 Mon, 09 Aug 2021 10:32:01 -0700 (PDT)
Received: from smtpclient.apple ([2600:1700:42f0:6600:615b:6e84:29a:3bc6])
 by smtp.gmail.com with ESMTPSA id t14sm9006401qkm.7.2021.08.09.10.31.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Aug 2021 10:32:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Viacheslav Dubeyko <slava@dubeyko.com>
In-Reply-To: <20210808162453.1653-12-pali@kernel.org>
Date: Mon, 9 Aug 2021 10:31:55 -0700
Message-Id: <D0302F93-BAE5-48F0-87D0-B68B10D7757B@dubeyko.com>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-12-pali@kernel.org>
To: =?utf-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.170 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.170 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mD9bK-0000Bm-B6
Subject: Re: [Jfs-discussion] [RFC PATCH 11/20] hfs: Explicitly set
 hsb->nls_disk when hsb->nls_io is set
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
 LKML <linux-kernel@vger.kernel.org>, Anton Altaparmakov <anton@tuxera.com>,
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
b3JnPiB3cm90ZToKPiAKPiBJdCBkb2VzIG5vdCBtYWtlIGFueSBzZW5zZSB0byBzZXQgaHNiLT5u
bHNfaW8gKE5MUyBpb2NoYXJzZXQgdXNlZCBiZXR3ZWVuCj4gVkZTIGFuZCBoZnMgZHJpdmVyKSB3
aGVuIGhzYi0+bmxzX2Rpc2sgKE5MUyBjb2RlcGFnZSB1c2VkIGJldHdlZW4gaGZzCj4gZHJpdmVy
IGFuZCBkaXNrKSBpcyBub3Qgc2V0Lgo+IAo+IFJldmVyc2UgZW5naW5lZXJpbmcgZHJpdmVyIGNv
ZGUgc2hvd24gd2hhdCBpcyBkb2luZyBpbiB0aGlzIHNwZWNpYWwgY2FzZToKPiAKPiAgICBXaGVu
IGNvZGVwYWdlIHdhcyBub3QgZGVmaW5lZCBidXQgaW9jaGFyc2V0IHdhcyB0aGVuCj4gICAgaGZz
IGRyaXZlciBjb3BpZWQgOGJpdCBjaGFyYWN0ZXIgZnJvbSBkaXNrIGRpcmVjdGx5IHRvCj4gICAg
MTZiaXQgdW5pY29kZSB3Y2hhcl90IHR5cGUuIFdoaWNoIG1lYW5zIGl0IGRpZCBjb252ZXJzaW9u
Cj4gICAgZnJvbSBMYXRpbjEgKElTTy04ODU5LTEpIHRvIFVuaWNvZGUgYmVjYXVzZSBmaXJzdCAy
NTYKPiAgICBVbmljb2RlIGNvZGUgcG9pbnRzIG1hdGNoZXMgOGJpdCBJU08tODg1OS0xIGNvZGVw
YWdlIHRhYmxlLgo+ICAgIFNvIHdoZW4gaW9jaGFyc2V0IHdhcyBzcGVjaWZpZWQgYW5kIGNvZGVw
YWdlIG5vdCwgdGhlbgo+ICAgIGNvZGVwYWdlIHVzZWQgaW1wbGljaXQgdmFsdWUgImlzbzg4NTkt
MSIuCj4gCj4gU28gd2hlbiBoc2ItPm5sc19kaXNrIGlzIG5vdCBzZXQgYW5kIGhzYi0+bmxzX2lv
IGlzIHRoZW4gZXhwbGljaXRseSBzZXQKPiBoc2ItPm5sc19kaXNrIHRvICJpc284ODU5LTEiLgo+
IAo+IFN1Y2ggc2V0dXAgaXMgb2J2aW91c2x5IGluY29tcGF0aWJsZSB3aXRoIE1hYyBPUyBzeXN0
ZW1zIGFzIHRoZXkgZG8gbm90Cj4gc3VwcG9ydCBpc284ODU5LTEgZW5jb2RpbmcgZm9yIGhmcy4g
U28gcHJpbnQgd2FybmluZyBpbnRvIGRtZXNnIGFib3V0IHRoaXMKPiBmYWN0Lgo+IAo+IEFmdGVy
IHRoaXMgY2hhbmdlIGhzYi0+bmxzX2Rpc2sgaXMgYWx3YXlzIHNldCwgc28gcmVtb3ZlIGNvZGUg
cGF0aHMgZm9yCj4gY2FzZSB3aGVuIGhzYi0+bmxzX2Rpc2sgd2FzIG5vdCBzZXQgYXMgdGhleSBh
cmUgbm90IG5lZWRlZCBhbnltb3JlLgo+IAoKClNvdW5kcyByZWFzb25hYmxlLiBCdXQgaXQgd2ls
bCBiZSBncmVhdCB0byBrbm93IHRoYXQgdGhlIGNoYW5nZSBoYXMgYmVlbiB0ZXN0ZWQgcmVhc29u
YWJseSB3ZWxsLgoKVGhhbmtzLApTbGF2YS4KCgo+IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6Fy
IDxwYWxpQGtlcm5lbC5vcmc+Cj4gLS0tCj4gZnMvaGZzL3N1cGVyLmMgfCAzMSArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4gZnMvaGZzL3RyYW5zLmMgfCAzOCArKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IDIgZmlsZXMgY2hhbmdlZCwgNDUgaW5zZXJ0aW9u
cygrKSwgMjQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2ZzL2hmcy9zdXBlci5jIGIv
ZnMvaGZzL3N1cGVyLmMKPiBpbmRleCAxMmQ5YmFlMzkzNjMuLjg2YmM0Njc0NmM3ZiAxMDA2NDQK
PiAtLS0gYS9mcy9oZnMvc3VwZXIuYwo+ICsrKyBiL2ZzL2hmcy9zdXBlci5jCj4gQEAgLTM1MSw2
ICszNTEsMzcgQEAgc3RhdGljIGludCBwYXJzZV9vcHRpb25zKGNoYXIgKm9wdGlvbnMsIHN0cnVj
dCBoZnNfc2JfaW5mbyAqaHNiKQo+IAkJfQo+IAl9Cj4gCj4gKwlpZiAoaHNiLT5ubHNfaW8gJiYg
IWhzYi0+bmxzX2Rpc2spIHsKPiArCQkvKgo+ICsJCSAqIFByZXZpb3VzIHZlcnNpb24gb2YgaGZz
IGRyaXZlciBkaWQgc29tZXRoaW5nIHVuZXhwZWN0ZWQ6Cj4gKwkJICogV2hlbiBjb2RlcGFnZSB3
YXMgbm90IGRlZmluZWQgYnV0IGlvY2hhcnNldCB3YXMgdGhlbgo+ICsJCSAqIGhmcyBkcml2ZXIg
Y29waWVkIDhiaXQgY2hhcmFjdGVyIGZyb20gZGlzayBkaXJlY3RseSB0bwo+ICsJCSAqIDE2Yml0
IHVuaWNvZGUgd2NoYXJfdCB0eXBlLiBXaGljaCBtZWFucyBpdCBkaWQgY29udmVyc2lvbgo+ICsJ
CSAqIGZyb20gTGF0aW4xIChJU08tODg1OS0xKSB0byBVbmljb2RlIGJlY2F1c2UgZmlyc3QgMjU2
Cj4gKwkJICogVW5pY29kZSBjb2RlIHBvaW50cyBtYXRjaGVzIDhiaXQgSVNPLTg4NTktMSBjb2Rl
cGFnZSB0YWJsZS4KPiArCQkgKiBTbyB3aGVuIGlvY2hhcnNldCB3YXMgc3BlY2lmaWVkIGFuZCBj
b2RlcGFnZSBub3QsIHRoZW4KPiArCQkgKiBjb2RlcGFnZSB1c2VkIGltcGxpY2l0IHZhbHVlICJp
c284ODU5LTEiLgo+ICsJCSAqCj4gKwkJICogVG8gbm90IGNoYW5nZSB0aGlzIHByZXZpb3VzIGRl
ZmF1bHQgYmVoYXZpb3IgYXMgc29tZSB1c2Vycwo+ICsJCSAqIG1heSBkZXBlbmQgb24gaXQsIHdl
IGxvYWQgaXNvODg1OS0xIE5MUyB0YWJsZSBleHBsaWNpdGx5Cj4gKwkJICogdG8gc2ltcGxpZnkg
Y29kZSBhbmQgbWFrZSBpdCBtb3JlIHJlYWJsZSB3aGF0IGhhcHBlbnMuCj4gKwkJICoKPiArCQkg
KiBJbiBjb250ZXh0IG9mIGhmcyBkcml2ZXIgaXQgaXMgcmVhbGx5IHN0cmFuZ2UgdG8gdXNlCj4g
KwkJICogSVNPLTg4NTktMSBjb2RlcGFnZSB0YWJsZSBmb3Igc3RvcmluZyBkYXRhIHRvIGRpc2ss
IGJ1dAo+ICsJCSAqIG5vdGhpbmcgZm9yYmlkcyBpdC4gSnVzdCBpdCBpcyBoaWdobHkgaW5jb21w
YXRpYmxlIHdpdGgKPiArCQkgKiBNYWMgT1Mgc3lzdGVtcy4gU28gdmlhIHByX3dhcm4oKSBpbmZv
cm0gdXNlciB0aGF0IHRoaXMKPiArCQkgKiBpcyBub3QgcHJvYmFibHkgd2hhdCBoZSB3YW50cy4K
PiArCQkgKi8KPiArCQlwcl93YXJuKCJpb2NoYXJzZXQgd2FzIHNwZWNpZmllZCBidXQgY29kZXBh
Z2Ugbm90LCAiCj4gKwkJCSJ1c2luZyBkZWZhdWx0IGNvZGVwYWdlPWlzbzg4NTktMVxuIik7Cj4g
KwkJcHJfd2FybigidGhpcyBkZWZhdWx0IGNvZGVwYWdlPWlzbzg4NTktMSBpcyBpbmNvbXBhdGli
bGUgd2l0aCAiCj4gKwkJCSJNYWMgT1Mgc3lzdGVtcyBhbmQgbWF5IGJlIGNoYW5nZWQgaW4gdGhl
IGZ1dHVyZSIpOwo+ICsJCWhzYi0+bmxzX2Rpc2sgPSBsb2FkX25scygiaXNvODg1OS0xIik7Cj4g
KwkJaWYgKCFoc2ItPm5sc19kaXNrKSB7Cj4gKwkJCXByX2VycigidW5hYmxlIHRvIGxvYWQgaXNv
ODg1OS0xIGNvZGVwYWdlXG4iKTsKPiArCQkJcmV0dXJuIDA7Cj4gKwkJfQo+ICsJfQo+IAlpZiAo
aHNiLT5ubHNfZGlzayAmJiAhaHNiLT5ubHNfaW8pIHsKPiAJCWhzYi0+bmxzX2lvID0gbG9hZF9u
bHNfZGVmYXVsdCgpOwo+IAkJaWYgKCFoc2ItPm5sc19pbykgewo+IGRpZmYgLS1naXQgYS9mcy9o
ZnMvdHJhbnMuYyBiL2ZzL2hmcy90cmFucy5jCj4gaW5kZXggMzlmNWUzNDNiZjRkLi5jNzU2ODJj
NjFiMDYgMTAwNjQ0Cj4gLS0tIGEvZnMvaGZzL3RyYW5zLmMKPiArKysgYi9mcy9oZnMvdHJhbnMu
Ywo+IEBAIC00OCwxOCArNDgsMTMgQEAgaW50IGhmc19tYWMyYXNjKHN0cnVjdCBzdXBlcl9ibG9j
ayAqc2IsIGNoYXIgKm91dCwgY29uc3Qgc3RydWN0IGhmc19uYW1lICppbikKPiAJCXdjaGFyX3Qg
Y2g7Cj4gCj4gCQl3aGlsZSAoc3JjbGVuID4gMCkgewo+IC0JCQlpZiAobmxzX2Rpc2spIHsKPiAt
CQkJCXNpemUgPSBubHNfZGlzay0+Y2hhcjJ1bmkoc3JjLCBzcmNsZW4sICZjaCk7Cj4gLQkJCQlp
ZiAoc2l6ZSA8PSAwKSB7Cj4gLQkJCQkJY2ggPSAnPyc7Cj4gLQkJCQkJc2l6ZSA9IDE7Cj4gLQkJ
CQl9Cj4gLQkJCQlzcmMgKz0gc2l6ZTsKPiAtCQkJCXNyY2xlbiAtPSBzaXplOwo+IC0JCQl9IGVs
c2Ugewo+IC0JCQkJY2ggPSAqc3JjKys7Cj4gLQkJCQlzcmNsZW4tLTsKPiArCQkJc2l6ZSA9IG5s
c19kaXNrLT5jaGFyMnVuaShzcmMsIHNyY2xlbiwgJmNoKTsKPiArCQkJaWYgKHNpemUgPD0gMCkg
ewo+ICsJCQkJY2ggPSAnPyc7Cj4gKwkJCQlzaXplID0gMTsKPiAJCQl9Cj4gKwkJCXNyYyArPSBz
aXplOwo+ICsJCQlzcmNsZW4gLT0gc2l6ZTsKPiAJCQlpZiAoY2ggPT0gJy8nKQo+IAkJCQljaCA9
ICc6JzsKPiAJCQlzaXplID0gbmxzX2lvLT51bmkyY2hhcihjaCwgZHN0LCBkc3RsZW4pOwo+IEBA
IC0xMTksMjAgKzExNCwxNSBAQCB2b2lkIGhmc19hc2MybWFjKHN0cnVjdCBzdXBlcl9ibG9jayAq
c2IsIHN0cnVjdCBoZnNfbmFtZSAqb3V0LCBjb25zdCBzdHJ1Y3QgcXN0cgo+IAkJCXNyY2xlbiAt
PSBzaXplOwo+IAkJCWlmIChjaCA9PSAnOicpCj4gCQkJCWNoID0gJy8nOwo+IC0JCQlpZiAobmxz
X2Rpc2spIHsKPiAtCQkJCXNpemUgPSBubHNfZGlzay0+dW5pMmNoYXIoY2gsIGRzdCwgZHN0bGVu
KTsKPiAtCQkJCWlmIChzaXplIDwgMCkgewo+IC0JCQkJCWlmIChzaXplID09IC1FTkFNRVRPT0xP
TkcpCj4gLQkJCQkJCWdvdG8gb3V0Owo+IC0JCQkJCSpkc3QgPSAnPyc7Cj4gLQkJCQkJc2l6ZSA9
IDE7Cj4gLQkJCQl9Cj4gLQkJCQlkc3QgKz0gc2l6ZTsKPiAtCQkJCWRzdGxlbiAtPSBzaXplOwo+
IC0JCQl9IGVsc2Ugewo+IC0JCQkJKmRzdCsrID0gY2ggPiAweGZmID8gJz8nIDogY2g7Cj4gLQkJ
CQlkc3RsZW4tLTsKPiArCQkJc2l6ZSA9IG5sc19kaXNrLT51bmkyY2hhcihjaCwgZHN0LCBkc3Rs
ZW4pOwo+ICsJCQlpZiAoc2l6ZSA8IDApIHsKPiArCQkJCWlmIChzaXplID09IC1FTkFNRVRPT0xP
TkcpCj4gKwkJCQkJZ290byBvdXQ7Cj4gKwkJCQkqZHN0ID0gJz8nOwo+ICsJCQkJc2l6ZSA9IDE7
Cj4gCQkJfQo+ICsJCQlkc3QgKz0gc2l6ZTsKPiArCQkJZHN0bGVuIC09IHNpemU7Cj4gCQl9Cj4g
CX0gZWxzZSB7Cj4gCQljaGFyIGNoOwo+IC0tIAo+IDIuMjAuMQo+IAoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5n
IGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
