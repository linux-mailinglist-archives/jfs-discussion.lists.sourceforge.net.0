Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3D065631A
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMs-00035Y-MB;
	Mon, 26 Dec 2022 14:22:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMq-00034k-V2;
 Mon, 26 Dec 2022 14:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ceu7rm0zpGm/GJmhTlhx/aTfbFxYH6EaTcvQWJG9vJc=; b=b+ugYZh54DnQf5NzO/8PGQlQo0
 XQL6TLNXJsp2/lo3ISXzmfQAnlIeGfBNa4/wR1T/A8bhX4ipoko72bhz0KXWE4Rvd8AjuRb4wDfWR
 sxGnfigGSwYPZMPWEU4WAOs2S+cn1WzwlAGBky6G0TJM69+/jFMfcydnYAHyHCyZC6vU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ceu7rm0zpGm/GJmhTlhx/aTfbFxYH6EaTcvQWJG9vJc=; b=TpHFEmwtj0xQiCb4Qq99LJ1YdG
 jQGcz3hi0oA/CWEOo0euI9HfmxmLA3b+QtpLG9NcxI/R2ho0qTwhy4AlBk3i0Rdyi/oOpEMX2FvwH
 IqtlguR/DQ9kT5jya12EEhECIX0quEr4XhqUuFALg504GEV40NG0ZFVab9ELu9Qv6Es4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMq-0002CB-EE; Mon, 26 Dec 2022 14:22:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7927F60EB1;
 Mon, 26 Dec 2022 14:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFEEEC433D2;
 Mon, 26 Dec 2022 14:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064528;
 bh=n/8YydJ79H6S/fefunn6cS5wD6zvjrcaM37T3x4SMFw=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=ITEyGudTisy0cXAFBX6UA/0uO8IzKYmzwqZmTQfwsyU8qEjXxS8veri/7DHQtx2gE
 f/tC2MgveyNb4XnH2FXKEdpsxvf0aRkDnVAxTWvupN+x1TjHuDV6d0thwMxGap08hI
 mhkLBcN4s1dGvBHaM8AXziWJmTsKjlGE9eh2yuKx5056rBktL8OPI2ahK0J/RATzMy
 kGSGHNn/LeVBL6ZSVkSWPT2pK7fVoiDv9f6SIEyMjV31bk5PW1uuSNMvGFGOp5s8mK
 orIdD72HFP9XOkFHttlHqr+6DnRcNYGpQ207uuDc7fQtdj4tK2WM60BdcScb3TW3Bv
 Ne+0cPnSDicFQ==
Received: by pali.im (Postfix)
 id 7BAC69D7; Mon, 26 Dec 2022 15:22:08 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:39 +0100
Message-Id: <20221226142150.13324-8-pali@kernel.org>
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
 
 Content preview:  Ensure that specified charset in iocharset= mount option is
    used. On error correctly propagate error code back to the caller. Signed-off-by:
    Pali Rohár <pali@kernel.org> --- fs/befs/linuxvfs.c | 5 ++--- 1 file changed,
    2 insertions(+), 3 deletions(-) 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMq-0002CB-EE
Subject: [Jfs-discussion] [RFC PATCH v2 07/18] befs: Fix error processing
 when load_nls() fails
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

RW5zdXJlIHRoYXQgc3BlY2lmaWVkIGNoYXJzZXQgaW4gaW9jaGFyc2V0PSBtb3VudCBvcHRpb24g
aXMgdXNlZC4gT24gZXJyb3IKY29ycmVjdGx5IHByb3BhZ2F0ZSBlcnJvciBjb2RlIGJhY2sgdG8g
dGhlIGNhbGxlci4KClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+
Ci0tLQogZnMvYmVmcy9saW51eHZmcy5jIHwgNSArKy0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9iZWZzL2xpbnV4dmZz
LmMgYi9mcy9iZWZzL2xpbnV4dmZzLmMKaW5kZXggNWM2NjU1MGY3OTMzLi44ZDI5NTRlM2FmZDYg
MTAwNjQ0Ci0tLSBhL2ZzL2JlZnMvbGludXh2ZnMuYworKysgYi9mcy9iZWZzL2xpbnV4dmZzLmMK
QEAgLTkxMywxMCArOTEzLDkgQEAgYmVmc19maWxsX3N1cGVyKHN0cnVjdCBzdXBlcl9ibG9jayAq
c2IsIHZvaWQgKmRhdGEsIGludCBzaWxlbnQpCiAJCQkgICBiZWZzX3NiLT5tb3VudF9vcHRzLmlv
Y2hhcnNldCk7CiAJCWJlZnNfc2ItPm5scyA9IGxvYWRfbmxzKGJlZnNfc2ItPm1vdW50X29wdHMu
aW9jaGFyc2V0KTsKIAkJaWYgKCFiZWZzX3NiLT5ubHMpIHsKLQkJCWJlZnNfd2FybmluZyhzYiwg
IkNhbm5vdCBsb2FkIG5scyAlcyIKLQkJCQkJIiBsb2FkaW5nIGRlZmF1bHQgbmxzIiwKKwkJCWJl
ZnNfZXJyb3Ioc2IsICJDYW5ub3QgbG9hZCBubHMgJXMiLAogCQkJCQliZWZzX3NiLT5tb3VudF9v
cHRzLmlvY2hhcnNldCk7Ci0JCQliZWZzX3NiLT5ubHMgPSBsb2FkX25sc19kZWZhdWx0KCk7CisJ
CQlnb3RvIHVuYWNxdWlyZV9wcml2X3NicDsKIAkJfQogCS8qIGxvYWQgZGVmYXVsdCBubHMgaWYg
bm9uZSBpcyBzcGVjaWZpZWQgIGluIG1vdW50IG9wdGlvbnMgKi8KIAl9IGVsc2UgewotLSAKMi4y
MC4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpm
cy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRp
c2N1c3Npb24K
