Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE16656319
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMs-0006Sx-0F;
	Mon, 26 Dec 2022 14:22:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMo-0006SP-2G;
 Mon, 26 Dec 2022 14:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KywKEEZ6BXdLepfsftu36blI/hVu70rnpqO9tl4n2PQ=; b=hwuiB8hzpXSCmmvSoGkYRyM7I/
 ZWkjQEJ8Ni/TEsjUhD17BS5UZuHQIKScQS6Xzq2qmL7yZUGniQSwDe5YzPfpl8BZmp3Ncf+8n5jdt
 gco4iVnNQhGwD6kLAdnrE454ls/9dFImQDoCzUGoBFOSve+wb5nvhNxKekYCu29sqUE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KywKEEZ6BXdLepfsftu36blI/hVu70rnpqO9tl4n2PQ=; b=gDvFKp0lAfJNQKhpMbxPVx0WSj
 8w07yADhkIeWNWhWIIq2LkI++/NNAc7OnYp0qnSMzK8911XNrH6ULer5jcjZC/BxibwjC1pwo3mel
 3DWhbHhdBh6vJyLJQBkzxHfp8PbFMNHuA29xhzXwz0SmwL8fhFKVZXtjPdB7ysCMAXlI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMm-00DHhJ-Q1; Mon, 26 Dec 2022 14:22:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6633B60EA0;
 Mon, 26 Dec 2022 14:22:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9EA4C433D2;
 Mon, 26 Dec 2022 14:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064526;
 bh=ONMvtrjl0bWB4AJ/38sMd2FmiCDCBw+bnetddn3dC24=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=BtF/0hhHi7VDPuh08/nofWycrKkja0tYnSt9ZU1A049aN/GJy21ObSnDwEwMD2iCM
 93ORyhD0HbbugTIyy62xetc+3pR6P9jADZXJKGu3XfBkY04qNSHxWLK+jEqO8dNax9
 kcBgBevZ7IoV1tmQIhSXsy+WTTFoKKE910vIxllHEulPCLiG+Cf2cjt1LXplFtfopP
 Rsml4vweLF5idhuSWLsluFqQA/8vPBuEH0TzTvghg4L3QEY28s5+x6zAqkiRMyLCJm
 LfHApyp/MSrXItoCw5ijEpjQayVrmZNJOT5lbYO5G7SWc2PDpzmaHtBCR6xjqdkF+U
 r58o+Uruxdt2Q==
Received: by pali.im (Postfix)
 id 63BF99D7; Mon, 26 Dec 2022 15:22:06 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:37 +0100
Message-Id: <20221226142150.13324-6-pali@kernel.org>
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
 
 Content preview:  Mount option is named iocharset= and not charset= Signed-off-by:
    Pali Rohár <pali@kernel.org> --- fs/befs/linuxvfs.c | 2 +- 1 file changed,
    1 insertion(+), 1 deletion(-) diff --git a/fs/befs/linuxvfs.c b/fs/befs/linuxvfs.c
    index 32749fcee090..f983852ba863 100644 --- a/fs/befs/linuxvfs.c +++ b/fs/befs/linuxvfs.c
    @@ -777,7 +777,7 @@ static int befs_show_options(struct s [...] 
 
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
X-Headers-End: 1p9oMm-00DHhJ-Q1
Subject: [Jfs-discussion] [RFC PATCH v2 05/18] befs: Fix printing iocharset=
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

TW91bnQgb3B0aW9uIGlzIG5hbWVkIGlvY2hhcnNldD0gYW5kIG5vdCBjaGFyc2V0PQoKU2lnbmVk
LW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KLS0tCiBmcy9iZWZzL2xpbnV4
dmZzLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9mcy9iZWZzL2xpbnV4dmZzLmMgYi9mcy9iZWZzL2xpbnV4dmZzLmMK
aW5kZXggMzI3NDlmY2VlMDkwLi5mOTgzODUyYmE4NjMgMTAwNjQ0Ci0tLSBhL2ZzL2JlZnMvbGlu
dXh2ZnMuYworKysgYi9mcy9iZWZzL2xpbnV4dmZzLmMKQEAgLTc3Nyw3ICs3NzcsNyBAQCBzdGF0
aWMgaW50IGJlZnNfc2hvd19vcHRpb25zKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGRlbnRy
eSAqcm9vdCkKIAkJc2VxX3ByaW50ZihtLCAiLGdpZD0ldSIsCiAJCQkgICBmcm9tX2tnaWRfbXVu
Z2VkKCZpbml0X3VzZXJfbnMsIG9wdHMtPmdpZCkpOwogCWlmIChvcHRzLT5pb2NoYXJzZXQpCi0J
CXNlcV9wcmludGYobSwgIixjaGFyc2V0PSVzIiwgb3B0cy0+aW9jaGFyc2V0KTsKKwkJc2VxX3By
aW50ZihtLCAiLGlvY2hhcnNldD0lcyIsIG9wdHMtPmlvY2hhcnNldCk7CiAJaWYgKG9wdHMtPmRl
YnVnKQogCQlzZXFfcHV0cyhtLCAiLGRlYnVnIik7CiAJcmV0dXJuIDA7Ci0tIAoyLjIwLjEKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lv
bgo=
