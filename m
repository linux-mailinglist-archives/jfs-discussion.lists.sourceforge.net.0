Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34425722D17
	for <lists+jfs-discussion@lfdr.de>; Mon,  5 Jun 2023 18:56:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q6DV7-0001lm-AA;
	Mon, 05 Jun 2023 16:56:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <code@siddh.me>) id 1q6B2e-0001OZ-2k
 for jfs-discussion@lists.sourceforge.net;
 Mon, 05 Jun 2023 14:18:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+o71O1pYRWmOO9H0o1rqpmBm9jZwIdAhrIJOrg/czBU=; b=LHY+dNQXnqDa1rtJ4qrjMqYMjz
 RSubU2cfotph1/Je8IBIvmDK/VJOhHhHTgU5hF58xUudqkrZ8nXxT3n1mrHaytx3bp4mhDdJWTpEA
 Qf8GBXnKhYENVN/AKlcrv7CumsntfHeAkVgnVKrq9MoaNim9Atx9YG49AO2pkCAk5kvU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Date:Subject:
 Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+o71O1pYRWmOO9H0o1rqpmBm9jZwIdAhrIJOrg/czBU=; b=WmNst9Zti2TNpxGj9taCAKqS9h
 6UVe34dl7IGvunQBFfN841v6dFYed6riv1SK57wj9q1H6898Hp8lWewhSM7yYDJU/XqGOsfbL3kO4
 OoDYdujbHbPYQ8qYW2DWjI+7ffi+4qgT8ud1L68bPpoWsiCyk+fMnqBFrWJ0y6llQjRM=;
Received: from sender-of-o51.zoho.in ([103.117.158.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q6B2X-00Brt7-9u for jfs-discussion@lists.sourceforge.net;
 Mon, 05 Jun 2023 14:18:40 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1685973765; cv=none; d=zohomail.in; s=zohoarc; 
 b=UEjRH8X+EQPCqNC4TrenHe7UT7DcPjTYAl6zPzWlWo1g81Cw4KiQh1T2LoI8R1bUZiTPlJgwQy0Z6w4RoVYViBt1Z07OcXigTAOfsPUBwjuxKHmLZUJN+ExjzRK2TQrZiTKM4hLQiyPCKLNWkkF/qM+WIEVxx/Fud6rHycoLOTs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1685973765;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=+o71O1pYRWmOO9H0o1rqpmBm9jZwIdAhrIJOrg/czBU=; 
 b=N/ZmxwD6165BXU4zhP4ipTcF/VzkXeXa3LRN9WhvuStU2S9RlHZ7v9eihIpGgmyX4mcAwESK0KTqUCMh5jVhJiPzQZvD1sC1coxBJai8M1pT1wbVqTcf/VD/rZW0ccEJh7vAN9gMe2nT3snbH+WX2aRp1cmGdEnQqkNkLcreMIM=
ARC-Authentication-Results: i=1; mx.zohomail.in; dkim=pass  header.i=siddh.me;
 spf=pass  smtp.mailfrom=code@siddh.me;
 dmarc=pass header.from=<code@siddh.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1685973765; 
 s=zmail; d=siddh.me; i=code@siddh.me;
 h=From:From:To:To:Cc:Cc:Message-ID:Subject:Subject:Date:Date:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=+o71O1pYRWmOO9H0o1rqpmBm9jZwIdAhrIJOrg/czBU=;
 b=cPs99wbzw9VM349ypot/e1Z/NVpS6rPpcETAKTyMARht2bZHfLZ1ugqSzrDNx6Ef
 fHxfE05xrB5XAxGFj1eJM3LG+KpUNGVak/vUemR8BTRR4OOfd6CAtoWO7dyAcWyIwl5
 3kEPnsDVCmMY8nCFjL0Mr3365nH6V8esLdRVjY2g=
Received: from kampyooter.. (223.236.126.120 [223.236.126.120]) by mx.zoho.in
 with SMTPS id 1685973763050332.8195646780821;
 Mon, 5 Jun 2023 19:32:43 +0530 (IST)
From: Siddh Raman Pant <code@siddh.me>
To: Dave Kleikamp <shaggy@kernel.org>,
 Dongliang Mu <mudongliangabcd@gmail.com>,
 Liu Shixin <liushixin2@huawei.com>, Hoi Pok Wu <wuhoipok@gmail.com>
Message-ID: <20230605140151.635604-1-code@siddh.me>
Date: Mon,  5 Jun 2023 19:31:51 +0530
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-ZohoMailClient: External
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In jfs_dmap.c at line 381, BLKTODMAP is used to get a logical
 block number inside dbFree(). db_l2nbperpage, which is the log2 number of
 blocks per page, is passed as an argument to BLKTODMAP which use [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.117.158.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q6B2X-00Brt7-9u
X-Mailman-Approved-At: Mon, 05 Jun 2023 16:56:12 +0000
Subject: [Jfs-discussion] [PATCH] jfs: jfs_dmap: Validate db_l2nbperpage
 while mounting
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
Cc: syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Anup Sharma <anupnewsmail@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In jfs_dmap.c at line 381, BLKTODMAP is used to get a logical block
number inside dbFree(). db_l2nbperpage, which is the log2 number of
blocks per page, is passed as an argument to BLKTODMAP which uses it
for shifting.

Syzbot reported a shift out-of-bounds crash because db_l2nbperpage is
too big. This happens because the large value is set without any
validation in dbMount() at line 181.

Thus, make sure that db_l2nbperpage is correct while mounting.

Reported-and-tested-by: syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?id=2a70a453331db32ed491f5cbb07e81bf2d225715
Cc: stable@vger.kernel.org
Signed-off-by: Siddh Raman Pant <code@siddh.me>
---
 fs/jfs/jfs_dmap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a3eb1e826947..62f058822a3a 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -178,7 +178,13 @@ int dbMount(struct inode *ipbmap)
 	dbmp_le = (struct dbmap_disk *) mp->data;
 	bmp->db_mapsize = le64_to_cpu(dbmp_le->dn_mapsize);
 	bmp->db_nfree = le64_to_cpu(dbmp_le->dn_nfree);
+
 	bmp->db_l2nbperpage = le32_to_cpu(dbmp_le->dn_l2nbperpage);
+	if (bmp->db_l2nbperpage > L2MAXL0SIZE) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
+
 	bmp->db_numag = le32_to_cpu(dbmp_le->dn_numag);
 	if (!bmp->db_numag) {
 		err = -EINVAL;
-- 
2.39.2




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
