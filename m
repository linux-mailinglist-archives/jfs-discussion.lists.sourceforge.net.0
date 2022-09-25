Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADECC5E92FF
	for <lists+jfs-discussion@lfdr.de>; Sun, 25 Sep 2022 14:12:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ocQUS-00018w-NI;
	Sun, 25 Sep 2022 12:12:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1ocQUN-00018D-Um;
 Sun, 25 Sep 2022 12:12:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/fmnK2/tmvpdHabPH/kK5+7maqrKX2iMBCepm8uXBc8=; b=HqbkqbSdafEkHVRboDL37Nl4IH
 g/+3sANTCYGiJ0iZEkOyTNds6O8TKpkxUIThcLLMMN1/AGK4hlkmqrqp9j8x4+6ej7nVJH1i/unhw
 Ah1fOG3YAtJM+HiwSunHDYJ3oTW91XAOXnkL3FgVIH96nMmbslSuYtQAqn0/b70dXYqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/fmnK2/tmvpdHabPH/kK5+7maqrKX2iMBCepm8uXBc8=; b=OAX4s3tkjduNVtw15xyCrV+/RR
 RUU67HaKsOkwJWhFu4bVVzIeJyenjysIWwB/WBTHe0qey40BUnbTHRAbb5blkhztqo5/JyzOK4YX3
 AGr8BJI+mzClFmL0UUiA2HgoltCF1mwJyqXC/1ghiqL2aBoO3ZddDuP+pXSXjcRkUETc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ocQUZ-002Gnb-RT; Sun, 25 Sep 2022 12:12:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7423460DD4;
 Sun, 25 Sep 2022 12:12:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AEDCC433C1;
 Sun, 25 Sep 2022 12:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664107929;
 bh=3QpOnBvdxL0+AZ41OUJ8Z8CAtbcfHcNF9j/3kuh7UJk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lz9HACjWXnyFes4+TEG3Arf2V68bAcMUyphkg4Llv+pb+zp36wX9Rz5y7xi5jtDZz
 Qv9rYHiYGWufdfv65edKRBRMnsHuPrpBUIwalal9lh9I5n9ybpKOtQ1Q8IK8Fxwei/
 N952N2z2tVxyr5EMlW24Qw7wBYvWhXJsfSAgj9IXe6Zqd4J8MIhWoQeFAKo/jTnlE9
 Da9uhOaJaV0NU3ZM8S0974OyiRFq6/ZCqQwlF+j9tED7MSsYzhGAuPvWAjBsD1dn3k
 Xy136JBposGdTKPbBeyGC4Mj43/VJftoEKb2VlqnFUKp0XRcoJi7hNo9go+w78z4Pc
 KS9xTt0Voa8vQ==
Received: by pali.im (Postfix)
 id C06F2EE2; Sun, 25 Sep 2022 14:12:06 +0200 (CEST)
Date: Sun, 25 Sep 2022 14:12:06 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Viacheslav Dubeyko <slava@dubeyko.com>
Message-ID: <20220925121206.glqeuptele746qsp@pali>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-14-pali@kernel.org>
 <4D2445C9-7D4D-438A-964C-5B8F46BC15B5@dubeyko.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D2445C9-7D4D-438A-964C-5B8F46BC15B5@dubeyko.com>
