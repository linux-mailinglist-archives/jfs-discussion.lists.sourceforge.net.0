Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5437665631D
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMx-0006Uz-UO;
	Mon, 26 Dec 2022 14:22:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMs-0006TU-PZ;
 Mon, 26 Dec 2022 14:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rlNb/H2YpHsECRI7gjFepw+qr8opoFiXmh8kD2T2QDk=; b=fTwjnPiTqXf9Q8VqFRSRzv2ztz
 1qyIpoqNZz4mi6l9W38wpp/3VivfhK/7WgdnmI156Uk7OKrI7ce34QHYgoMi7827CDrq+Vy4mH880
 NLzF7abLDDr+/SzuSmxqdGRzAHqErUlPB/dpzHmP1jMFWx7Iw3+b2ob0fB/BdFfVDm8I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rlNb/H2YpHsECRI7gjFepw+qr8opoFiXmh8kD2T2QDk=; b=Z/DkEgMp+DYK1aSjHUkox80eR2
 KmjYfyjVy1GixDTqO1b7wt0OGUv9pY8Gd4GGoW/WA5EnQ8DqWEtJ6bSLKaacFAPc9azv41n0U1Z3Q
 UuaetrEFnx8EWQK9oxFEzZRtSDMEsNkPxxRdFpzTrae9eq8JNJ4slbqqVrizGtJRf2p0=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMr-00DHha-PT; Mon, 26 Dec 2022 14:22:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 482C9B80D42;
 Mon, 26 Dec 2022 14:22:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C373CC433D2;
 Mon, 26 Dec 2022 14:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064529;
 bh=7SbfW9t2WEOzR8seGOYlZoIpmGQJDZj+robHHxNPvMg=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=eN/lw5DnxdvYfY0ODuXLEVKk8TMiNQffzO157TNdgCyeYz3E1NQeWT+hcL+xZUwli
 7SaS/CIG27kC5rvFtpnF69r70+2rhebnA/a8xvi6+a6ET8vR3BlMzqv+nd79m4Ctk5
 HluUDpyMZ/J5cqCFLcLt005Koh/fhIIR1w+zSYRYBAFX2LeYqEqktySGVlYvhbiTeF
 8qgaOW5dCRQkxY1QtcIyHGzT9NubIRCv3O2rPBzyhOLN2rbzxWVeKrAuX03CQzt6Qh
 Py1b9O3qYmaPBWcXE3fFmfng/+yEamTujxOXSUaKLvSHoolgw/axd9uTisp+6frJ3S
 SOqSEAybfSZCg==
Received: by pali.im (Postfix)
 id 7E7D49D7; Mon, 26 Dec 2022 15:22:09 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:40 +0100
Message-Id: <20221226142150.13324-9-pali@kernel.org>
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
 Content preview: befs driver already has a code which avoids usage of NLS when
 befs_sb->nls is not set. But befs_fill_super() always set befs_sb->nls, so
 activating native UTF-8 is not possible. Fix it by not setting befs_sb->nls
 when iocharset is set to utf8. So now after this cgange mount option
 iocharset=utf8
 activates usage of native UTF-8 code path in befs driver. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
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
X-Headers-End: 1p9oMr-00DHha-PT
Subject: [Jfs-discussion] [RFC PATCH v2 08/18] befs: Allow to use native
 UTF-8 mode
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

