Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A7E3E4690
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jg-0004b3-FQ; Mon, 09 Aug 2021 13:27:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pali@kernel.org>)
 id 1mClcC-0005fH-3x; Sun, 08 Aug 2021 16:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lDejEcU2N4LyDuh+sBwZQ4ct6fd0aVyMEsDnSooUraU=; b=QGu4nq+dsI6NPM7gLHS5XTonm2
 cM9ptrVxQK15w445VBEWOesp/wcKKqJE34T3MT1mwhoH1xpTHvzO3KWWpc5ZjlFnGj4NO5oZigw0b
 Q8GLCQ9bougecch8UOhXL7wc0Y7i8fzjibJjGHLoTlwVEQzuyhNWZHg0vp7Z56pJkrnI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lDejEcU2N4LyDuh+sBwZQ4ct6fd0aVyMEsDnSooUraU=; b=NZZZ/tytj7bteIvPBNahShQuPk
 gW9Kasn6M4G7gN3f7VXzKTcWQYukPBsImrBH2xb6PenYiLYabUbWeKq7Iv0+fqSolMSbbaNbx0L/K
 DSZH48zI56z54wbgXXEjIzqoBVdAVRTgUwglAMWwHXzbNGvMzj7ssqIQJxVa2+GlEI4A=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClc5-00GyX1-OS; Sun, 08 Aug 2021 16:25:32 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B3C86101D;
 Sun,  8 Aug 2021 16:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439915;
 bh=CCbOjF4h8gnTbFB8EC68C16uQ5tIWZrtjoVHn9HD2fg=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=E+KscZX+ZPE+Jo3MK0DyGd64O/Ih5qoALWraOXZo+AA9RoS76bKzgVt70R1ObShCh
 lQepZYufzuiHS8LEouK2Tdn0Yvg3Fz1aSdKt9UT+Zsa0bhPknvpNtTJVxxOHpIqD5C
 DMIGFarRGtRwjA0OoJp+B0RO3z4FbKXMbMa5aAcgFzleGvykrtxgnSGC4yO6Uh6HD0
 FHeqyUPQYic/NOCimrO1lOkaqWZ/1ux0yitdhjPBZiLaI1u8M30I5Pw+8xWavjPFr3
 RQCwqcKfYabgkdiv2Wztl+5JsVuajSEsy7ToZbmtwStaKYjvsU1DxFIqSRn69jfRV9
 /WN0DKRegZiPA==
Received: by pali.im (Postfix)
 id 1D5D915B6; Sun,  8 Aug 2021 18:25:15 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:38 +0200
Message-Id: <20210808162453.1653-6-pali@kernel.org>
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
X-Headers-End: 1mClc5-00GyX1-OS
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:39 +0000
Subject: [Jfs-discussion] [RFC PATCH 05/20] ntfs: Undeprecate iocharset=
 mount option
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

