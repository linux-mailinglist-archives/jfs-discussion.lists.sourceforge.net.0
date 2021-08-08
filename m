Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 685DB3E4691
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jh-0004bj-4J; Mon, 09 Aug 2021 13:27:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClcG-0008G3-Fs; Sun, 08 Aug 2021 16:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=98ih5wHtuXMbV762S2e9rogPxkvTPu+Hri3ICCbi8Ic=; b=D9RSNnmmnC4NcdF+OFrA9u56Op
 hI4nGP/5NjBGSJhPz8sBVdPlo+hRfGGhJdBYGqSkae1PfLS4b95QnvluGgftXo6KzE5u+CdOuJ1n9
 gJVfYT6pq8VTXq3Fvpnedv4hVdOTuEFjxsrp9gSbYAVlHbX16SkHDfFBwnwqZgUQeqyQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=98ih5wHtuXMbV762S2e9rogPxkvTPu+Hri3ICCbi8Ic=; b=NnU9GLXIke8GUhpAcXIlEEj64u
 ne+9y62ppAPm3W52ShL6hakYqjeIm8wnSTAzgDAkuvErf0lgIZifajMAn+7IXyC5x37rVOkjVhOdv
 XoBuOs5IL8BPUDmXUzCQrvj3nSFfdhNJgZ81jhjOrt9efw9+zW2H6yurJcCNamxSu7Vg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcE-00GyXd-Fk; Sun, 08 Aug 2021 16:25:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id F41CA61158;
 Sun,  8 Aug 2021 16:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439921;
 bh=egOVkUn690xt7FZbOqT8MsamXeKICn7MJFEojXwgYng=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=VfOqSRuFvLe4mUUL47GjIPLuSciYWeBfWxTj8QxGd/gywNzUF/V/VSDO1OyBQr2KI
 pb+/lcc+l8h1rOWyRpZkTobnDfwXGl/H7pUks8skBwnjgJ8dMZQLIP9YOvb3BKH3Wy
 V1R+kOj4CCwoCPPwLaaCpJxU4fOXP4FYxCVXWqkaOHv0JNJsuzxurHCQKqPhY0n1z1
 4vZJUKQ9G5I1Ky5nA1PqgI7ZFqOMpZdsfyxxz0S30hvQAWk9476TrXbiEKOAo6kLM3
 SIF8Py6NINVOJfprskSbi/cpeMQk6ukYVbWgPcDIPnVFRXEz7veuskQX6vEW+BSd/N
 2QRocWokUB1bQ==
Received: by pali.im (Postfix)
 id B20291430; Sun,  8 Aug 2021 18:25:20 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.cz>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 "Theodore Y . Ts'o" <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Salah Triki <salah.triki@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dave Kleikamp <shaggy@kernel.org>, Anton Altaparmakov <anton@tuxera.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Christoph Hellwig <hch@infradead.org>
Date: Sun,  8 Aug 2021 18:24:49 +0200
Message-Id: <20210808162453.1653-17-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210808162453.1653-1-pali@kernel.org>
References: <20210808162453.1653-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mClcE-00GyXd-Fk
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:39 +0000
Subject: [Jfs-discussion] [RFC PATCH 16/20] jfs: Do not use broken utf8 NLS
 table for iocharset=utf8 mount option
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

