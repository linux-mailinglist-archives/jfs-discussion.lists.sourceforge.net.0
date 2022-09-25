Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C37BB5E92F4
	for <lists+jfs-discussion@lfdr.de>; Sun, 25 Sep 2022 14:07:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ocQPe-0000z4-Cd;
	Sun, 25 Sep 2022 12:07:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1ocQPc-0000yu-U8;
 Sun, 25 Sep 2022 12:07:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ousKuphoz7vIFh7EoI7vYdKMuzVAbJvZWp9a8/bk84=; b=NzDfVrz1BqS2N6aFhEQitQEomx
 MtqzmDdv7xxXZijkKRByOteXRheZh3QmEur3SacGScFiU7q+xRjVQ+nVHuS+qsPRHk5Gm1r+N2Qm/
 esnc8CulAeaYzzc4osD+84gF4rh7ij0Xft/rqTKaZmXVhLZSe/jXFAYfcvWU7YfxuhtU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9ousKuphoz7vIFh7EoI7vYdKMuzVAbJvZWp9a8/bk84=; b=VEztW5XQYirdmbEsJZVZmY+rAl
 MOfEtKeeGHMs/oVQBV6/YlOPP3P4OlVEo/OHKVgDL3cHdXZGF2O1M8B44vq31zzfBLacOcw/a6fdO
 rbVBIfZnVHx+pdvC4g7t2VoJ+vZsIr2ahwVblyalOQ4/xdgTre+nJvLmez1BWF4EOyfY=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ocQPZ-0000WN-TY; Sun, 25 Sep 2022 12:07:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4AAB5B80953;
 Sun, 25 Sep 2022 12:06:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F033C433C1;
 Sun, 25 Sep 2022 12:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664107610;
 bh=BCVRBXCetpvd2YGmBGtkM+UvNAeY+VGeEDAT0/lc8fs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PU4HPuu6PfX16bgcSLQO2UdKyKi6k7hidu67KPybnHdBqUDMS2nEB0bskWnITbEI1
 NiISQOj9XmDLK220C1XUdj2ECXol9pSIXpNbkClHluegVM1oYYycVNx99kVXgLukx9
 EPU/1LXeHiI6+8eZAFXHudHaHWa288mSa9ZlipLUF0IJHUFEeaqsCrVF5rJI2V2ePq
 k6UEXIz3RPnZLYdgnY9JssVFw+sQY5d4XVdYVey6CXQowDvO4T3RG/rpTDiF6CW6C/
 ppMcYGtCVWe5d50KxhotzIEYWi4VS/pvfEz2ckZhNP6lcyEirgox4/ytck47LAc95A
 OEvoEnYdqANEA==
Received: by pali.im (Postfix)
 id 6D0D1EE2; Sun, 25 Sep 2022 14:06:46 +0200 (CEST)
Date: Sun, 25 Sep 2022 14:06:46 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Viacheslav Dubeyko <slava@dubeyko.com>
Message-ID: <20220925120646.dfkofrka74blwrwb@pali>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-13-pali@kernel.org>
 <4B1987C7-F6D9-4493-ACD0-846B92F86037@dubeyko.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4B1987C7-F6D9-4493-ACD0-846B92F86037@dubeyko.com>
