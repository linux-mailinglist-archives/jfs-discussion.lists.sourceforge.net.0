Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11777656315
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMq-00034b-PV;
	Mon, 26 Dec 2022 14:22:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMo-000343-3N;
 Mon, 26 Dec 2022 14:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ci2JDB5RZe5RHEnjxZtPaL+9YHnyub83xJqNOcuna4c=; b=kWYd64LlcT9hDSsllTK4VoNLJ5
 ob408Q65dZjd/h6BJQYtZwJoNQgbVcMlE44L/VsDRggThKPO/Q9VBuneBOig+Deunyd2iJo5hlL2C
 YjVuD8uTMX88dTpn9d8eleuPBmgpowR3U7ybjhvNflGeUTND0+haOBA9W1o1MrPbl6Jw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ci2JDB5RZe5RHEnjxZtPaL+9YHnyub83xJqNOcuna4c=; b=cjzoLu4EJTg1JiUwmzfH6zQvUj
 fy5qMXW/OTBvyLIg2WCbFv+6Moh7NRDaqwCmqsdMEI/ihVs0I8aFZz2G4ZlCp5lSePXraPKuBLaiO
 kdNGleAIcZMOq8oJFpZVAtCT+vO86CHY/fQBSQa65SSabzWv+5Pg8H/dh70lhcTnQHVU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMk-0002By-Qa; Mon, 26 Dec 2022 14:22:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 88E0360EAD;
 Mon, 26 Dec 2022 14:22:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 005B0C433F2;
 Mon, 26 Dec 2022 14:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064524;
 bh=ZrKrntGH0WofuwsAtdP0jIQ8uCLZbrmm0J3jNna5drc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=FW4Apmw9ZjRYOfjahl9pzNoc+QFOhJinA5x6Ij2t0JIhlYF/TlSqgb9XIBbyK9Tdz
 iw/0yyFmCyK6zTIP/BUuPm8egQPs30Yxse+X9XZ+HEjgaVGlaiHeGqQEolsQiQcFXU
 wdmU+RkiyVzZ9Mi52Y5raowONK2gp3utyAAoTRhHkfTIK6EaV+ngVjqK6mmgke/I7W
 k7VtigVCtMeCrXr/hNlYwovyQDcXLhkaReHuVQorcboQsAN68VYK6yme+Sqwwi8/0a
 jy8NTat8PJ5NQz8W05JfMewVtsNT93b1P8QCB9bqNJROsDDLqVVsmCJ0mZ4qCpCVMO
 duGDzzDCik72w==
Received: by pali.im (Postfix)
 id AD3BB9D7; Mon, 26 Dec 2022 15:22:03 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:35 +0100