TkxTIHRhYmxlIGZvciB1dGY4IGlzIGJyb2tlbiBhbmQgY2Fubm90IGJlIGZpeGVkLgoKU28gaW5z
dGVhZCBvZiBicm9rZW4gdXRmOCBubHMgZnVuY3Rpb25zIGNoYXIydW5pKCkgYW5kIHVuaTJjaGFy
KCkgdXNlCmZ1bmN0aW9ucyB1dGY4c190b191dGYxNnMoKSBhbmQgdXRmMTZzX3RvX3V0ZjhzKCkg
d2hpY2ggaW1wbGVtZW50cyBjb3JyZWN0CmNvbnZlcnNpb24gYmV0d2VlbiBVVEYtMTYgYW5kIFVU
Ri04LgoKVGhlc2UgZnVuY3Rpb25zIGltcGxlbWVudHMgYWxzbyBjb3JyZWN0IHByb2Nlc3Npbmcg
b2YgVVRGLTE2IHN1cnJvZ2F0ZQpwYWlycyBhbmQgdGhlcmVmb3JlIGFmdGVyIHRoaXMgY2hhbmdl
IGpmcyBkcml2ZXIgd291bGQgYmUgYWJsZSB0byBjb3JyZWN0bHkKaGFuZGxlIGFsc28gZmlsZSBu
YW1lcyB3aXRoIDQtYnl0ZSBVVEYtOCBzZXF1ZW5jZXMuCgpXaGVuIGlvY2hhdHNldD11dGY4IGlz
IHVzZWQgdGhlbiBzZXQgc2JpLT5ubHNfdGFiIHRvIE5VTEwgYW5kIHVzZSBpdCBmb3IKZGlzdGlu
Z3Vpc2ggYmV0d2VlbiB0aGUgZmFjdCBpZiBOTFMgdGFibGUgb3IgbmF0aXZlIFVURi04IGZ1bmN0
aW9ucyBzaG91bGQKYmUgdXNlZC4KClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtl
cm5lbC5vcmc+Ci0tLQogZnMvamZzL2pmc191bmljb2RlLmMgfCAxNyArKysrKysrKysrKysrKyst
LQogZnMvamZzL3N1cGVyLmMgICAgICAgfCAyNCArKysrKysrKysrKysrKystLS0tLS0tLS0KIDIg
ZmlsZXMgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZnMvamZzL2pmc191bmljb2RlLmMgYi9mcy9qZnMvamZzX3VuaWNvZGUuYwppbmRleCAy
ZGI5MjM4NzJiZjEuLjRjMzliNmI2NWJjYSAxMDA2NDQKLS0tIGEvZnMvamZzL2pmc191bmljb2Rl
LmMKKysrIGIvZnMvamZzL2pmc191bmljb2RlLmMKQEAgLTQ2LDYgKzQ2LDkgQEAgaW50IGpmc19z
dHJmcm9tVUNTX2xlKGNoYXIgKnRvLCBpbnQgbWF4bGVuLCBjb25zdCBfX2xlMTYgKiBmcm9tLAog
CQkJCX0KIAkJCX0KIAkJfQorCX0gZWxzZSB7CisJCW91dGxlbiA9IHV0ZjE2c190b191dGY4cyhm
cm9tLCBsZW4sCisJCQkJCSBVVEYxNl9MSVRUTEVfRU5ESUFOLCB0bywgbWF4bGVuLTEpOwogCX0K
IAl0b1tvdXRsZW5dID0gMDsKIAlyZXR1cm4gb3V0bGVuOwpAQCAtNjEsNiArNjQsNyBAQCBzdGF0
aWMgaW50IGpmc19zdHJ0b1VDUyh3Y2hhcl90ICogdG8sIGNvbnN0IHVuc2lnbmVkIGNoYXIgKmZy
b20sIGludCBsZW4sCiAJCXN0cnVjdCBubHNfdGFibGUgKmNvZGVwYWdlKQogewogCWludCBjaGFy
bGVuOworCWludCBvdXRsZW47CiAJaW50IGk7CiAKIAlpZiAoY29kZXBhZ2UpIHsKQEAgLTc1LDEw
ICs3OSwxOSBAQCBzdGF0aWMgaW50IGpmc19zdHJ0b1VDUyh3Y2hhcl90ICogdG8sIGNvbnN0IHVu
c2lnbmVkIGNoYXIgKmZyb20sIGludCBsZW4sCiAJCQkJcmV0dXJuIGNoYXJsZW47CiAJCQl9CiAJ
CX0KKwkJb3V0bGVuID0gaTsKKwl9IGVsc2UgeworCQlvdXRsZW4gPSB1dGY4c190b191dGYxNnMo
ZnJvbSwgbGVuLCBVVEYxNl9MSVRUTEVfRU5ESUFOLAorCQkJCQkgdG8sIGxlbik7CisJCWlmIChv
dXRsZW4gPCAxKSB7CisJCQlqZnNfZXJyKCJqZnNfc3RydG9VQ1M6IHV0ZjhzX3RvX3V0ZjE2cyBy
ZXR1cm5lZCAlZC4iLAorCQkJCW91dGxlbik7CisJCQlyZXR1cm4gb3V0bGVuOworCQl9CiAJfQog
Ci0JdG9baV0gPSAwOwotCXJldHVybiBpOworCXRvW291dGxlbl0gPSAwOworCXJldHVybiBvdXRs
ZW47CiB9CiAKIC8qCmRpZmYgLS1naXQgYS9mcy9qZnMvc3VwZXIuYyBiL2ZzL2pmcy9zdXBlci5j
CmluZGV4IDhiYTJhYzAzMjI5Mi4uZjQ0OWZkZDU2NjU0IDEwMDY0NAotLS0gYS9mcy9qZnMvc3Vw
ZXIuYworKysgYi9mcy9qZnMvc3VwZXIuYwpAQCAtMjYxLDE2ICsyNjEsMjAgQEAgc3RhdGljIGlu
dCBwYXJzZV9vcHRpb25zKGNoYXIgKm9wdGlvbnMsIHN0cnVjdCBzdXBlcl9ibG9jayAqc2IsIHM2
NCAqbmV3TFZTaXplLAogCQkJLyogRG9uJ3QgZG8gYW55dGhpbmcgOy0pICovCiAJCQlicmVhazsK
IAkJY2FzZSBPcHRfaW9jaGFyc2V0OgotCQkJaWYgKG5sc19tYXAgJiYgbmxzX21hcCAhPSAodm9p
ZCAqKSAtMSkKKwkJCWlmIChubHNfbWFwICYmIG5sc19tYXAgIT0gKHZvaWQgKikgLTEpIHsKIAkJ
CQl1bmxvYWRfbmxzKG5sc19tYXApOwotCQkJLyogY29tcGF0aWJpbGl0eSBhbGlhcyBub25lIG1l
YW5zIElTTy04ODU5LTEgKi8KLQkJCWlmIChzdHJjbXAoYXJnc1swXS5mcm9tLCAibm9uZSIpID09
IDApCi0JCQkJbmxzX21hcCA9IGxvYWRfbmxzKCJpc284ODU5LTEiKTsKLQkJCWVsc2UKLQkJCQlu
bHNfbWFwID0gbG9hZF9ubHMoYXJnc1swXS5mcm9tKTsKLQkJCWlmICghbmxzX21hcCkgewotCQkJ
CXByX2VycigiSkZTOiBjaGFyc2V0IG5vdCBmb3VuZFxuIik7Ci0JCQkJZ290byBjbGVhbnVwOwor
CQkJCW5sc19tYXAgPSBOVUxMOworCQkJfQorCQkJaWYgKHN0cmNtcChhcmdzWzBdLmZyb20sICJ1
dGY4IikgIT0gMCkgeworCQkJCS8qIGNvbXBhdGliaWxpdHkgYWxpYXMgbm9uZSBtZWFucyBJU08t
ODg1OS0xICovCisJCQkJaWYgKHN0cmNtcChhcmdzWzBdLmZyb20sICJub25lIikgPT0gMCkKKwkJ
CQkJbmxzX21hcCA9IGxvYWRfbmxzKCJpc284ODU5LTEiKTsKKwkJCQllbHNlCisJCQkJCW5sc19t
YXAgPSBsb2FkX25scyhhcmdzWzBdLmZyb20pOworCQkJCWlmICghbmxzX21hcCkgeworCQkJCQlw
cl9lcnIoIkpGUzogY2hhcnNldCBub3QgZm91bmRcbiIpOworCQkJCQlnb3RvIGNsZWFudXA7CisJ
CQkJfQogCQkJfQogCQkJYnJlYWs7CiAJCWNhc2UgT3B0X3Jlc2l6ZToKQEAgLTcxOCw2ICs3MjIs
OCBAQCBzdGF0aWMgaW50IGpmc19zaG93X29wdGlvbnMoc3RydWN0IHNlcV9maWxlICpzZXEsIHN0
cnVjdCBkZW50cnkgKnJvb3QpCiAJCXNlcV9wcmludGYoc2VxLCAiLGRpc2NhcmQ9JXUiLCBzYmkt
Pm1pbmJsa3NfdHJpbSk7CiAJaWYgKHNiaS0+bmxzX3RhYikKIAkJc2VxX3ByaW50ZihzZXEsICIs
aW9jaGFyc2V0PSVzIiwgc2JpLT5ubHNfdGFiLT5jaGFyc2V0KTsKKwllbHNlCisJCXNlcV9wdXRz
KHNlcSwgIixpb2NoYXJzZXQ9dXRmOCIpOwogCWlmIChzYmktPmZsYWcgJiBKRlNfRVJSX0NPTlRJ
TlVFKQogCQlzZXFfcHJpbnRmKHNlcSwgIixlcnJvcnM9Y29udGludWUiKTsKIAlpZiAoc2JpLT5m
bGFnICYgSkZTX0VSUl9QQU5JQykKLS0gCjIuMjAuMQoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZz
LWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
