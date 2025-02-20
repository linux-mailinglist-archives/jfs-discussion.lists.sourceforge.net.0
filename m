Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50264A3D8B2
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Feb 2025 12:31:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tl4lY-00087E-Qe;
	Thu, 20 Feb 2025 11:30:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1tl4lW-000878-DR
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 11:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I3AayOI06ZXPHvLQzbfOoOrK37jI1skTr6cV0Rb3/v8=; b=Y17WP7wuP5SfURkVnJVlSD5PCi
 i77nH/JqsKTDKJNMFCxB/XHHDNagZOuQMnnU9MDI5Bh92zbpVLwEs0y7v5YWS9BE99LZ3/OLekznf
 H2g7zWLlOxM11htt4vtaAzS7UwME9w+qeTYmm2QyWCJWmXfz24+6ItVrebJCgJ+qkW2c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I3AayOI06ZXPHvLQzbfOoOrK37jI1skTr6cV0Rb3/v8=; b=bvUU82NWX+hzXrY0foVL/FEBAD
 5rNHwjE7DDiFmL/AzdqhBvRJBcAZMgKE5UhAviOdrVY0hVccXjnFUZ8SMvxdSW+UyHVDsCYD47UVy
 MuN42RznRfY5UEig/dZe3JFvbP5UKekaElB64M+oD4zSZ7vzhVEwTec32HweA1Mh6f8M=;
Received: from out203-205-221-210.mail.qq.com ([203.205.221.210])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tl4lV-0007P7-92 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 11:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1740051036; bh=I3AayOI06ZXPHvLQzbfOoOrK37jI1skTr6cV0Rb3/v8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=V7G3FoHyNO1Q7arx2Sa+hzN8GuFH5yAtpcu+DerEPyhVNQZ99ScjjeJZ4rZSmYmpe
 XNqUc2jWuZ6A487mjPbyv7rgb+3U9RErgYxgBWSlK6Xx30J2Djip2i6QUuTvaw1sue
 svVt1th8SUN7S6pnfj6kOTKZwGsAv5eOQ/nOl058=
Received: from pek-lxu-l1.wrs.com ([114.244.57.157])
 by newxmesmtplogicsvrszb21-0.qq.com (NewEsmtp) with SMTP
 id 612AF204; Thu, 20 Feb 2025 19:24:18 +0800
X-QQ-mid: xmsmtpt1740050658te0mjy041
Message-ID: <tencent_7E9E541BBE4B3C1BCD256EBA87BB8733E308@qq.com>
X-QQ-XMAILINFO: Od8VqZhFMB3NpFN5jcht+OpGQADSv30N8aJjMena15vZCairXLfL/PdTwYJhcp
 tKjRWNc1neRQ4rxzCQndfoOtVHYFquYcLA6EvEI11E/ATQwbi6bC0f41S9J+8hsDRLX/NUxYxQdI
 mO7J4f1j7u2QGIg+t/0lHznHzZreP/2GmOPTgKrql/KBcikraHbJgM7uKVQBX8kwLyyZQG1YgjTH
 PAWL4YFXC017McrL2U4AjXrgBwAO1bLkdgEQpaW3XkeFwpbUnQT1XCitDSQh94l7hOau//b+u4u6
 x99G+3csNe/fOBXwsrAulkUD1zrmf3sTN9N/3K4LVCX3plFIOQd4CUZrJNQZbpHkhj+4eq78+pl/
 a6TFGlyojb029zxBECP8G8zW8BXDetUAev4rLdVfArP0CNBLY174FPMYdQh87PUS1fDibb40pdKQ
 oDdgDWXWNn5o4v0jT7k1ukUUwUIcLli7sEu5I5TiTeEuHAmCPaJiWt0C81CWzj+K+7NIHN/HZ+p1
 5aVX/T4kNAHMrhd5rXqyKtpWMRWXDlO6FREx0dykdeKjTOZACJG5I91/fJt4ANR2if1It2VZoZjE
 3f1+5j4MEwvgnOEvFNwbdQ0b6B8N2MkO8FPRfPf5kpTInByIQViBhHcXl3fxYOvG5Os2dpho3urK
 H5t5qeE3+5rjqYVY70sM7baWOwu9MiJnz/SVZu0jy9U07V+T27HlIVxit9ErvdRiCj3K6YOoU8ef
 m/EueJhmUnqdnNTJFmAzVgRh/zXif0/PsRK/dCEtS+K7W6ACdk1P0lKmQ7KStowI0q/qbHOK8CJF
 +bHbXnQ1E/eTJDLMk/Gxe6L9pw6Z1UVX941nVbDGIIbbzwHkCpqnN4Fl7aC2fwNlgvGvLqTFL7OZ
 2o42MhkZyK1zPVizgAE+Q118UizkrC9gpa/grncZ26rnMiA3tAYdpf790DPmmTZf33Oewx/vIRsK
 W0T7NDLjE=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
To: dave.kleikamp@oracle.com
Date: Thu, 20 Feb 2025 19:24:19 +0800
X-OQ-MSGID: <20250220112418.2310880-2-eadavis@qq.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <740c57ad-0cbd-4498-8ec9-46a54b204e3d@oracle.com>
References: <740c57ad-0cbd-4498-8ec9-46a54b204e3d@oracle.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The width in dmapctl of the AG is zero, it trigger a divide
 error when calculating the control page level in dbAllocAG. To avoid this
 issue,
 add a check for agwidth in dbAllocAG. Reported-and-tested-by:
 https://syzkaller.appspot.com/bug?extid=7c808908291a569281a9
 Signed-off-by: Edward Adam Davis --- V1 -> V2: move the check to dbMount 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.210 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.210 listed in sa-accredit.habeas.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1tl4lV-0007P7-92
Subject: [Jfs-discussion] [PATCH V2] jfs: add sanity check for agwidth in
 dbMount
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: axboe@kernel.dk, shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, kristian@klausen.dk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The width in dmapctl of the AG is zero, it trigger a divide error when
calculating the control page level in dbAllocAG.

To avoid this issue, add a check for agwidth in dbAllocAG.

Reported-and-tested-by: syzbot+7c808908291a569281a9@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=7c808908291a569281a9
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
V1 -> V2: move the check to dbMount

 fs/jfs/jfs_dmap.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index f9009e4f9ffd..62f55e7ed840 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -204,6 +204,10 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_aglevel = le32_to_cpu(dbmp_le->dn_aglevel);
 	bmp->db_agheight = le32_to_cpu(dbmp_le->dn_agheight);
 	bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
+	if (!bmp->db_agwidth) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
 	bmp->db_agstart = le32_to_cpu(dbmp_le->dn_agstart);
 	bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
 	if (bmp->db_agl2size > L2MAXL2SIZE - L2MAXAG ||
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
