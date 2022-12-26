Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBAE656324
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oN3-0006WF-J0;
	Mon, 26 Dec 2022 14:22:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMw-0006Uc-9w;
 Mon, 26 Dec 2022 14:22:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BwnTyzNV8I/bIU+cBVO+pE3+gBQjJaZOKh3deLlu/7I=; b=D5mrQoo1TIdl9j7DUwDxdEC18B
 JaPyxzKzPP4ofKOb4qSbABFV2IHwQ7FhhfCn34ATTH9TTVdx1GAI3juuPeCxC68pl/4eLmYZ+285V
 5VYXe2t/y1JhAsyWrglydEYd+9Q1ozYtWBzb4XaKX9j6bMkNiEx5z2SsIJMB8z9BmKYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BwnTyzNV8I/bIU+cBVO+pE3+gBQjJaZOKh3deLlu/7I=; b=SdplbaRYTSCOjIIkQrwLDrZvP8
 +MQ3cQJC6sBjxQnUedO9TiRtEdDVERp0J5EzjWyYWqZJjpL/orVJtl/52XNCyrzK6i1hQkHALQkcL
 VKtf1cQa6KTxNlq+Gi38ASBVTt1hTSwZnrk3b8cMixN58LrAT6IEdTm46xiAQwldm+Nw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMv-0002CW-J1; Mon, 26 Dec 2022 14:22:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 262C260EAE;
 Mon, 26 Dec 2022 14:22:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DDD4C433F2;
 Mon, 26 Dec 2022 14:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064535;
 bh=KTlaKtoc30smqwDFYdlWnFXEn9JLsGy9kBhgPLFkugI=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=k1C6pep7mjb2vxyhmR6RmjD5TxwJDJwot8DuSPJBJDV53ijpJR+rV1MBrf7h3cb6m
 me7Pg6aNRllW0ZdOkLjWFHwaqfLeK8FixgI8Lx9frkhm8Sz/qPflhrh1HrDSZR1KZ5
 Yj7LUS4AdmfbcvFn88aAEZmGxv+mlpNPtAa/cv4CKXt3VjW687mqwFX0Tuk/r5DrB6
 zY5bk1RoDqtWT5rYh/oIZr+vl4bHQO/fg9xySFujE/B5pvIbJrJi8m+ci3q1N818jj
 rIWMcCC2am4zCGZDtMhvUJWbhz6CE/2B9XB0p4kL3gxo7YjZXJf7Slpjd3mPm0exA1
 kGWP5cEi4dzEQ==
Received: by pali.im (Postfix)
 id E8E4C9D7; Mon, 26 Dec 2022 15:22:14 +0100 (CET)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.cz>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Anton Altaparmakov <anton@tuxera.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Salah Triki <salah.triki@gmail.com>, Steve French <sfrench@samba.org>,
 Paulo Alcantara <pc@cjr.nz>, Ronnie Sahlberg <lsahlber@redhat.com>,
 Shyam Prasad N <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Pavel Machek <pavel@ucw.cz>,
 Christoph Hellwig <hch@infradead.org>,
 Kari Argillander <kari.argillander@gmail.com>,
 Viacheslav Dubeyko <slava@dubeyko.com>
Date: Mon, 26 Dec 2022 15:21:45 +0100
Message-Id: <20221226142150.13324-14-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20221226142150.13324-1-pali@kernel.org>
References: <20221226142150.13324-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Function jfs_strfromUCS_le() writes to unknown offset in
 buffer
 allocated by __get_free_page(GFP_KERNEL). So it cannot expects that there
 is least NLS_MAX_CHARSET_SIZE bytes space before end of that b [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMv-0002CW-J1
Subject: [Jfs-discussion] [RFC PATCH v2 13/18] jfs: Fix buffer overflow in
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
cmVlLmMKaW5kZXggOTJiN2M1MzM0MDdjLi5hMDljOWJjNDYzNTEgMTAwNjQ0Ci0tLSBhL2ZzL2pm
cy9qZnNfZHRyZWUuYworKysgYi9mcy9qZnMvamZzX2R0cmVlLmMKQEAgLTI3MTUsNiArMjcxNSw3
IEBAIGludCBqZnNfcmVhZGRpcihzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IGRpcl9jb250ZXh0
ICpjdHgpCiAJaW50IGRfbmFtbGVmdCwgbGVuLCBvdXRsZW47CiAJdW5zaWduZWQgbG9uZyBkaXJl
bnRfYnVmOwogCWNoYXIgKm5hbWVfcHRyOworCWludCBtYXhsZW47CiAJdTMyIGRpcl9pbmRleDsK
IAlpbnQgZG9faW5kZXggPSAwOwogCXVpbnQgbG9vcF9jb3VudCA9IDA7CkBAIC0yOTM3LDcgKzI5
MzgsMTAgQEAgaW50IGpmc19yZWFkZGlyKHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3QgZGlyX2Nv
bnRleHQgKmN0eCkKIAkJCX0KIAogCQkJLyogY29weSB0aGUgbmFtZSBvZiBoZWFkL29ubHkgc2Vn
bWVudCAqLwotCQkJb3V0bGVuID0gamZzX3N0cmZyb21VQ1NfbGUobmFtZV9wdHIsIGQtPm5hbWUs
IGxlbiwKKwkJCW1heGxlbiA9IFBBR0VfU0laRSAtIHNpemVvZihzdHJ1Y3QgamZzX2RpcmVudCkg
LQorCQkJCSAobmFtZV9wdHIgLSBqZnNfZGlyZW50LT5uYW1lKTsKKwkJCW91dGxlbiA9IGpmc19z
dHJmcm9tVUNTX2xlKG5hbWVfcHRyLCBtYXhsZW4sCisJCQkJCQkgICBkLT5uYW1lLCBsZW4sCiAJ
CQkJCQkgICBjb2RlcGFnZSk7CiAJCQlqZnNfZGlyZW50LT5uYW1lX2xlbiA9IG91dGxlbjsKIApA
QCAtMjk1Nyw4ICsyOTYxLDExIEBAIGludCBqZnNfcmVhZGRpcihzdHJ1Y3QgZmlsZSAqZmlsZSwg
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
