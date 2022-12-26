Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD9765631E
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMs-0001xN-Cl;
	Mon, 26 Dec 2022 14:22:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMr-0001x3-U5;
 Mon, 26 Dec 2022 14:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bfEqdlPniHeQegWMRx7tq5haZbjbMz/mCb6tJYDRlKs=; b=mJy2qVN90enAMpg7fjpTu2DscR
 9RlPWPbn5VDG+FXmsmK/qKERaMLQtyECVgMqD9vb6suc7eEPHmhTlPDJO8Ue5gAmL2Qi8b1dYcaxg
 5n/+7AUg7kIx/6EqPuNNW5AMWLrsaEKZtuALQG8gHBNrcr5Mbw2N2RASSo2GDJ4peOKo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bfEqdlPniHeQegWMRx7tq5haZbjbMz/mCb6tJYDRlKs=; b=EFq1lucXW9tdAIm/vdCFcmGAL2
 UubHuGyrsQnOtUpG1gNBLnmUfhhMmE6Al5IpXqZjATV2GQkKftaKq3xmmZ2Ok9HImbgcI6eoj3wB4
 1BXq4+fdtw9dMfzHaez4YFsbfv42Q3pcjA9V5McnHJDl8wSEhXLPUcLmpg2OsKCzaXeQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMr-0002CB-9H; Mon, 26 Dec 2022 14:22:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 279D360ECB;
 Mon, 26 Dec 2022 14:22:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44A37C433D2;
 Mon, 26 Dec 2022 14:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064536;
 bh=UK6BsAqbMHD2yEk56WVb4gYlz7RwyfUXM7sbl2vvPCA=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=efntnbsbXMUd/3GVdPWgMJrVdE4PvcR0ghBC55RqUJ4rPHQlXrJMXeykHqg94BVpB
 hu2ZGUq8HkJSJnELi0aFA0lGyrMRBKpN+N3VjxBZq6OEW1vrHiVQun4Hhm2c6algSG
 8fh6m1xxtDXfE38s3iwstylP1uwUkLdJEtfKPZY6XcEKjnJzCtr0SN+BPTpyiHwI5J
 44uZ8tYtcuRDPT0WXsPT34PpSRjG+5roeG9qcYMnjMFfLmyk5HE1RHWxi+P+iRGlGx
 W+wkKS7UAwKqhk8UvHsm5Ltkew/N9vQ6WAzRtLJod71xGKcxsd5OJ286VWej6f4UQV
 ZJmdCwwMPQHPQ==
Received: by pali.im (Postfix)
 id F1EC09D7; Mon, 26 Dec 2022 15:22:15 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:46 +0100
Message-Id: <20221226142150.13324-15-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20221226142150.13324-1-pali@kernel.org>
References: <20221226142150.13324-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: NLS table for utf8 is broken and cannot be fixed. So instead
 of broken utf8 nls functions char2uni() and uni2char() use functions
 utf8s_to_utf16s()
 and utf16s_to_utf8s() which implements correct conversion between UTF-16
 and UTF-8. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMr-0002CB-9H
