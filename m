Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (unknown [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D782F3E469D
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jg-0004bJ-UJ; Mon, 09 Aug 2021 13:27:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClcE-0003On-OI; Sun, 08 Aug 2021 16:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j0viVAOrpRaH0noDcoSw/E/IT4i0YRSKfR9mjzxJ2Bg=; b=jJyCkIAzV0KeTNlrCoKScNNNpz
 E9hRaS6vMkSN5nVwGAP/fEDOgyFJOthNnCqWXdtOW3gA1DCVuXzB6XEhp3Ktqdx51A61W0BGL6Vfv
 TSblHLjy19myic4X936NfapYc26g72pZlqnfdSBRuBlYg5G8j0aIAUSdHG4oHK5cYeeI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j0viVAOrpRaH0noDcoSw/E/IT4i0YRSKfR9mjzxJ2Bg=; b=Ab3wwIISZOGExUYQwEyw4YuZyC
 6j37L5vFhlwCU0LhsN7SJaY85721Fz1lgAaAChvzG2NS11ZOr5LOixZOuZWZ6tlB8758HFo3u49gX
 6GZ5EPkVo9BmORBJxuTLnEAnPtLfqDwHZ2IKOk91Y9Wh9ivKK35UZMqCm9JNoiQwxd2Q=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcD-0001wR-CF; Sun, 08 Aug 2021 16:25:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AC3B6610A1;
 Sun,  8 Aug 2021 16:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439917;
 bh=s8/pegOQ7RYOq+lh3ThWZRo1NRJOC4wAYqGAubgRpOU=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=jvq5yzqR6RoEecl4y1TjillgIF7I6qPa74Gyb7EtLccaqf3UZZeDSACwA5V9YcoEM
 +0nDO8hc3r1SW4TEQzWPXRkwesbSyw+Tp6lRiTI9pOMSSoaXB3YY+TEAi5DSvdeJfn
 oSuaQ+hG8uRvT3ByMfTCH0Dfbyx8RQBKfp9pWCOVYY8Tvi1Gp82FIqIlJsk5jAGFSE
 kq29jYqwhS+AD9rFH//ptfRxG3SAKEvSWxWq2Br4+Vwo9L6m+a3n+d/HlC5mAsfCET
 BNC71n1V9DRYoFe0DnjEv2ZqNOoJpCawE4648iyrsqLn4a2m4twkzZpY9jCqLVn7AY
 2RTQoRtOuv9rg==
Received: by pali.im (Postfix)
 id 6E27613DC; Sun,  8 Aug 2021 18:25:17 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:43 +0200
Message-Id: <20210808162453.1653-11-pali@kernel.org>
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
X-Headers-End: 1mClcD-0001wR-CF
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:40 +0000
Subject: [Jfs-discussion] [RFC PATCH 10/20] befs: Allow to use native UTF-8
 mode
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
cmc+Ci0tLQogZnMvYmVmcy9saW51eHZmcy5jIHwgMTEgKysrKysrKystLS0KIDEgZmlsZSBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMvYmVm
cy9saW51eHZmcy5jIGIvZnMvYmVmcy9saW51eHZmcy5jCmluZGV4IDk2M2RhM2U5YWI1ZC4uMDAw
Zjk0NmI5MmI2IDEwMDY0NAotLS0gYS9mcy9iZWZzL2xpbnV4dmZzLmMKKysrIGIvZnMvYmVmcy9s
aW51eHZmcy5jCkBAIC03NzAsNiArNzcwLDcgQEAgc3RhdGljIGludCBiZWZzX3Nob3dfb3B0aW9u
cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBkZW50cnkgKnJvb3QpCiB7CiAJc3RydWN0IGJl
ZnNfc2JfaW5mbyAqYmVmc19zYiA9IEJFRlNfU0Iocm9vdC0+ZF9zYik7CiAJc3RydWN0IGJlZnNf
bW91bnRfb3B0aW9ucyAqb3B0cyA9ICZiZWZzX3NiLT5tb3VudF9vcHRzOworCXN0cnVjdCBubHNf
dGFibGUgKm5scyA9IGJlZnNfc2ItPm5sczsKIAogCWlmICghdWlkX2VxKG9wdHMtPnVpZCwgR0xP
QkFMX1JPT1RfVUlEKSkKIAkJc2VxX3ByaW50ZihtLCAiLHVpZD0ldSIsCkBAIC03NzcsOCArNzc4
LDEwIEBAIHN0YXRpYyBpbnQgYmVmc19zaG93X29wdGlvbnMoc3RydWN0IHNlcV9maWxlICptLCBz
dHJ1Y3QgZGVudHJ5ICpyb290KQogCWlmICghZ2lkX2VxKG9wdHMtPmdpZCwgR0xPQkFMX1JPT1Rf
R0lEKSkKIAkJc2VxX3ByaW50ZihtLCAiLGdpZD0ldSIsCiAJCQkgICBmcm9tX2tnaWRfbXVuZ2Vk
KCZpbml0X3VzZXJfbnMsIG9wdHMtPmdpZCkpOwotCWlmIChvcHRzLT5pb2NoYXJzZXQpCi0JCXNl
cV9wcmludGYobSwgIixpb2NoYXJzZXQ9JXMiLCBvcHRzLT5pb2NoYXJzZXQpOworCWlmIChubHMp
CisJCXNlcV9wcmludGYobSwgIixpb2NoYXJzZXQ9JXMiLCBubHMtPmNoYXJzZXQpOworCWVsc2UK
KwkJc2VxX3B1dHMobSwgIixpb2NoYXJzZXQ9dXRmOCIpOwogCWlmIChvcHRzLT5kZWJ1ZykKIAkJ
c2VxX3B1dHMobSwgIixkZWJ1ZyIpOwogCXJldHVybiAwOwpAQCAtOTA4LDggKzkxMSwxMCBAQCBi
ZWZzX2ZpbGxfc3VwZXIoc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgdm9pZCAqZGF0YSwgaW50IHNp
bGVudCkKIAkJZ290byB1bmFjcXVpcmVfcHJpdl9zYnA7CiAJfQogCisJaWYgKHN0cmNtcChvcHQu
aW9jaGFyc2V0ID8gb3B0LmlvY2hhcnNldCA6IENPTkZJR19OTFNfREVGQVVMVCwgInV0ZjgiKSA9
PSAwKSB7CisJCWJlZnNfZGVidWcoc2IsICJVc2luZyBuYXRpdmUgVVRGLTggd2l0aG91dCBubHMi
KTsKIAkvKiBsb2FkIG5scyBsaWJyYXJ5ICovCi0JaWYgKGJlZnNfc2ItPm1vdW50X29wdHMuaW9j
aGFyc2V0KSB7CisJfSBlbHNlIGlmIChiZWZzX3NiLT5tb3VudF9vcHRzLmlvY2hhcnNldCkgewog
CQliZWZzX2RlYnVnKHNiLCAiTG9hZGluZyBubHM6ICVzIiwKIAkJCSAgIGJlZnNfc2ItPm1vdW50
X29wdHMuaW9jaGFyc2V0KTsKIAkJYmVmc19zYi0+bmxzID0gbG9hZF9ubHMoYmVmc19zYi0+bW91
bnRfb3B0cy5pb2NoYXJzZXQpOwotLSAKMi4yMC4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMt
ZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
