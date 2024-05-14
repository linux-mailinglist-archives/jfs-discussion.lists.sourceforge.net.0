Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEACC8C4EB8
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 May 2024 12:07:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s6p3l-0006V7-Mx;
	Tue, 14 May 2024 10:07:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1s6p3d-0006Uk-Vg
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 May 2024 10:06:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8WGuI/Y1qcoI4DX9tBlnYKN3CxLRBJ4u/NdndLihEuA=; b=dkVe3NsfiniMD/G+KXL9x6XENP
 VjehML/uO57ePAdANrnZJrabRuAbadXd1020r3OtwbyDhuf+qHc17lOkqOfjhIga4DaTKF06CsB+s
 Fl0fFUFQtYROgvCjgtY0Q7OwZ4rj75ebVF2rbDBfAiY3PQezVz9y+KCzylkY9y2OqJtQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8WGuI/Y1qcoI4DX9tBlnYKN3CxLRBJ4u/NdndLihEuA=; b=g
 pHkT8wBhSK4FdfuUoavvcVCreB9Rz7VBPKsmo2n3vGPlwqO6pORPrVGcmpQOaB03s6lwYrqTjQvXV
 53l+WAUa/nxbIr8Or7q6fJLLAKMB3TfRGIN7cmrAmXh0Q8pcq8DTAb8RLAGUfx6tJ6lS3Y5x8XGiA
 ehie9ybkKCgThLi8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s6p3e-00054I-H1 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 May 2024 10:06:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5C44F611E1;
 Tue, 14 May 2024 10:06:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C607C2BD10;
 Tue, 14 May 2024 10:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1715681203;
 bh=ZZGB3QQLbx9thwXnWrDjUTHhrcBF4DS6mic9U+ZCYqk=;
 h=From:To:Cc:Subject:Date:From;
 b=mMOcalef94Gh7a4egYXlueneWoXw30OU3pbBDxR3l8zG7ZbOpnl8fcldb62LJLynq
 YhMYcB6MpyGOdBELmjE1IOpVb8hUgk9JyeOcvI4VldNR3q7HWx+jJK1uVmOAb+Cbzv
 7275LoXGYGtdfnc0x9NNM0anf28AjFyyUjnWerr0=
To: jfs-discussion@lists.sourceforge.net
Date: Tue, 14 May 2024 12:06:34 +0200
Message-ID: <2024051433-slider-cloning-98f9@gregkh>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Lines: 34
X-Developer-Signature: v=1; a=openpgp-sha256; l=1239;
 i=gregkh@linuxfoundation.org; h=from:subject:message-id;
 bh=ZZGB3QQLbx9thwXnWrDjUTHhrcBF4DS6mic9U+ZCYqk=;
 b=owGbwMvMwCRo6H6F97bub03G02pJDGnO5qv+b1nnWaSilLdEzibVtaXv8oadskYB7Qu7DRaG3
 fGu5t/UEcvCIMjEICumyPJlG8/R/RWHFL0MbU/DzGFlAhnCwMUpABP5f4hhNrvzNc2T0jbeNbJv
 vpZpn7rxaeG72wwLdhQ2sfvOuvJ2L/dlsbrGm7/E79b3AwA=
X-Developer-Key: i=gregkh@linuxfoundation.org; a=openpgp;
 fpr=F4B60CC5BF78C2214A313DCB3147D40DDB2DFB29
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When an xattr size is not what is expected, it is printed
 out to the kernel log in hex format as a form of debugging. But when that
 xattr size is bigger than the expected size, printing it out can cau [...]
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [139.178.84.217 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s6p3e-00054I-H1
Subject: [Jfs-discussion] [PATCH] jfs: xattr: fix buffer overflow for
 invalid xattr
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
From: Greg Kroah-Hartman via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Dave Kleikamp <shaggy@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 syzbot+9dfe490c8176301c1d06@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When an xattr size is not what is expected, it is printed out to the
kernel log in hex format as a form of debugging.  But when that xattr
size is bigger than the expected size, printing it out can cause an
access off the end of the buffer.

Fix this all up by properly restricting the size of the debug hex dump
in the kernel log.

Reported-by: syzbot+9dfe490c8176301c1d06@syzkaller.appspotmail.com
Cc: Dave Kleikamp <shaggy@kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 fs/jfs/xattr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
index 0fb7afac298e..9987055293b3 100644
--- a/fs/jfs/xattr.c
+++ b/fs/jfs/xattr.c
@@ -557,9 +557,11 @@ static int ea_get(struct inode *inode, struct ea_buffer *ea_buf, int min_size)
 
       size_check:
 	if (EALIST_SIZE(ea_buf->xattr) != ea_size) {
+		int size = min_t(int, EALIST_SIZE(ea_buf->xattr), ea_size);
+
 		printk(KERN_ERR "ea_get: invalid extended attribute\n");
 		print_hex_dump(KERN_ERR, "", DUMP_PREFIX_ADDRESS, 16, 1,
-				     ea_buf->xattr, ea_size, 1);
+				     ea_buf->xattr, size, 1);
 		ea_release(inode, ea_buf);
 		rc = -EIO;
 		goto clean_up;
-- 
2.45.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