User-Agent: NeoMutt/20180716
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello! Sorry for a longer delay. Below are comments. On Monday
    09 August 2021 10:49:34 Viacheslav Dubeyko wrote: > > On Aug 8, 2021, at
   9:24 AM, Pali Rohár <pali@kernel.org> wrote: > > > > NLS table for utf8 is
    broken and cannot be fixed. > > > > So in [...] 
 
 Content analysis details:   (-5.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.68.75 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ocQPZ-0000WN-TY
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
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGVsbG8hIFNvcnJ5IGZvciBhIGxvbmdlciBkZWxheS4gQmVsb3cgYXJlIGNvbW1lbnRzLgoKT24g
TW9uZGF5IDA5IEF1Z3VzdCAyMDIxIDEwOjQ5OjM0IFZpYWNoZXNsYXYgRHViZXlrbyB3cm90ZToK
PiA+IE9uIEF1ZyA4LCAyMDIxLCBhdCA5OjI0IEFNLCBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwu
b3JnPiB3cm90ZToKPiA+IAo+ID4gTkxTIHRhYmxlIGZvciB1dGY4IGlzIGJyb2tlbiBhbmQgY2Fu
bm90IGJlIGZpeGVkLgo+ID4gCj4gPiBTbyBpbnN0ZWFkIG9mIGJyb2tlbiB1dGY4IG5scyBmdW5j
dGlvbnMgY2hhcjJ1bmkoKSBhbmQgdW5pMmNoYXIoKSB1c2UKPiA+IGZ1bmN0aW9ucyB1dGY4X3Rv
X3V0ZjMyKCkgYW5kIHV0ZjMyX3RvX3V0ZjgoKSB3aGljaCBpbXBsZW1lbnRzIGNvcnJlY3QKPiA+
IGVuY29kaW5nIGFuZCBkZWNvZGluZyBiZXR3ZWVuIFVuaWNvZGUgY29kZSBwb2ludHMgYW5kIFVU
Ri04IHNlcXVlbmNlLgo+ID4gCj4gPiBXaGVuIGlvY2hhdHNldD11dGY4IGlzIHVzZWQgdGhlbiBz
ZXQgaHNiLT5ubHNfaW8gdG8gTlVMTCBhbmQgdXNlIGl0IGZvcgo+ID4gZGlzdGluZ3Vpc2ggYmV0
d2VlbiB0aGUgZmFjdCBpZiBOTFMgdGFibGUgb3IgbmF0aXZlIFVURi04IGZ1bmN0aW9ucyBzaG91
bGQKPiA+IGJlIHVzZWQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxp
QGtlcm5lbC5vcmc+Cj4gPiAtLS0KPiA+IGZzL2hmcy9zdXBlci5jIHwgMzMgKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tCj4gPiBmcy9oZnMvdHJhbnMuYyB8IDI0ICsrKysrKysrKysr
KysrKysrKysrLS0tLQo+ID4gMiBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAxNSBk
ZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2ZzL2hmcy9zdXBlci5jIGIvZnMvaGZz
L3N1cGVyLmMKPiA+IGluZGV4IDg2YmM0Njc0NmM3Zi4uMDc2MzA4ZGY0MWNmIDEwMDY0NAo+ID4g
LS0tIGEvZnMvaGZzL3N1cGVyLmMKPiA+ICsrKyBiL2ZzL2hmcy9zdXBlci5jCj4gPiBAQCAtMTQ5
LDEwICsxNDksMTMgQEAgc3RhdGljIGludCBoZnNfc2hvd19vcHRpb25zKHN0cnVjdCBzZXFfZmls
ZSAqc2VxLCBzdHJ1Y3QgZGVudHJ5ICpyb290KQo+ID4gCQlzZXFfcHJpbnRmKHNlcSwgIixwYXJ0
PSV1Iiwgc2JpLT5wYXJ0KTsKPiA+IAlpZiAoc2JpLT5zZXNzaW9uID49IDApCj4gPiAJCXNlcV9w
cmludGYoc2VxLCAiLHNlc3Npb249JXUiLCBzYmktPnNlc3Npb24pOwo+ID4gLQlpZiAoc2JpLT5u
bHNfZGlzaykKPiA+ICsJaWYgKHNiaS0+bmxzX2Rpc2spIHsKPiA+IAkJc2VxX3ByaW50ZihzZXEs
ICIsY29kZXBhZ2U9JXMiLCBzYmktPm5sc19kaXNrLT5jaGFyc2V0KTsKPiAKPiBNYXliZSwgSSBh
bSBtaXNzaW5nIHNvbWV0aGluZy4gQnV0IHdoZXJlIGlzIHRoZSBjbG9zaW5nIOKAnH3igJ0/CgpT
ZWUgYmVsb3cuLi4KCj4gCj4gPiAtCWlmIChzYmktPm5sc19pbykKPiA+IC0JCXNlcV9wcmludGYo
c2VxLCAiLGlvY2hhcnNldD0lcyIsIHNiaS0+bmxzX2lvLT5jaGFyc2V0KTsKPiA+ICsJCWlmIChz
YmktPm5sc19pbykKPiA+ICsJCQlzZXFfcHJpbnRmKHNlcSwgIixpb2NoYXJzZXQ9JXMiLCBzYmkt
Pm5sc19pby0+Y2hhcnNldCk7Cj4gPiArCQllbHNlCj4gPiArCQkJc2VxX3B1dHMoc2VxLCAiLGlv
Y2hhcnNldD11dGY4Iik7Cj4gPiArCX0KCiAgICAgICAgXgouLi4gQ2xvc2luZyAifSIgaXMgbWFy
a2VkIGFib3ZlLgoKPiA+IAlpZiAoc2JpLT5zX3F1aWV0KQo+ID4gCQlzZXFfcHJpbnRmKHNlcSwg
IixxdWlldCIpOwo+ID4gCXJldHVybiAwOwo+ID4gQEAgLTIyNSw2ICsyMjgsNyBAQCBzdGF0aWMg
aW50IHBhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywgc3RydWN0IGhmc19zYl9pbmZvICpoc2Ip
Cj4gPiAJY2hhciAqcDsKPiA+IAlzdWJzdHJpbmdfdCBhcmdzW01BWF9PUFRfQVJHU107Cj4gPiAJ
aW50IHRtcCwgdG9rZW47Cj4gPiArCWludCBoYXZlX2lvY2hhcnNldDsKPiAKPiBXaGF04oCZcyBh
Ym91dCBib29sZWFuIHR5cGU/CgpPayEgTm8gcHJvYmxlbSwgSSBjYW4gdXNlICJib29sIiB0eXBl
LiBKdXN0IEkgd2FzIGluIGltcHJlc3Npb24gdGhhdApjb2RlIHN0eWxlIG9mIHRoaXMgZHJpdmVy
IGlzIHRvIHVzZSAiaW50IiB0eXBlIGFsc28gZm9yIGJvb2xlYW5zLgpTYW1lIGZvciAiZmFsc2Ui
IGFuZCAidHJ1ZSIgYXMgeW91IG1lbnRpb25lZCBiZWxvdy4KCj4gPiAKPiA+IAkvKiBpbml0aWFs
aXplIHRoZSBzYiB3aXRoIGRlZmF1bHRzICovCj4gPiAJaHNiLT5zX3VpZCA9IGN1cnJlbnRfdWlk
KCk7Cj4gPiBAQCAtMjM5LDYgKzI0Myw4IEBAIHN0YXRpYyBpbnQgcGFyc2Vfb3B0aW9ucyhjaGFy
ICpvcHRpb25zLCBzdHJ1Y3QgaGZzX3NiX2luZm8gKmhzYikKPiA+IAlpZiAoIW9wdGlvbnMpCj4g
PiAJCXJldHVybiAxOwo+ID4gCj4gPiArCWhhdmVfaW9jaGFyc2V0ID0gMDsKPiAKPiBXaGF04oCZ
cyBhYm91dCBmYWxzZSBoZXJlPwo+IAo+ID4gKwo+ID4gCXdoaWxlICgocCA9IHN0cnNlcCgmb3B0
aW9ucywgIiwiKSkgIT0gTlVMTCkgewo+ID4gCQlpZiAoISpwKQo+ID4gCQkJY29udGludWU7Cj4g
PiBAQCAtMzMyLDE4ICszMzgsMjIgQEAgc3RhdGljIGludCBwYXJzZV9vcHRpb25zKGNoYXIgKm9w
dGlvbnMsIHN0cnVjdCBoZnNfc2JfaW5mbyAqaHNiKQo+ID4gCQkJa2ZyZWUocCk7Cj4gPiAJCQli
cmVhazsKPiA+IAkJY2FzZSBvcHRfaW9jaGFyc2V0Ogo+ID4gLQkJCWlmIChoc2ItPm5sc19pbykg
ewo+ID4gKwkJCWlmIChoYXZlX2lvY2hhcnNldCkgewo+ID4gCQkJCXByX2VycigidW5hYmxlIHRv
IGNoYW5nZSBpb2NoYXJzZXRcbiIpOwo+ID4gCQkJCXJldHVybiAwOwo+ID4gCQkJfQo+ID4gCQkJ
cCA9IG1hdGNoX3N0cmR1cCgmYXJnc1swXSk7Cj4gPiAtCQkJaWYgKHApCj4gPiAtCQkJCWhzYi0+
bmxzX2lvID0gbG9hZF9ubHMocCk7Cj4gPiAtCQkJaWYgKCFoc2ItPm5sc19pbykgewo+ID4gLQkJ
CQlwcl9lcnIoInVuYWJsZSB0byBsb2FkIGlvY2hhcnNldCBcIiVzXCJcbiIsIHApOwo+ID4gLQkJ
CQlrZnJlZShwKTsKPiA+ICsJCQlpZiAoIXApCj4gPiAJCQkJcmV0dXJuIDA7Cj4gPiArCQkJaWYg
KHN0cmNtcChwLCAidXRmOCIpICE9IDApIHsKPiA+ICsJCQkJaHNiLT5ubHNfaW8gPSBsb2FkX25s
cyhwKTsKPiA+ICsJCQkJaWYgKCFoc2ItPm5sc19pbykgewo+ID4gKwkJCQkJcHJfZXJyKCJ1bmFi
bGUgdG8gbG9hZCBpb2NoYXJzZXQgXCIlc1wiXG4iLCBwKTsKPiA+ICsJCQkJCWtmcmVlKHApOwo+
ID4gKwkJCQkJcmV0dXJuIDA7Cj4gPiArCQkJCX0KPiA+IAkJCX0KPiA+ICsJCQloYXZlX2lvY2hh
cnNldCA9IDE7Cj4gCj4gV2hhdOKAmXMgYWJvdXQgdHJ1ZSBoZXJlPwo+IAo+ID4gCQkJa2ZyZWUo
cCk7Cj4gPiAJCQlicmVhazsKPiA+IAkJZGVmYXVsdDoKPiA+IEBAIC0zNTEsNyArMzYxLDcgQEAg
c3RhdGljIGludCBwYXJzZV9vcHRpb25zKGNoYXIgKm9wdGlvbnMsIHN0cnVjdCBoZnNfc2JfaW5m
byAqaHNiKQo+ID4gCQl9Cj4gPiAJfQo+ID4gCj4gPiAtCWlmIChoc2ItPm5sc19pbyAmJiAhaHNi
LT5ubHNfZGlzaykgewo+ID4gKwlpZiAoaGF2ZV9pb2NoYXJzZXQgJiYgIWhzYi0+bmxzX2Rpc2sp
IHsKPiA+IAkJLyoKPiA+IAkJICogUHJldmlvdXMgdmVyc2lvbiBvZiBoZnMgZHJpdmVyIGRpZCBz
b21ldGhpbmcgdW5leHBlY3RlZDoKPiA+IAkJICogV2hlbiBjb2RlcGFnZSB3YXMgbm90IGRlZmlu
ZWQgYnV0IGlvY2hhcnNldCB3YXMgdGhlbgo+ID4gQEAgLTM4Miw3ICszOTIsOCBAQCBzdGF0aWMg
aW50IHBhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywgc3RydWN0IGhmc19zYl9pbmZvICpoc2Ip
Cj4gPiAJCQlyZXR1cm4gMDsKPiA+IAkJfQo+ID4gCX0KPiA+IC0JaWYgKGhzYi0+bmxzX2Rpc2sg
JiYgIWhzYi0+bmxzX2lvKSB7Cj4gPiArCWlmIChoc2ItPm5sc19kaXNrICYmCj4gPiArCSAgICAh
aGF2ZV9pb2NoYXJzZXQgJiYgc3RyY21wKENPTkZJR19OTFNfREVGQVVMVCwgInV0ZjgiKSAhPSAw
KSB7Cj4gCj4gTWF5YmUsIGludHJvZHVjZSB0aGUgdmFyaWFibGUgdG8gY2FsY3VsYXRlIHRoZSBi
b29sZWFuIHZhbHVlIGhlcmU/IFRoZW4gaWYgc3RhdGVtZW50IHdpbGwgbG9vayBtdWNoIGNsZWFu
ZXIuCgpJJ20gbm90IHN1cmUgaG93IHRvIGRvIGl0IHRvIG1ha2UgY29kZSBsb29rIGNsZWFuZXIu
CgpDdXJyZW50bHkgdGhlcmUgaXM6CgppZiAoaHNiLT5ubHNfZGlzayAmJgogICAgIWhhdmVfaW9j
aGFyc2V0ICYmIHN0cmNtcChDT05GSUdfTkxTX0RFRkFVTFQsICJ1dGY4IikgIT0gMCkgewogICAg
aHNiLT5ubHNfaW8gPSBsb2FkX25sc19kZWZhdWx0KCk7CiAgICAuLi4KfQoKSSBjYW4gcmVwbGFj
ZSBpdCBlLmcuIGJ5OgoKYm9vbCBuZWVkX3RvX2xvYWRfbmxzOwouLi4KaWYgKGhzYi0+bmxzX2Rp
c2sgJiYKICAgICFoYXZlX2lvY2hhcnNldCAmJiBzdHJjbXAoQ09ORklHX05MU19ERUZBVUxULCAi
dXRmOCIpICE9IDApCiAgICBuZWVkX3RvX2xvYWRfbmxzID0gdHJ1ZTsKZWxzZQogICAgbmVlZF90
b19sb2FkX25scyA9IGZhbHNlOwoKaWYgKG5lZWRfdG9fbG9hZF9ubHMpIHsKICAgIGhzYi0+bmxz
X2lvID0gbG9hZF9ubHNfZGVmYXVsdCgpOwogICAgLi4uCn0KCkJ1dCBpdCBpcyBqdXN0IGxvbmdl
ciwgY29uZGl0aW9uIGlzIHN0aWxsIHRoZXJlIGFuZCBpdCByZXF1aXJlcyBvbmUKYWRkaXRpb25h
bCB2YXJpYWJsZSB3aGljaCBtb3JlIG1lIGlzIGxlc3MgcmVhZGFibGUgYmVjYXVzZSBpdCBpcyBs
b25nZXIuCgo+ID4gCQloc2ItPm5sc19pbyA9IGxvYWRfbmxzX2RlZmF1bHQoKTsKPiA+IAkJaWYg
KCFoc2ItPm5sc19pbykgewo+ID4gCQkJcHJfZXJyKCJ1bmFibGUgdG8gbG9hZCBkZWZhdWx0IGlv
Y2hhcnNldFxuIik7Cj4gPiBkaWZmIC0tZ2l0IGEvZnMvaGZzL3RyYW5zLmMgYi9mcy9oZnMvdHJh
bnMuYwo+ID4gaW5kZXggYzc1NjgyYzYxYjA2Li5iZmY4ZTU0MDAzYWIgMTAwNjQ0Cj4gPiAtLS0g
YS9mcy9oZnMvdHJhbnMuYwo+ID4gKysrIGIvZnMvaGZzL3RyYW5zLmMKPiA+IEBAIC00NCw3ICs0
NCw3IEBAIGludCBoZnNfbWFjMmFzYyhzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLCBjaGFyICpvdXQs
IGNvbnN0IHN0cnVjdCBoZnNfbmFtZSAqaW4pCj4gPiAJCXNyY2xlbiA9IEhGU19OQU1FTEVOOwo+
ID4gCWRzdCA9IG91dDsKPiA+IAlkc3RsZW4gPSBIRlNfTUFYX05BTUVMRU47Cj4gPiAtCWlmIChu
bHNfaW8pIHsKPiA+ICsJaWYgKG5sc19kaXNrKSB7Cj4gPiAJCXdjaGFyX3QgY2g7Cj4gPiAKPiAK
PiBJIGNvdWxkIG1pc3Mgc29tZXRoaW5nIGhlcmUuIEJ1dCB3aGF04oCZcyBhYm91dCB0aGUgY2xv
c2luZyDigJx94oCdPwoKQ2xvc2luZyAifSIgaXMgdGhlcmUgb24gdGhlIHNhbWUgbG9jYXRpb24g
YXMgaXQgd2FzLiBCZWZvcmUgbXkgY2hhbmdlIG9uCiJpZiIgbGluZSB3YXMgb3BlbmluZyAieyIg
YW5kIGFsc28gd2l0aCBteSBjaGFuZ2UgdGhlcmUgaXMgb3BlbmluZyAieyIuClNvIG9wZW5pbmcg
InsiIGFuZCBjbG9zaW5nICJ9IiBhcmUgdGhlcmUgYW5kIG1hdGNoZXMuCgo+IFRoYW5rcywKPiBT
bGF2YS4KPiAKPiA+IAkJd2hpbGUgKHNyY2xlbiA+IDApIHsKPiA+IEBAIC01Nyw3ICs1NywxMiBA
QCBpbnQgaGZzX21hYzJhc2Moc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgY2hhciAqb3V0LCBjb25z
dCBzdHJ1Y3QgaGZzX25hbWUgKmluKQo+ID4gCQkJc3JjbGVuIC09IHNpemU7Cj4gPiAJCQlpZiAo
Y2ggPT0gJy8nKQo+ID4gCQkJCWNoID0gJzonOwo+ID4gLQkJCXNpemUgPSBubHNfaW8tPnVuaTJj
aGFyKGNoLCBkc3QsIGRzdGxlbik7Cj4gPiArCQkJaWYgKG5sc19pbykKPiA+ICsJCQkJc2l6ZSA9
IG5sc19pby0+dW5pMmNoYXIoY2gsIGRzdCwgZHN0bGVuKTsKPiA+ICsJCQllbHNlIGlmIChkc3Rs
ZW4gPiAwKQo+ID4gKwkJCQlzaXplID0gdXRmMzJfdG9fdXRmOChjaCwgZHN0LCBkc3RsZW4pOwo+
ID4gKwkJCWVsc2UKPiA+ICsJCQkJc2l6ZSA9IC1FTkFNRVRPT0xPTkc7Cj4gPiAJCQlpZiAoc2l6
ZSA8IDApIHsKPiA+IAkJCQlpZiAoc2l6ZSA9PSAtRU5BTUVUT09MT05HKQo+ID4gCQkJCQlnb3Rv
IG91dDsKPiA+IEBAIC0xMDEsMTEgKzEwNiwyMiBAQCB2b2lkIGhmc19hc2MybWFjKHN0cnVjdCBz
dXBlcl9ibG9jayAqc2IsIHN0cnVjdCBoZnNfbmFtZSAqb3V0LCBjb25zdCBzdHJ1Y3QgcXN0cgo+
ID4gCXNyY2xlbiA9IGluLT5sZW47Cj4gPiAJZHN0ID0gb3V0LT5uYW1lOwo+ID4gCWRzdGxlbiA9
IEhGU19OQU1FTEVOOwo+ID4gLQlpZiAobmxzX2lvKSB7Cj4gPiArCWlmIChubHNfZGlzaykgewo+
ID4gCQl3Y2hhcl90IGNoOwo+ID4gKwkJdW5pY29kZV90IHU7Cj4gPiAKPiA+IAkJd2hpbGUgKHNy
Y2xlbiA+IDApIHsKPiA+IC0JCQlzaXplID0gbmxzX2lvLT5jaGFyMnVuaShzcmMsIHNyY2xlbiwg
JmNoKTsKPiA+ICsJCQlpZiAobmxzX2lvKQo+ID4gKwkJCQlzaXplID0gbmxzX2lvLT5jaGFyMnVu
aShzcmMsIHNyY2xlbiwgJmNoKTsKPiA+ICsJCQllbHNlIHsKPiA+ICsJCQkJc2l6ZSA9IHV0Zjhf
dG9fdXRmMzIoc3RyLCBzdHJsZW4sICZ1KTsKPiA+ICsJCQkJaWYgKHNpemUgPj0gMCkgewo+ID4g
KwkJCQkJaWYgKHUgPD0gTUFYX1dDSEFSX1QpCj4gPiArCQkJCQkJY2ggPSB1Owo+ID4gKwkJCQkJ
ZWxzZQo+ID4gKwkJCQkJCXNpemUgPSAtRUlOVkFMOwo+ID4gKwkJCQl9Cj4gPiArCQkJfQo+ID4g
CQkJaWYgKHNpemUgPCAwKSB7Cj4gPiAJCQkJY2ggPSAnPyc7Cj4gPiAJCQkJc2l6ZSA9IDE7Cj4g
PiAtLSAKPiA+IDIuMjAuMQo+ID4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
