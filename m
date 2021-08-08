Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 054E03E4694
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jg-0004bF-QC; Mon, 09 Aug 2021 13:27:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pali@kernel.org>)
 id 1mClcE-0005fi-MU; Sun, 08 Aug 2021 16:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HiHEaNv1AI4jZjx9dKrdMTfo7CaQP2WvqWE4zFTkSJ8=; b=ElGtrOg2yq76AtMNzU97zgIg2d
 PkttKVXlMazPBr1OI8YZlAsc4fc2LkKPsZ170nmLN0LVSLS1yHaViYmMWDjQjIIECCwSBvjdN6lf0
 KCIx8q8Tl7sKk3RSAOLYrH4Hu8hr71pVOHFlkyIx3H8EVi8nO57Dk9kVQiWa/C/XkXNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HiHEaNv1AI4jZjx9dKrdMTfo7CaQP2WvqWE4zFTkSJ8=; b=FedzBsWOSt4asHdtQREF4bfhaL
 IRX9lE9LEJ0HsmvymTooGWrgYIPt8S5vI7KEPsy1B7iknvdieySu8Y9yJby+tDoyGES3imyMHLbXp
 6dEAhplqCEwyzvw+GGpCXBBSfau6CJA6R/SrgKmygTkpD4sQJBCxKBKRcoEsx6gAGu8U=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcD-00GyXd-CA; Sun, 08 Aug 2021 16:25:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 478D9610E7;
 Sun,  8 Aug 2021 16:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439917;
 bh=xmLXv5i7UZvG04SFDJpgGHD2RFkBzJD+zP5l8qNjoBE=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=AMesRXMciqTy9Z+x+pnrhCk8JGOS/orqjtIWJcARwaLKeo6rCnwvABVawy59SFgk3
 58vuidq58/vYYQVZ+riALGfKfsJIS5PrE1PjmxNL+rwInsZcUzEhOTDlAux/oGtpUo
 4SqVdxzndy8XgVRDYzPds6thgt7O0V5uaQG7dimlyktHJLz1fqjGbJFm8+MShhiLRN
 NJh+EfeSiMGjOdn28KEE4QID6GsT5oUYPjAsm9Y50PblNrgSYR5U+wm8vfKtOu1lL5
 BVC4WyAZlmciw14uVn4tWe23S14Z4WC/tgNVFGFO/RBJq7f+s7/seeKfpKqU/oGWpk
 yHIzD0DrI+5AA==
Received: by pali.im (Postfix)
 id 0316F1430; Sun,  8 Aug 2021 18:25:17 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:42 +0200
Message-Id: <20210808162453.1653-10-pali@kernel.org>
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
X-Headers-End: 1mClcD-00GyXd-CA
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:40 +0000
Subject: [Jfs-discussion] [RFC PATCH 09/20] befs: Fix error processing when
 load_nls() fails
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
LmMgYi9mcy9iZWZzL2xpbnV4dmZzLmMKaW5kZXggZTA3MTE1N2JkYWEzLi45NjNkYTNlOWFiNWQg
MTAwNjQ0Ci0tLSBhL2ZzL2JlZnMvbGludXh2ZnMuYworKysgYi9mcy9iZWZzL2xpbnV4dmZzLmMK
QEAgLTkxNCwxMCArOTE0LDkgQEAgYmVmc19maWxsX3N1cGVyKHN0cnVjdCBzdXBlcl9ibG9jayAq
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
