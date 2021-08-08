Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 167F53E4695
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Ji-0004dV-Eb; Mon, 09 Aug 2021 13:27:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClcL-0008He-C0; Sun, 08 Aug 2021 16:25:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A3j6qf/K4hIubAF4tW3V+KAutizyuFUnunQ+gj1IRMw=; b=A7ZqnTkPZ6lcu6Mj4vkvkoTIMq
 JA0WwIkU4Zn6lA8dLS7x+Ep83cBlHJ3ipMTpGyPHSY+wsEDsVGyBcZa1WI1TdlyVzQhgLuarnIOHJ
 JgHUFz86ludWN6wnX04ym3MPJPkQTvIgJYyEtUIRI94RyhNNSVE+n6YVPSGIq3IewdtI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A3j6qf/K4hIubAF4tW3V+KAutizyuFUnunQ+gj1IRMw=; b=mM7ZH3stlZGIZzF7tiZ3ggqSWz
 W/vq+/UIZOKLJwcdLkvBLRgZ7lNS8WKM0PI+xD2jPKn7Sv3tkFssD2c4tPBTHa7in1fSXBUFfQM5d
 7Xc1DqskCuC16coFaASS3Jr+5hsaYqdGn5Em90hY6q9V74J9CIFiA36ABNovFDAwYJ7c=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcJ-00GyYH-M3; Sun, 08 Aug 2021 16:25:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7F64B610CB;
 Sun,  8 Aug 2021 16:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439920;
 bh=BUPoxALGC7F75VOkWPfL8v5IuC/ZnFA2iXsEfysXhCI=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=jlk2xHjSB3vCq6E0hlc67/375GfJRZJ9Ws1YxQ+dX1+bTRkucGkfObV2q2EHTxOls
 cr9ZDxbxOLgjznzzCIqlhXTj+MAhu04CuPhVT0krP7SDiHNb7YIRUcMFdd8JVv6lUq
 T2LEHvz2QJ/lc52ZXvyWP7WP5Ezng2UIad7JWsf2mBcJ86CwHSLHU0YwUOMgS+T39l
 qMvtXAH/riRRJHnyS06r8Vut06PWSdz8sxOuv6oydNMZllYoAD6KB4nkOWS4Lw9ZJu
 Gp1iVVVBdKJQd3qi0VpNmR8PECjq7CdzYGSqhM+mSKQh+TC9MR8z367myFOdc0nBHR
 L0joQoFIiupfA==
Received: by pali.im (Postfix)
 id 3F73113DC; Sun,  8 Aug 2021 18:25:20 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:48 +0200
Message-Id: <20210808162453.1653-16-pali@kernel.org>
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mClcJ-00GyYH-M3
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:41 +0000
Subject: [Jfs-discussion] [RFC PATCH 15/20] jfs: Fix buffer overflow in
 jfs_strfromUCS_le() function
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