T3RoZXIgZnMgZHJpdmVycyBhcmUgdXNpbmcgaW9jaGFyc2V0PSBtb3VudCBvcHRpb24gZm9yIHNw
ZWNpZnlpbmcgY2hhcnNldC4KU28gbWFyayBpb2NoYXJzZXQ9IG1vdW50IG9wdGlvbiBhcyBwcmVm
ZXJyZWQgYW5kIGRlcHJlY2F0ZSBubHM9IG1vdW50Cm9wdGlvbi4KClNpZ25lZC1vZmYtYnk6IFBh
bGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0tLQogZnMvbnRmcy9pbm9kZS5jICB8ICAyICst
CiBmcy9udGZzL3N1cGVyLmMgIHwgMTMgKysrKy0tLS0tLS0tLQogZnMvbnRmcy91bmlzdHIuYyB8
ICAzICsrLQogMyBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2ZzL250ZnMvaW5vZGUuYyBiL2ZzL250ZnMvaW5vZGUuYwppbmRleCA0
NDc0YWRiMzkzY2EuLjM2NzZmMTg1YjRhMCAxMDA2NDQKLS0tIGEvZnMvbnRmcy9pbm9kZS5jCisr
KyBiL2ZzL250ZnMvaW5vZGUuYwpAQCAtMjMwMyw3ICsyMzAzLDcgQEAgaW50IG50ZnNfc2hvd19v
cHRpb25zKHN0cnVjdCBzZXFfZmlsZSAqc2YsIHN0cnVjdCBkZW50cnkgKnJvb3QpCiAJCXNlcV9w
cmludGYoc2YsICIsZm1hc2s9MCVvIiwgdm9sLT5mbWFzayk7CiAJCXNlcV9wcmludGYoc2YsICIs
ZG1hc2s9MCVvIiwgdm9sLT5kbWFzayk7CiAJfQotCXNlcV9wcmludGYoc2YsICIsbmxzPSVzIiwg
dm9sLT5ubHNfbWFwLT5jaGFyc2V0KTsKKwlzZXFfcHJpbnRmKHNmLCAiLGlvY2hhcnNldD0lcyIs
IHZvbC0+bmxzX21hcC0+Y2hhcnNldCk7CiAJaWYgKE5Wb2xDYXNlU2Vuc2l0aXZlKHZvbCkpCiAJ
CXNlcV9wcmludGYoc2YsICIsY2FzZV9zZW5zaXRpdmUiKTsKIAlpZiAoTlZvbFNob3dTeXN0ZW1G
aWxlcyh2b2wpKQpkaWZmIC0tZ2l0IGEvZnMvbnRmcy9zdXBlci5jIGIvZnMvbnRmcy9zdXBlci5j
CmluZGV4IDBkN2U5NDhjYjI5Yy4uMDJkZTFhYTA1YjdjIDEwMDY0NAotLS0gYS9mcy9udGZzL3N1
cGVyLmMKKysrIGIvZnMvbnRmcy9zdXBlci5jCkBAIC0xOTIsMTEgKzE5Miw2IEBAIHN0YXRpYyBi
b29sIHBhcnNlX29wdGlvbnMobnRmc192b2x1bWUgKnZvbCwgY2hhciAqb3B0KQogCQkJbnRmc193
YXJuaW5nKHZvbC0+c2IsICJJZ25vcmluZyBvYnNvbGV0ZSBvcHRpb24gJXMuIiwKIAkJCQkJcCk7
CiAJCWVsc2UgaWYgKCFzdHJjbXAocCwgIm5scyIpIHx8ICFzdHJjbXAocCwgImlvY2hhcnNldCIp
KSB7Ci0JCQlpZiAoIXN0cmNtcChwLCAiaW9jaGFyc2V0IikpCi0JCQkJbnRmc193YXJuaW5nKHZv
bC0+c2IsICJPcHRpb24gaW9jaGFyc2V0IGlzICIKLQkJCQkJCSJkZXByZWNhdGVkLiBQbGVhc2Ug
dXNlICIKLQkJCQkJCSJvcHRpb24gbmxzPTxjaGFyc2V0bmFtZT4gaW4gIgotCQkJCQkJInRoZSBm
dXR1cmUuIik7CiAJCQlpZiAoIXYgfHwgISp2KQogCQkJCWdvdG8gbmVlZHNfYXJnOwogdXNlX3V0
Zjg6CkBAIC0yMTgsMTAgKzIxMywxMCBAQCBzdGF0aWMgYm9vbCBwYXJzZV9vcHRpb25zKG50ZnNf
dm9sdW1lICp2b2wsIGNoYXIgKm9wdCkKIAkJfSBlbHNlIGlmICghc3RyY21wKHAsICJ1dGY4Iikp
IHsKIAkJCWJvb2wgdmFsID0gZmFsc2U7CiAJCQludGZzX3dhcm5pbmcodm9sLT5zYiwgIk9wdGlv
biB1dGY4IGlzIG5vIGxvbmdlciAiCi0JCQkJICAgInN1cHBvcnRlZCwgdXNpbmcgb3B0aW9uIG5s
cz11dGY4LiBQbGVhc2UgIgotCQkJCSAgICJ1c2Ugb3B0aW9uIG5scz11dGY4IGluIHRoZSBmdXR1
cmUgYW5kICIKLQkJCQkgICAibWFrZSBzdXJlIHV0ZjggaXMgY29tcGlsZWQgZWl0aGVyIGFzIGEg
IgotCQkJCSAgICJtb2R1bGUgb3IgaW50byB0aGUga2VybmVsLiIpOworCQkJCSAgICJzdXBwb3J0
ZWQsIHVzaW5nIG9wdGlvbiBpb2NoYXJzZXQ9dXRmOC4gIgorCQkJCSAgICJQbGVhc2UgdXNlIG9w
dGlvbiBpb2NoYXJzZXQ9dXRmOCBpbiB0aGUgIgorCQkJCSAgICJmdXR1cmUgYW5kIG1ha2Ugc3Vy
ZSB1dGY4IGlzIGNvbXBpbGVkICIKKwkJCQkgICAiZWl0aGVyIGFzIGEgbW9kdWxlIG9yIGludG8g
dGhlIGtlcm5lbC4iKTsKIAkJCWlmICghdiB8fCAhKnYpCiAJCQkJdmFsID0gdHJ1ZTsKIAkJCWVs
c2UgaWYgKCFzaW1wbGVfZ2V0Ym9vbCh2LCAmdmFsKSkKZGlmZiAtLWdpdCBhL2ZzL250ZnMvdW5p
c3RyLmMgYi9mcy9udGZzL3VuaXN0ci5jCmluZGV4IGE2YjZjNjRmMTRhOS4uNzVhN2Y3M2JjY2Rk
IDEwMDY0NAotLS0gYS9mcy9udGZzL3VuaXN0ci5jCisrKyBiL2ZzL250ZnMvdW5pc3RyLmMKQEAg
LTM3Miw3ICszNzIsOCBAQCByZXRyeToJCQl3YyA9IG5scy0+dW5pMmNoYXIobGUxNl90b19jcHUo
aW5zW2ldKSwgbnMgKyBvLAogY29udmVyc2lvbl9lcnI6CiAJbnRmc19lcnJvcih2b2wtPnNiLCAi
VW5pY29kZSBuYW1lIGNvbnRhaW5zIGNoYXJhY3RlcnMgdGhhdCBjYW5ub3QgYmUgIgogCQkJImNv
bnZlcnRlZCB0byBjaGFyYWN0ZXIgc2V0ICVzLiAgWW91IG1pZ2h0IHdhbnQgdG8gIgotCQkJInRy
eSB0byB1c2UgdGhlIG1vdW50IG9wdGlvbiBubHM9dXRmOC4iLCBubHMtPmNoYXJzZXQpOworCQkJ
InRyeSB0byB1c2UgdGhlIG1vdW50IG9wdGlvbiBpb2NoYXJzZXQ9dXRmOC4iLAorCQkJbmxzLT5j
aGFyc2V0KTsKIAlpZiAobnMgIT0gKm91dHMpCiAJCWtmcmVlKG5zKTsKIAlpZiAod2MgIT0gLUVO
QU1FVE9PTE9ORykKLS0gCjIuMjAuMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