YmVmcyBkcml2ZXIgYWxyZWFkeSBoYXMgYSBjb2RlIHdoaWNoIGF2b2lkcyB1c2FnZSBvZiBOTFMg
d2hlbiBiZWZzX3NiLT5ubHMKaXMgbm90IHNldC4KCkJ1dCBiZWZzX2ZpbGxfc3VwZXIoKSBhbHdh
eXMgc2V0IGJlZnNfc2ItPm5scywgc28gYWN0aXZhdGluZyBuYXRpdmUgVVRGLTgKaXMgbm90IHBv
c3NpYmxlLgoKRml4IGl0IGJ5IG5vdCBzZXR0aW5nIGJlZnNfc2ItPm5scyB3aGVuIGlvY2hhcnNl
dCBpcyBzZXQgdG8gdXRmOC4gU28gbm93CmFmdGVyIHRoaXMgY2dhbmdlIG1vdW50IG9wdGlvbiBp
b2NoYXJzZXQ9dXRmOCBhY3RpdmF0ZXMgdXNhZ2Ugb2YgbmF0aXZlClVURi04IGNvZGUgcGF0aCBp
biBiZWZzIGRyaXZlci4KClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5v
cmc+Ci0tLQogZnMvYmVmcy9saW51eHZmcy5jIHwgMTMgKysrKysrKysrKy0tLQogMSBmaWxlIGNo
YW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMv
YmVmcy9saW51eHZmcy5jIGIvZnMvYmVmcy9saW51eHZmcy5jCmluZGV4IDhkMjk1NGUzYWZkNi4u
ZTU0MDAxMjNkMzNmIDEwMDY0NAotLS0gYS9mcy9iZWZzL2xpbnV4dmZzLmMKKysrIGIvZnMvYmVm
cy9saW51eHZmcy5jCkBAIC03NjksNiArNzY5LDcgQEAgc3RhdGljIGludCBiZWZzX3Nob3dfb3B0
aW9ucyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBkZW50cnkgKnJvb3QpCiB7CiAJc3RydWN0
IGJlZnNfc2JfaW5mbyAqYmVmc19zYiA9IEJFRlNfU0Iocm9vdC0+ZF9zYik7CiAJc3RydWN0IGJl
ZnNfbW91bnRfb3B0aW9ucyAqb3B0cyA9ICZiZWZzX3NiLT5tb3VudF9vcHRzOworCXN0cnVjdCBu
bHNfdGFibGUgKm5scyA9IGJlZnNfc2ItPm5sczsKIAogCWlmICghdWlkX2VxKG9wdHMtPnVpZCwg
R0xPQkFMX1JPT1RfVUlEKSkKIAkJc2VxX3ByaW50ZihtLCAiLHVpZD0ldSIsCkBAIC03NzYsOCAr
Nzc3LDEwIEBAIHN0YXRpYyBpbnQgYmVmc19zaG93X29wdGlvbnMoc3RydWN0IHNlcV9maWxlICpt
LCBzdHJ1Y3QgZGVudHJ5ICpyb290KQogCWlmICghZ2lkX2VxKG9wdHMtPmdpZCwgR0xPQkFMX1JP
T1RfR0lEKSkKIAkJc2VxX3ByaW50ZihtLCAiLGdpZD0ldSIsCiAJCQkgICBmcm9tX2tnaWRfbXVu
Z2VkKCZpbml0X3VzZXJfbnMsIG9wdHMtPmdpZCkpOwotCWlmIChvcHRzLT5pb2NoYXJzZXQpCi0J
CXNlcV9wcmludGYobSwgIixpb2NoYXJzZXQ9JXMiLCBvcHRzLT5pb2NoYXJzZXQpOworCWlmIChu
bHMpCisJCXNlcV9wcmludGYobSwgIixpb2NoYXJzZXQ9JXMiLCBubHMtPmNoYXJzZXQpOworCWVs
c2UKKwkJc2VxX3B1dHMobSwgIixpb2NoYXJzZXQ9dXRmOCIpOwogCWlmIChvcHRzLT5kZWJ1ZykK
IAkJc2VxX3B1dHMobSwgIixkZWJ1ZyIpOwogCXJldHVybiAwOwpAQCAtODE1LDYgKzgxOCw3IEBA
IGJlZnNfZmlsbF9zdXBlcihzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLCB2b2lkICpkYXRhLCBpbnQg
c2lsZW50KQogCWNvbnN0IHVuc2lnbmVkIGxvbmcgc2JfYmxvY2sgPSAwOwogCWNvbnN0IG9mZl90
IHg4Nl9zYl9vZmYgPSA1MTI7CiAJaW50IGJsb2Nrc2l6ZTsKKwljb25zdCBjaGFyICpwOwogCiAJ
c2ItPnNfZnNfaW5mbyA9IGt6YWxsb2Moc2l6ZW9mKCpiZWZzX3NiKSwgR0ZQX0tFUk5FTCk7CiAJ
aWYgKHNiLT5zX2ZzX2luZm8gPT0gTlVMTCkKQEAgLTkwNyw4ICs5MTEsMTEgQEAgYmVmc19maWxs
X3N1cGVyKHN0cnVjdCBzdXBlcl9ibG9jayAqc2IsIHZvaWQgKmRhdGEsIGludCBzaWxlbnQpCiAJ
CWdvdG8gdW5hY3F1aXJlX3ByaXZfc2JwOwogCX0KIAorCXAgPSBiZWZzX3NiLT5tb3VudF9vcHRz
LmlvY2hhcnNldCA/IGJlZnNfc2ItPm1vdW50X29wdHMuaW9jaGFyc2V0IDogQ09ORklHX05MU19E
RUZBVUxUOworCWlmIChzdHJjbXAocCwgInV0ZjgiKSA9PSAwKSB7CisJCWJlZnNfZGVidWcoc2Is
ICJVc2luZyBuYXRpdmUgVVRGLTggd2l0aG91dCBubHMiKTsKIAkvKiBsb2FkIG5scyBsaWJyYXJ5
ICovCi0JaWYgKGJlZnNfc2ItPm1vdW50X29wdHMuaW9jaGFyc2V0KSB7CisJfSBlbHNlIGlmIChi
ZWZzX3NiLT5tb3VudF9vcHRzLmlvY2hhcnNldCkgewogCQliZWZzX2RlYnVnKHNiLCAiTG9hZGlu
ZyBubHM6ICVzIiwKIAkJCSAgIGJlZnNfc2ItPm1vdW50X29wdHMuaW9jaGFyc2V0KTsKIAkJYmVm
c19zYi0+bmxzID0gbG9hZF9ubHMoYmVmc19zYi0+bW91bnRfb3B0cy5pb2NoYXJzZXQpOwotLSAK
Mi4yMC4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Ckpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZz
LWRpc2N1c3Npb24K