User-Agent: NeoMutt/20180716
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello! On Monday 09 August 2021 10:42:02 Viacheslav Dubeyko
    wrote: > > On Aug 8, 2021, at 9:24 AM, Pali Rohár <pali@kernel.org> wrote:
    > > > > NLS table for utf8 is broken and cannot be fixed. > > > > So in [...]
    
 
 Content analysis details:   (-5.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ocQUZ-002Gnb-RT
Subject: Re: [Jfs-discussion] [RFC PATCH 13/20] hfsplus: Do not use broken
 utf8 NLS table for iocharset=utf8 mount option
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
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGVsbG8hCgpPbiBNb25kYXkgMDkgQXVndXN0IDIwMjEgMTA6NDI6MDIgVmlhY2hlc2xhdiBEdWJl
eWtvIHdyb3RlOgo+ID4gT24gQXVnIDgsIDIwMjEsIGF0IDk6MjQgQU0sIFBhbGkgUm9ow6FyIDxw
YWxpQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gCj4gPiBOTFMgdGFibGUgZm9yIHV0ZjggaXMgYnJv
a2VuIGFuZCBjYW5ub3QgYmUgZml4ZWQuCj4gPiAKPiA+IFNvIGluc3RlYWQgb2YgYnJva2VuIHV0
ZjggbmxzIGZ1bmN0aW9ucyBjaGFyMnVuaSgpIGFuZCB1bmkyY2hhcigpIHVzZQo+ID4gZnVuY3Rp
b25zIHV0ZjhfdG9fdXRmMzIoKSBhbmQgdXRmMzJfdG9fdXRmOCgpIHdoaWNoIGltcGxlbWVudHMg
Y29ycmVjdAo+ID4gZW5jb2RpbmcgYW5kIGRlY29kaW5nIGJldHdlZW4gVW5pY29kZSBjb2RlIHBv
aW50cyBhbmQgVVRGLTggc2VxdWVuY2UuCj4gPiAKPiA+IE5vdGUgdGhhdCB0aGlzIGZzIGRyaXZl
ciBkb2VzIG5vdCBzdXBwb3J0IGZ1bGwgVW5pY29kZSByYW5nZSwgc3BlY2lhbGx5Cj4gPiBVVEYt
MTYgc3Vycm9nYXRlIHBhaXJzIGFyZSB1bnN1cHBvcnRlZC4gVGhpcyBwYXRjaCBkb2VzIG5vdCBj
aGFuZ2UgdGhpcwo+ID4gbGltaXRhdGlvbiBhbmQgc3VwcG9ydCBmb3IgVVRGLTE2IHN1cnJvZ2F0
ZSBwYWlycyBzdGF5IHVuaW1wbGVtZW50ZWQuCj4gPiAKPiA+IFdoZW4gaW9jaGF0c2V0PXV0Zjgg
aXMgdXNlZCB0aGVuIHNldCBzYmktPm5scyB0byBOVUxMIGFuZCB1c2UgaXQgZm9yCj4gPiBkaXN0
aW5ndWlzaCBiZXR3ZWVuIHRoZSBmYWN0IGlmIE5MUyB0YWJsZSBvciBuYXRpdmUgVVRGLTggZnVu
Y3Rpb25zIHNob3VsZAo+ID4gYmUgdXNlZC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogUGFsaSBS
b2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4gZnMvaGZzcGx1cy9kaXIuYyAgICAg
ICAgICAgIHwgIDYgKysrKy0tCj4gPiBmcy9oZnNwbHVzL29wdGlvbnMuYyAgICAgICAgfCAzMiAr
KysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+ID4gZnMvaGZzcGx1cy9zdXBlci5jICAg
ICAgICAgIHwgIDcgKy0tLS0tLQo+ID4gZnMvaGZzcGx1cy91bmljb2RlLmMgICAgICAgIHwgMzEg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+ID4gZnMvaGZzcGx1cy94YXR0ci5jICAg
ICAgICAgIHwgMTQgKysrKysrKysrLS0tLS0KPiA+IGZzL2hmc3BsdXMveGF0dHJfc2VjdXJpdHku
YyB8ICAzICsrLQo+ID4gNiBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspLCAzMSBkZWxl
dGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2ZzL2hmc3BsdXMvZGlyLmMgYi9mcy9oZnNw
bHVzL2Rpci5jCj4gPiBpbmRleCA4NDcxNGJiY2NjMTIuLjJjYWYwY2Q4MjIyMSAxMDA2NDQKPiA+
IC0tLSBhL2ZzL2hmc3BsdXMvZGlyLmMKPiA+ICsrKyBiL2ZzL2hmc3BsdXMvZGlyLmMKPiA+IEBA
IC0xNDQsNyArMTQ0LDggQEAgc3RhdGljIGludCBoZnNwbHVzX3JlYWRkaXIoc3RydWN0IGZpbGUg
KmZpbGUsIHN0cnVjdCBkaXJfY29udGV4dCAqY3R4KQo+ID4gCWVyciA9IGhmc19maW5kX2luaXQo
SEZTUExVU19TQihzYiktPmNhdF90cmVlLCAmZmQpOwo+ID4gCWlmIChlcnIpCj4gPiAJCXJldHVy
biBlcnI7Cj4gPiAtCXN0cmJ1ZiA9IGttYWxsb2MoTkxTX01BWF9DSEFSU0VUX1NJWkUgKiBIRlNQ
TFVTX01BWF9TVFJMRU4gKyAxLCBHRlBfS0VSTkVMKTsKPiA+ICsJc3RyYnVmID0ga21hbGxvYygo
SEZTUExVU19TQihzYiktPm5scyA/IE5MU19NQVhfQ0hBUlNFVF9TSVpFIDogNCkgKgo+ID4gKwkJ
CUhGU1BMVVNfTUFYX1NUUkxFTiArIDEsIEdGUF9LRVJORUwpOwo+IAo+IE1heWJlLCBpbnRyb2R1
Y2Ugc29tZSB2YXJpYWJsZSB0aGF0IHdpbGwgY29udGFpbiB0aGUgbGVuZ3RoIGNhbGN1bGF0aW9u
PwoKT2shIEkgY2FuIGludHJvZHVjZSB2YXJpYWJsZSB3aXRoIGNhbGN1bGF0ZWQgbGVuZ3RoIGlu
dG8gYWxsIHBsYWNlcy4KCj4gPiAJaWYgKCFzdHJidWYpIHsKPiA+IAkJZXJyID0gLUVOT01FTTsK
PiA+IAkJZ290byBvdXQ7Cj4gPiBAQCAtMjAzLDcgKzIwNCw4IEBAIHN0YXRpYyBpbnQgaGZzcGx1
c19yZWFkZGlyKHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3QgZGlyX2NvbnRleHQgKmN0eCkKPiA+
IAkJaGZzX2Jub2RlX3JlYWQoZmQuYm5vZGUsICZlbnRyeSwgZmQuZW50cnlvZmZzZXQsCj4gPiAJ
CQlmZC5lbnRyeWxlbmd0aCk7Cj4gPiAJCXR5cGUgPSBiZTE2X3RvX2NwdShlbnRyeS50eXBlKTsK
PiA+IC0JCWxlbiA9IE5MU19NQVhfQ0hBUlNFVF9TSVpFICogSEZTUExVU19NQVhfU1RSTEVOOwo+
ID4gKwkJbGVuID0gKEhGU1BMVVNfU0Ioc2IpLT5ubHMgPyBOTFNfTUFYX0NIQVJTRVRfU0laRSA6
IDQpICoKPiA+ICsJCSAgICAgIEhGU1BMVVNfTUFYX1NUUkxFTjsKPiA+IAkJZXJyID0gaGZzcGx1
c191bmkyYXNjKHNiLCAmZmQua2V5LT5jYXQubmFtZSwgc3RyYnVmLCAmbGVuKTsKPiA+IAkJaWYg
KGVycikKPiA+IAkJCWdvdG8gb3V0Owo+ID4gZGlmZiAtLWdpdCBhL2ZzL2hmc3BsdXMvb3B0aW9u
cy5jIGIvZnMvaGZzcGx1cy9vcHRpb25zLmMKPiA+IGluZGV4IGE5NzU1NDhmNmI5MS4uMTZjMDhj
YjVjNGY4IDEwMDY0NAo+ID4gLS0tIGEvZnMvaGZzcGx1cy9vcHRpb25zLmMKPiA+ICsrKyBiL2Zz
L2hmc3BsdXMvb3B0aW9ucy5jCj4gPiBAQCAtMTA0LDYgKzEwNCw5IEBAIGludCBoZnNwbHVzX3Bh
cnNlX29wdGlvbnMoY2hhciAqaW5wdXQsIHN0cnVjdCBoZnNwbHVzX3NiX2luZm8gKnNiaSkKPiA+
IAljaGFyICpwOwo+ID4gCXN1YnN0cmluZ190IGFyZ3NbTUFYX09QVF9BUkdTXTsKPiA+IAlpbnQg
dG1wLCB0b2tlbjsKPiA+ICsJaW50IGhhdmVfaW9jaGFyc2V0Owo+ID4gKwo+ID4gKwloYXZlX2lv
Y2hhcnNldCA9IDA7Cj4gCj4gV2hhdOKAmXMgYWJvdXQgYm9vbGVhbiB0eXBlIGFuZCB0byB1c2Ug
dHJ1ZS9mYWxzZT8KCk9rLiBJIGNhbiBjaGFuZ2UgdHlwZSB0byAiYm9vbCIgYW5kIHVzZSAidHJ1
ZSIvImZhbHNlIiB2YWx1ZXMuCgo+ID4gCj4gPiAJaWYgKCFpbnB1dCkKPiA+IAkJZ290byBkb25l
Owo+ID4gQEAgLTE3MSwyMCArMTc0LDI0IEBAIGludCBoZnNwbHVzX3BhcnNlX29wdGlvbnMoY2hh
ciAqaW5wdXQsIHN0cnVjdCBoZnNwbHVzX3NiX2luZm8gKnNiaSkKPiA+IAkJCXByX3dhcm4oIm9w
dGlvbiBubHM9IGlzIGRlcHJlY2F0ZWQsIHVzZSBpb2NoYXJzZXQ9XG4iKTsKPiA+IAkJCS8qIGZh
bGx0aHJvdWdoICovCj4gPiAJCWNhc2Ugb3B0X2lvY2hhcnNldDoKPiA+IC0JCQlpZiAoc2JpLT5u
bHMpIHsKPiA+ICsJCQlpZiAoaGF2ZV9pb2NoYXJzZXQpIHsKPiA+IAkJCQlwcl9lcnIoInVuYWJs
ZSB0byBjaGFuZ2UgbmxzIG1hcHBpbmdcbiIpOwo+ID4gCQkJCXJldHVybiAwOwo+ID4gCQkJfQo+
ID4gCQkJcCA9IG1hdGNoX3N0cmR1cCgmYXJnc1swXSk7Cj4gPiAtCQkJaWYgKHApCj4gPiAtCQkJ
CXNiaS0+bmxzID0gbG9hZF9ubHMocCk7Cj4gPiAtCQkJaWYgKCFzYmktPm5scykgewo+ID4gLQkJ
CQlwcl9lcnIoInVuYWJsZSB0byBsb2FkIG5scyBtYXBwaW5nIFwiJXNcIlxuIiwKPiA+IC0JCQkJ
ICAgICAgIHApOwo+ID4gLQkJCQlrZnJlZShwKTsKPiA+ICsJCQlpZiAoIXApCj4gPiAJCQkJcmV0
dXJuIDA7Cj4gPiArCQkJaWYgKHN0cmNtcChwLCAidXRmOCIpICE9IDApIHsKPiA+ICsJCQkJc2Jp
LT5ubHMgPSBsb2FkX25scyhwKTsKPiA+ICsJCQkJaWYgKCFzYmktPm5scykgewo+ID4gKwkJCQkJ
cHJfZXJyKCJ1bmFibGUgdG8gbG9hZCBubHMgbWFwcGluZyAiCj4gPiArCQkJCQkJIlwiJXNcIlxu
IiwgcCk7Cj4gPiArCQkJCQlrZnJlZShwKTsKPiA+ICsJCQkJCXJldHVybiAwOwo+ID4gKwkJCQl9
Cj4gPiAJCQl9Cj4gPiAJCQlrZnJlZShwKTsKPiA+ICsJCQloYXZlX2lvY2hhcnNldCA9IDE7Cj4g
Cj4gRGl0dG8uIFdoYXTigJlzIGFib3V0IHRydWUgaGVyZT8KPiAKPiA+IAkJCWJyZWFrOwo+ID4g
CQljYXNlIG9wdF9kZWNvbXBvc2U6Cj4gPiAJCQljbGVhcl9iaXQoSEZTUExVU19TQl9OT0RFQ09N
UE9TRSwgJnNiaS0+ZmxhZ3MpOwouLi4KPiA+IEBAIC0yNTYsNyArMjY2LDIyIEBAIGludCBoZnNw
bHVzX3VuaTJhc2Moc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwKPiA+IHN0YXRpYyBpbmxpbmUgaW50
IGFzYzJ1bmljaGFyKHN0cnVjdCBzdXBlcl9ibG9jayAqc2IsIGNvbnN0IGNoYXIgKmFzdHIsIGlu
dCBsZW4sCj4gPiAJCQkgICAgICB3Y2hhcl90ICp1YykKPiA+IHsKPiA+IC0JaW50IHNpemUgPSBI
RlNQTFVTX1NCKHNiKS0+bmxzLT5jaGFyMnVuaShhc3RyLCBsZW4sIHVjKTsKPiA+ICsJc3RydWN0
IG5sc190YWJsZSAqbmxzID0gSEZTUExVU19TQihzYiktPm5sczsKPiA+ICsJdW5pY29kZV90IHU7
Cj4gPiArCWludCBzaXplOwo+ID4gKwo+ID4gKwlpZiAobmxzKQo+ID4gKwkJc2l6ZSA9IG5scy0+
Y2hhcjJ1bmkoYXN0ciwgbGVuLCB1Yyk7Cj4gPiArCWVsc2Ugewo+ID4gKwkJc2l6ZSA9IHV0Zjhf
dG9fdXRmMzIoYXN0ciwgbGVuLCAmdSk7Cj4gPiArCQlpZiAoc2l6ZSA+PSAwKSB7Cj4gPiArCQkJ
LyogVE9ETzogQWRkIHN1cHBvcnQgZm9yIFVURi0xNiBzdXJyb2dhdGUgcGFpcnMgKi8KPiAKPiBI
YXZlIHlvdSBmb3Jnb3QgdG8gZGVsZXRlIHRoaXMgc3RyaW5nPyBPciBkbyB5b3UgcGxhbiB0byBp
bXBsZW1lbnQgdGhpcz8KCk5vLiBJIGhhdmUgbm90IGZvcmdvdC4gSW4gY3VycmVudCB2ZXJzaW9u
IHRoZXJlIGlzIG1pc3Npbmcgc3VwcG9ydCBmb3IKVVRGLTE2IHN1cnJvZ2F0ZSBwYWlycyBhbmQg
dGhpcyBteSBwYXRjaCBzdGlsbCBkb2VzIG5vdCBpbXBsZW1lbnQgaXQuCgpTbyB0aGlzIGlzIGtp
bmQgYSBpc3N1ZSAvIGJ1ZyBpbiB0aGUgZHJpdmVyIGFuZCBhdCBsZWFzdCBpdCBzaG91bGQgYmUK
ZG9jdW1lbnRlZC4gU28gcmVhZGVyIG9mIHRoaXMgY29kZSB3b3VsZCBrbm93IGl0IGFuZCBtYXli
ZSBzb21lYm9keSBpbgpmdXR1cmUgd2lsbCBpbXBsZW1lbnQgaXQuCgo+ID4gKwkJCWlmICh1IDw9
IE1BWF9XQ0hBUl9UKQo+ID4gKwkJCQkqdWMgPSB1Owo+ID4gKwkJCWVsc2UKPiA+ICsJCQkJc2l6
ZSA9IC1FSU5WQUw7Cj4gPiArCQl9Cj4gPiArCX0KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRp
c2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