Message-Id: <20221226142150.13324-4-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20221226142150.13324-1-pali@kernel.org>
References: <20221226142150.13324-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Other fs drivers are using iocharset= mount option for specifying
    charset. So mark iocharset= mount option as preferred and deprecate nls=
   mount option. Signed-off-by: Pali Rohár <pali@kernel.org> --- Documentation/filesystems/ntfs.rst
    | 5 ++--- fs/ntfs/inode.c | 2 +- fs/ntfs/super.c | 13 ++++--------- fs/ntfs/unistr.c
    | 3 ++- 4 files changed, 9 inse [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMk-0002By-Qa
Subject: [Jfs-discussion] [RFC PATCH v2 03/18] ntfs: Undeprecate iocharset=
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
bGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0tLQogRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVt
cy9udGZzLnJzdCB8ICA1ICsrLS0tCiBmcy9udGZzL2lub2RlLmMgICAgICAgICAgICAgICAgICAg
IHwgIDIgKy0KIGZzL250ZnMvc3VwZXIuYyAgICAgICAgICAgICAgICAgICAgfCAxMyArKysrLS0t
LS0tLS0tCiBmcy9udGZzL3VuaXN0ci5jICAgICAgICAgICAgICAgICAgIHwgIDMgKystCiA0IGZp
bGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy9udGZzLnJzdCBiL0RvY3VtZW50YXRpb24vZmls
ZXN5c3RlbXMvbnRmcy5yc3QKaW5kZXggNWJiMDkzYTI2NDg1Li41MTc4NDE0MWI1NmEgMTAwNjQ0
Ci0tLSBhL0RvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvbnRmcy5yc3QKKysrIGIvRG9jdW1lbnRh
dGlvbi9maWxlc3lzdGVtcy9udGZzLnJzdApAQCAtMTA5LDEwICsxMDksOSBAQCBtb3VudCBjb21t
YW5kIChtYW4gOCBtb3VudCwgYWxzbyBzZWUgbWFuIDUgZnN0YWIpLCB0aGUgTlRGUyBkcml2ZXIg
c3VwcG9ydHMgdGhlCiBmb2xsb3dpbmcgbW91bnQgb3B0aW9uczoKIAogPT09PT09PT09PT09PT09
PT09PT09PT0gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PQotaW9jaGFyc2V0PW5hbWUJCURlcHJlY2F0ZWQgb3B0aW9uLiAgU3RpbGwgc3VwcG9y
dGVkIGJ1dCBwbGVhc2UgdXNlCi0JCQlubHM9bmFtZSBpbiB0aGUgZnV0dXJlLiAgU2VlIGRlc2Ny
aXB0aW9uIGZvciBubHM9bmFtZS4KK25scz1uYW1lCQlBbGlhcyBmb3IgYGBpb2NoYXJzZXQ9YGAg
bW91bnQgb3B0aW9uLgogCi1ubHM9bmFtZQkJQ2hhcmFjdGVyIHNldCB0byB1c2Ugd2hlbiByZXR1
cm5pbmcgZmlsZSBuYW1lcy4KK2lvY2hhcnNldD1uYW1lCQlDaGFyYWN0ZXIgc2V0IHRvIHVzZSB3
aGVuIHJldHVybmluZyBmaWxlIG5hbWVzLgogCQkJVW5saWtlIFZGQVQsIE5URlMgc3VwcHJlc3Nl
cyBuYW1lcyB0aGF0IGNvbnRhaW4KIAkJCXVuY29udmVydGlibGUgY2hhcmFjdGVycy4gIE5vdGUg
dGhhdCBtb3N0IGNoYXJhY3RlcgogCQkJc2V0cyBjb250YWluIGluc3VmZmljaWVudCBjaGFyYWN0
ZXJzIHRvIHJlcHJlc2VudCBhbGwKZGlmZiAtLWdpdCBhL2ZzL250ZnMvaW5vZGUuYyBiL2ZzL250
ZnMvaW5vZGUuYwppbmRleCAwOGM2NTkzMzJlMjYuLjJhYjA3MWM0NTYwZCAxMDA2NDQKLS0tIGEv
ZnMvbnRmcy9pbm9kZS5jCisrKyBiL2ZzL250ZnMvaW5vZGUuYwpAQCAtMjMxNCw3ICsyMzE0LDcg
QEAgaW50IG50ZnNfc2hvd19vcHRpb25zKHN0cnVjdCBzZXFfZmlsZSAqc2YsIHN0cnVjdCBkZW50
cnkgKnJvb3QpCiAJCXNlcV9wcmludGYoc2YsICIsZm1hc2s9MCVvIiwgdm9sLT5mbWFzayk7CiAJ
CXNlcV9wcmludGYoc2YsICIsZG1hc2s9MCVvIiwgdm9sLT5kbWFzayk7CiAJfQotCXNlcV9wcmlu
dGYoc2YsICIsbmxzPSVzIiwgdm9sLT5ubHNfbWFwLT5jaGFyc2V0KTsKKwlzZXFfcHJpbnRmKHNm
LCAiLGlvY2hhcnNldD0lcyIsIHZvbC0+bmxzX21hcC0+Y2hhcnNldCk7CiAJaWYgKE5Wb2xDYXNl
U2Vuc2l0aXZlKHZvbCkpCiAJCXNlcV9wcmludGYoc2YsICIsY2FzZV9zZW5zaXRpdmUiKTsKIAlp
ZiAoTlZvbFNob3dTeXN0ZW1GaWxlcyh2b2wpKQpkaWZmIC0tZ2l0IGEvZnMvbnRmcy9zdXBlci5j
IGIvZnMvbnRmcy9zdXBlci5jCmluZGV4IDAwMWY0ZTA1M2M4NS4uNTU3NjJhYmRjMjJhIDEwMDY0
NAotLS0gYS9mcy9udGZzL3N1cGVyLmMKKysrIGIvZnMvbnRmcy9zdXBlci5jCkBAIC0xOTIsMTEg
KzE5Miw2IEBAIHN0YXRpYyBib29sIHBhcnNlX29wdGlvbnMobnRmc192b2x1bWUgKnZvbCwgY2hh
ciAqb3B0KQogCQkJbnRmc193YXJuaW5nKHZvbC0+c2IsICJJZ25vcmluZyBvYnNvbGV0ZSBvcHRp
b24gJXMuIiwKIAkJCQkJcCk7CiAJCWVsc2UgaWYgKCFzdHJjbXAocCwgIm5scyIpIHx8ICFzdHJj
bXAocCwgImlvY2hhcnNldCIpKSB7Ci0JCQlpZiAoIXN0cmNtcChwLCAiaW9jaGFyc2V0IikpCi0J
CQkJbnRmc193YXJuaW5nKHZvbC0+c2IsICJPcHRpb24gaW9jaGFyc2V0IGlzICIKLQkJCQkJCSJk
ZXByZWNhdGVkLiBQbGVhc2UgdXNlICIKLQkJCQkJCSJvcHRpb24gbmxzPTxjaGFyc2V0bmFtZT4g
aW4gIgotCQkJCQkJInRoZSBmdXR1cmUuIik7CiAJCQlpZiAoIXYgfHwgISp2KQogCQkJCWdvdG8g
bmVlZHNfYXJnOwogdXNlX3V0Zjg6CkBAIC0yMTgsMTAgKzIxMywxMCBAQCBzdGF0aWMgYm9vbCBw
YXJzZV9vcHRpb25zKG50ZnNfdm9sdW1lICp2b2wsIGNoYXIgKm9wdCkKIAkJfSBlbHNlIGlmICgh
c3RyY21wKHAsICJ1dGY4IikpIHsKIAkJCWJvb2wgdmFsID0gZmFsc2U7CiAJCQludGZzX3dhcm5p
bmcodm9sLT5zYiwgIk9wdGlvbiB1dGY4IGlzIG5vIGxvbmdlciAiCi0JCQkJICAgInN1cHBvcnRl
ZCwgdXNpbmcgb3B0aW9uIG5scz11dGY4LiBQbGVhc2UgIgotCQkJCSAgICJ1c2Ugb3B0aW9uIG5s
cz11dGY4IGluIHRoZSBmdXR1cmUgYW5kICIKLQkJCQkgICAibWFrZSBzdXJlIHV0ZjggaXMgY29t
cGlsZWQgZWl0aGVyIGFzIGEgIgotCQkJCSAgICJtb2R1bGUgb3IgaW50byB0aGUga2VybmVsLiIp
OworCQkJCSAgICJzdXBwb3J0ZWQsIHVzaW5nIG9wdGlvbiBpb2NoYXJzZXQ9dXRmOC4gIgorCQkJ
CSAgICJQbGVhc2UgdXNlIG9wdGlvbiBpb2NoYXJzZXQ9dXRmOCBpbiB0aGUgIgorCQkJCSAgICJm
dXR1cmUgYW5kIG1ha2Ugc3VyZSB1dGY4IGlzIGNvbXBpbGVkICIKKwkJCQkgICAiZWl0aGVyIGFz
IGEgbW9kdWxlIG9yIGludG8gdGhlIGtlcm5lbC4iKTsKIAkJCWlmICghdiB8fCAhKnYpCiAJCQkJ
dmFsID0gdHJ1ZTsKIAkJCWVsc2UgaWYgKCFzaW1wbGVfZ2V0Ym9vbCh2LCAmdmFsKSkKZGlmZiAt
LWdpdCBhL2ZzL250ZnMvdW5pc3RyLmMgYi9mcy9udGZzL3VuaXN0ci5jCmluZGV4IGE2YjZjNjRm
MTRhOS4uNzVhN2Y3M2JjY2RkIDEwMDY0NAotLS0gYS9mcy9udGZzL3VuaXN0ci5jCisrKyBiL2Zz
L250ZnMvdW5pc3RyLmMKQEAgLTM3Miw3ICszNzIsOCBAQCByZXRyeToJCQl3YyA9IG5scy0+dW5p
MmNoYXIobGUxNl90b19jcHUoaW5zW2ldKSwgbnMgKyBvLAogY29udmVyc2lvbl9lcnI6CiAJbnRm
c19lcnJvcih2b2wtPnNiLCAiVW5pY29kZSBuYW1lIGNvbnRhaW5zIGNoYXJhY3RlcnMgdGhhdCBj
YW5ub3QgYmUgIgogCQkJImNvbnZlcnRlZCB0byBjaGFyYWN0ZXIgc2V0ICVzLiAgWW91IG1pZ2h0
IHdhbnQgdG8gIgotCQkJInRyeSB0byB1c2UgdGhlIG1vdW50IG9wdGlvbiBubHM9dXRmOC4iLCBu
bHMtPmNoYXJzZXQpOworCQkJInRyeSB0byB1c2UgdGhlIG1vdW50IG9wdGlvbiBpb2NoYXJzZXQ9
dXRmOC4iLAorCQkJbmxzLT5jaGFyc2V0KTsKIAlpZiAobnMgIT0gKm91dHMpCiAJCWtmcmVlKG5z
KTsKIAlpZiAod2MgIT0gLUVOQU1FVE9PTE9ORykKLS0gCjIuMjAuMQoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5n
IGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