RnVuY3Rpb24gamZzX3N0cmZyb21VQ1NfbGUoKSB3cml0ZXMgdG8gdW5rbm93biBvZmZzZXQgaW4g
YnVmZmVyIGFsbG9jYXRlZApieSBfX2dldF9mcmVlX3BhZ2UoR0ZQX0tFUk5FTCkuIFNvIGl0IGNh
bm5vdCBleHBlY3RzIHRoYXQgdGhlcmUgaXMgbGVhc3QKTkxTX01BWF9DSEFSU0VUX1NJWkUgYnl0
ZXMgc3BhY2UgYmVmb3JlIGVuZCBvZiB0aGF0IGJ1ZmZlci4KCkZpeCB0aGlzIGlzc3VlIGJ5IGFk
ZCBhIG5ldyBwYXJhbWV0ZXIgbWF4bGVuIGZvciBqZnNfc3RyZnJvbVVDU19sZSgpCmZ1bmN0aW9u
LiBBbmQgdXNlIGl0IGZvciBwYXNzaW5nIHJlbWFpbmluZyBzaXplIG9mIGJ1ZmZlciB0byBwcmV2
ZW50IGJ1ZmZlcgpvdmVyZmxvdyBpbiBrZXJuZWwuCgpTaWduZWQtb2ZmLWJ5OiBQYWxpIFJvaMOh
ciA8cGFsaUBrZXJuZWwub3JnPgotLS0KIGZzL2pmcy9qZnNfZHRyZWUuYyAgIHwgMTMgKysrKysr
KysrKy0tLQogZnMvamZzL2pmc191bmljb2RlLmMgfCAgNiArKystLS0KIGZzL2pmcy9qZnNfdW5p
Y29kZS5oIHwgIDIgKy0KIDMgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9qZnMvamZzX2R0cmVlLmMgYi9mcy9qZnMvamZzX2R0
cmVlLmMKaW5kZXggODM3ZDQyZjYxNDY0Li42ZGJkY2U1NGYxMzkgMTAwNjQ0Ci0tLSBhL2ZzL2pm
cy9qZnNfZHRyZWUuYworKysgYi9mcy9qZnMvamZzX2R0cmVlLmMKQEAgLTMwMTMsNiArMzAxMyw3
IEBAIGludCBqZnNfcmVhZGRpcihzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IGRpcl9jb250ZXh0
ICpjdHgpCiAJaW50IGRfbmFtbGVmdCwgbGVuLCBvdXRsZW47CiAJdW5zaWduZWQgbG9uZyBkaXJl
bnRfYnVmOwogCWNoYXIgKm5hbWVfcHRyOworCWludCBtYXhsZW47CiAJdTMyIGRpcl9pbmRleDsK
IAlpbnQgZG9faW5kZXggPSAwOwogCXVpbnQgbG9vcF9jb3VudCA9IDA7CkBAIC0zMjM1LDcgKzMy
MzYsMTAgQEAgaW50IGpmc19yZWFkZGlyKHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3QgZGlyX2Nv
bnRleHQgKmN0eCkKIAkJCX0KIAogCQkJLyogY29weSB0aGUgbmFtZSBvZiBoZWFkL29ubHkgc2Vn
bWVudCAqLwotCQkJb3V0bGVuID0gamZzX3N0cmZyb21VQ1NfbGUobmFtZV9wdHIsIGQtPm5hbWUs
IGxlbiwKKwkJCW1heGxlbiA9IFBBR0VfU0laRSAtIHNpemVvZihzdHJ1Y3QgamZzX2RpcmVudCkg
LQorCQkJCSAobmFtZV9wdHIgLSBqZnNfZGlyZW50LT5uYW1lKTsKKwkJCW91dGxlbiA9IGpmc19z
dHJmcm9tVUNTX2xlKG5hbWVfcHRyLCBtYXhsZW4sCisJCQkJCQkgICBkLT5uYW1lLCBsZW4sCiAJ
CQkJCQkgICBjb2RlcGFnZSk7CiAJCQlqZnNfZGlyZW50LT5uYW1lX2xlbiA9IG91dGxlbjsKIApA
QCAtMzI1NSw4ICszMjU5LDExIEBAIGludCBqZnNfcmVhZGRpcihzdHJ1Y3QgZmlsZSAqZmlsZSwg
c3RydWN0IGRpcl9jb250ZXh0ICpjdHgpCiAJCQkJCWdvdG8gc2tpcF9vbmU7CiAJCQkJfQogCQkJ
CWxlbiA9IG1pbihkX25hbWxlZnQsIERUU0xPVERBVEFMRU4pOwotCQkJCW91dGxlbiA9IGpmc19z
dHJmcm9tVUNTX2xlKG5hbWVfcHRyLCB0LT5uYW1lLAotCQkJCQkJCSAgIGxlbiwgY29kZXBhZ2Up
OworCQkJCW1heGxlbiA9IFBBR0VfU0laRSAtIHNpemVvZihzdHJ1Y3QgamZzX2RpcmVudCkgLQor
CQkJCQkgKG5hbWVfcHRyIC0gamZzX2RpcmVudC0+bmFtZSk7CisJCQkJb3V0bGVuID0gamZzX3N0
cmZyb21VQ1NfbGUobmFtZV9wdHIsIG1heGxlbiwKKwkJCQkJCQkgICB0LT5uYW1lLCBsZW4sCisJ
CQkJCQkJICAgY29kZXBhZ2UpOwogCQkJCWpmc19kaXJlbnQtPm5hbWVfbGVuICs9IG91dGxlbjsK
IAogCQkJCW5leHQgPSB0LT5uZXh0OwpkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc191bmljb2RlLmMg
Yi9mcy9qZnMvamZzX3VuaWNvZGUuYwppbmRleCAxZDBmNjVkMTNiNTguLjJkYjkyMzg3MmJmMSAx
MDA2NDQKLS0tIGEvZnMvamZzL2pmc191bmljb2RlLmMKKysrIGIvZnMvamZzL2pmc191bmljb2Rl
LmMKQEAgLTE2LDcgKzE2LDcgQEAKICAqIEZVTkNUSU9OOglDb252ZXJ0IGxpdHRsZS1lbmRpYW4g
dW5pY29kZSBzdHJpbmcgdG8gY2hhcmFjdGVyIHN0cmluZwogICoKICAqLwotaW50IGpmc19zdHJm
cm9tVUNTX2xlKGNoYXIgKnRvLCBjb25zdCBfX2xlMTYgKiBmcm9tLAoraW50IGpmc19zdHJmcm9t
VUNTX2xlKGNoYXIgKnRvLCBpbnQgbWF4bGVuLCBjb25zdCBfX2xlMTYgKiBmcm9tLAogCQkgICAg
ICBpbnQgbGVuLCBzdHJ1Y3QgbmxzX3RhYmxlICpjb2RlcGFnZSkKIHsKIAlpbnQgaTsKQEAgLTI1
LDEyICsyNSwxMiBAQCBpbnQgamZzX3N0cmZyb21VQ1NfbGUoY2hhciAqdG8sIGNvbnN0IF9fbGUx
NiAqIGZyb20sCiAJaW50IHdhcm4gPSAhIXdhcm5fYWdhaW47CS8qIG9uY2UgcGVyIHN0cmluZyAq
LwogCiAJaWYgKGNvZGVwYWdlKSB7Ci0JCWZvciAoaSA9IDA7IChpIDwgbGVuKSAmJiBmcm9tW2ld
OyBpKyspIHsKKwkJZm9yIChpID0gMDsgKGkgPCBsZW4pICYmIGZyb21baV0gJiYgb3V0bGVuIDwg
bWF4bGVuLTE7IGkrKykgewogCQkJaW50IGNoYXJsZW47CiAJCQljaGFybGVuID0KIAkJCSAgICBj
b2RlcGFnZS0+dW5pMmNoYXIobGUxNl90b19jcHUoZnJvbVtpXSksCiAJCQkJCSAgICAgICAmdG9b
b3V0bGVuXSwKLQkJCQkJICAgICAgIE5MU19NQVhfQ0hBUlNFVF9TSVpFKTsKKwkJCQkJICAgICAg
IG1heGxlbi0xLW91dGxlbik7CiAJCQlpZiAoY2hhcmxlbiA+IDApCiAJCQkJb3V0bGVuICs9IGNo
YXJsZW47CiAJCQllbHNlIHsKZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfdW5pY29kZS5oIGIvZnMv
amZzL2pmc191bmljb2RlLmgKaW5kZXggOWRiNjJkMDQ3ZGFhLi44YjVjNzQzMTVlMDcgMTAwNjQ0
Ci0tLSBhL2ZzL2pmcy9qZnNfdW5pY29kZS5oCisrKyBiL2ZzL2pmcy9qZnNfdW5pY29kZS5oCkBA
IC0xOSw3ICsxOSw3IEBAIHR5cGVkZWYgc3RydWN0IHsKIGV4dGVybiBzaWduZWQgY2hhciBVbmlV
cHBlclRhYmxlWzUxMl07CiBleHRlcm4gVU5JQ0FTRVJBTkdFIFVuaVVwcGVyUmFuZ2VbXTsKIGV4
dGVybiBpbnQgZ2V0X1VDU25hbWUoc3RydWN0IGNvbXBvbmVudF9uYW1lICosIHN0cnVjdCBkZW50
cnkgKik7Ci1leHRlcm4gaW50IGpmc19zdHJmcm9tVUNTX2xlKGNoYXIgKiwgY29uc3QgX19sZTE2
ICosIGludCwgc3RydWN0IG5sc190YWJsZSAqKTsKK2V4dGVybiBpbnQgamZzX3N0cmZyb21VQ1Nf
bGUoY2hhciAqLCBpbnQsIGNvbnN0IF9fbGUxNiAqLCBpbnQsIHN0cnVjdCBubHNfdGFibGUgKik7
CiAKICNkZWZpbmUgZnJlZV9VQ1NuYW1lKENPTVApIGtmcmVlKChDT01QKS0+bmFtZSkKIAotLSAK
Mi4yMC4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Ckpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZz
LWRpc2N1c3Npb24K