Subject: [Jfs-discussion] [RFC PATCH v2 14/18] jfs: Do not use broken utf8
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
ZGI5MjM4NzJiZjEuLjBiMGI4MDA2M2E5OCAxMDA2NDQKLS0tIGEvZnMvamZzL2pmc191bmljb2Rl
LmMKKysrIGIvZnMvamZzL2pmc191bmljb2RlLmMKQEAgLTQ2LDYgKzQ2LDkgQEAgaW50IGpmc19z
dHJmcm9tVUNTX2xlKGNoYXIgKnRvLCBpbnQgbWF4bGVuLCBjb25zdCBfX2xlMTYgKiBmcm9tLAog
CQkJCX0KIAkJCX0KIAkJfQorCX0gZWxzZSB7CisJCW91dGxlbiA9IHV0ZjE2c190b191dGY4cygo
Y29uc3Qgd2NoYXJfdCAqKWZyb20sIGxlbiwKKwkJCQkJIFVURjE2X0xJVFRMRV9FTkRJQU4sIHRv
LCBtYXhsZW4tMSk7CiAJfQogCXRvW291dGxlbl0gPSAwOwogCXJldHVybiBvdXRsZW47CkBAIC02
MSw2ICs2NCw3IEBAIHN0YXRpYyBpbnQgamZzX3N0cnRvVUNTKHdjaGFyX3QgKiB0bywgY29uc3Qg
dW5zaWduZWQgY2hhciAqZnJvbSwgaW50IGxlbiwKIAkJc3RydWN0IG5sc190YWJsZSAqY29kZXBh
Z2UpCiB7CiAJaW50IGNoYXJsZW47CisJaW50IG91dGxlbjsKIAlpbnQgaTsKIAogCWlmIChjb2Rl
cGFnZSkgewpAQCAtNzUsMTAgKzc5LDE5IEBAIHN0YXRpYyBpbnQgamZzX3N0cnRvVUNTKHdjaGFy
X3QgKiB0bywgY29uc3QgdW5zaWduZWQgY2hhciAqZnJvbSwgaW50IGxlbiwKIAkJCQlyZXR1cm4g
Y2hhcmxlbjsKIAkJCX0KIAkJfQorCQlvdXRsZW4gPSBpOworCX0gZWxzZSB7CisJCW91dGxlbiA9
IHV0ZjhzX3RvX3V0ZjE2cyhmcm9tLCBsZW4sIFVURjE2X0xJVFRMRV9FTkRJQU4sCisJCQkJCSB0
bywgbGVuKTsKKwkJaWYgKG91dGxlbiA8IDEpIHsKKwkJCWpmc19lcnIoImpmc19zdHJ0b1VDUzog
dXRmOHNfdG9fdXRmMTZzIHJldHVybmVkICVkLiIsCisJCQkJb3V0bGVuKTsKKwkJCXJldHVybiBv
dXRsZW47CisJCX0KIAl9CiAKLQl0b1tpXSA9IDA7Ci0JcmV0dXJuIGk7CisJdG9bb3V0bGVuXSA9
IDA7CisJcmV0dXJuIG91dGxlbjsKIH0KIAogLyoKZGlmZiAtLWdpdCBhL2ZzL2pmcy9zdXBlci5j
IGIvZnMvamZzL3N1cGVyLmMKaW5kZXggYTJiYjNkNWQzZjY5Li5mMjY0NjAxNDdiNjIgMTAwNjQ0
Ci0tLSBhL2ZzL2pmcy9zdXBlci5jCisrKyBiL2ZzL2pmcy9zdXBlci5jCkBAIC0yNjEsMTYgKzI2
MSwyMCBAQCBzdGF0aWMgaW50IHBhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywgc3RydWN0IHN1
cGVyX2Jsb2NrICpzYiwgczY0ICpuZXdMVlNpemUsCiAJCQkvKiBEb24ndCBkbyBhbnl0aGluZyA7
LSkgKi8KIAkJCWJyZWFrOwogCQljYXNlIE9wdF9pb2NoYXJzZXQ6Ci0JCQlpZiAobmxzX21hcCAm
JiBubHNfbWFwICE9ICh2b2lkICopIC0xKQorCQkJaWYgKG5sc19tYXAgJiYgbmxzX21hcCAhPSAo
dm9pZCAqKSAtMSkgewogCQkJCXVubG9hZF9ubHMobmxzX21hcCk7Ci0JCQkvKiBjb21wYXRpYmls
aXR5IGFsaWFzIG5vbmUgbWVhbnMgSVNPLTg4NTktMSAqLwotCQkJaWYgKHN0cmNtcChhcmdzWzBd
LmZyb20sICJub25lIikgPT0gMCkKLQkJCQlubHNfbWFwID0gbG9hZF9ubHMoImlzbzg4NTktMSIp
OwotCQkJZWxzZQotCQkJCW5sc19tYXAgPSBsb2FkX25scyhhcmdzWzBdLmZyb20pOwotCQkJaWYg
KCFubHNfbWFwKSB7Ci0JCQkJcHJfZXJyKCJKRlM6IGNoYXJzZXQgbm90IGZvdW5kXG4iKTsKLQkJ
CQlnb3RvIGNsZWFudXA7CisJCQkJbmxzX21hcCA9IE5VTEw7CisJCQl9CisJCQlpZiAoc3RyY21w
KGFyZ3NbMF0uZnJvbSwgInV0ZjgiKSAhPSAwKSB7CisJCQkJLyogY29tcGF0aWJpbGl0eSBhbGlh
cyBub25lIG1lYW5zIElTTy04ODU5LTEgKi8KKwkJCQlpZiAoc3RyY21wKGFyZ3NbMF0uZnJvbSwg
Im5vbmUiKSA9PSAwKQorCQkJCQlubHNfbWFwID0gbG9hZF9ubHMoImlzbzg4NTktMSIpOworCQkJ
CWVsc2UKKwkJCQkJbmxzX21hcCA9IGxvYWRfbmxzKGFyZ3NbMF0uZnJvbSk7CisJCQkJaWYgKCFu
bHNfbWFwKSB7CisJCQkJCXByX2VycigiSkZTOiBjaGFyc2V0IG5vdCBmb3VuZFxuIik7CisJCQkJ
CWdvdG8gY2xlYW51cDsKKwkJCQl9CiAJCQl9CiAJCQlicmVhazsKIAkJY2FzZSBPcHRfcmVzaXpl
OgpAQCAtNzEzLDYgKzcxNyw4IEBAIHN0YXRpYyBpbnQgamZzX3Nob3dfb3B0aW9ucyhzdHJ1Y3Qg
c2VxX2ZpbGUgKnNlcSwgc3RydWN0IGRlbnRyeSAqcm9vdCkKIAkJc2VxX3ByaW50ZihzZXEsICIs
ZGlzY2FyZD0ldSIsIHNiaS0+bWluYmxrc190cmltKTsKIAlpZiAoc2JpLT5ubHNfdGFiKQogCQlz
ZXFfcHJpbnRmKHNlcSwgIixpb2NoYXJzZXQ9JXMiLCBzYmktPm5sc190YWItPmNoYXJzZXQpOwor
CWVsc2UKKwkJc2VxX3B1dHMoc2VxLCAiLGlvY2hhcnNldD11dGY4Iik7CiAJaWYgKHNiaS0+Zmxh
ZyAmIEpGU19FUlJfQ09OVElOVUUpCiAJCXNlcV9wcmludGYoc2VxLCAiLGVycm9ycz1jb250aW51
ZSIpOwogCWlmIChzYmktPmZsYWcgJiBKRlNfRVJSX1BBTklDKQotLSAKMi4yMC4xCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9u
IG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
