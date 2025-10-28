Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D323C1756C
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Oct 2025 00:24:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jWcyRrtVuLq9zgmUr67xzJnnB85hTBQi9yfh+9DegBc=; b=l6CqJZHOa5F3FHKLVfhoQk7Haa
	x5xT1F/KvrHWQQOfhFXnrzfHyWSDlr3yjuAHemy4iYHVSDb08Ou5ZEHbx2Z34Sq2HBmwTl4dsn3ux
	Jt+gpyfSMuig6b32klxcGxVwKnv223CU3XiqbaVV2ocq33Mw/a4g7eLc3hFFzT9VPC9w=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vDt2R-0001vu-Nv;
	Tue, 28 Oct 2025 23:23:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jkoolstra@xs4all.nl>) id 1vDt2P-0001vn-LP
 for jfs-discussion@lists.sourceforge.net;
 Tue, 28 Oct 2025 23:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CwganTJx+9Lw3WMSh7k5X4jbPqLypnHQOM2bPJvw16Q=; b=G9THaPJupARQKL/z3YmX63scvw
 DdfgB14EJqsCF7mKH6d/GW6kPXSmvvW+6sNbEJQ1Ag720ySD/B2ss+7iUNkoaFr/0hWIJ5KBZtXIJ
 4y+ZstQD1/RohHikSLOfIz8vpwuNsKn/pHJtBazgc39ODn7/S4KIC9G28od/RQf4ck0o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CwganTJx+9Lw3WMSh7k5X4jbPqLypnHQOM2bPJvw16Q=; b=Z
 FyNhqEImrEdej7HbCPcd3p7WDnW9SPU0adPVG04HEGzmUbghqopesBT2k/6EzwUXuc9XGN5pjI6NJ
 yJPp+2XuWtfdvWNkUuvICwKxfQiPvTr/5sqi0i21fZCWNTRPiuxVcw8/JXFrAFiD8iu3l1fe/siCC
 7ymgAgnwBCdBmLKA=;
Received: from ewsoutbound.kpnmail.nl ([195.121.94.167])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vDt2N-00056a-TJ for jfs-discussion@lists.sourceforge.net;
 Tue, 28 Oct 2025 23:23:37 +0000
X-KPN-MessageId: 653a8817-b455-11f0-a27d-005056abbe64
Received: from smtp.kpnmail.nl (unknown [10.31.155.40])
 by ewsoutbound.so.kpn.org (Halon) with ESMTPS
 id 653a8817-b455-11f0-a27d-005056abbe64;
 Wed, 29 Oct 2025 00:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=xs4all01;
 h=mime-version:message-id:date:subject:to:from;
 bh=CwganTJx+9Lw3WMSh7k5X4jbPqLypnHQOM2bPJvw16Q=;
 b=R14oSUjhmj2pquwuRCcE8NiEP8x8ux60XVc+D6ACcpVcOffL06DqgXioV5ukDUBDD5I99jIDX3qmj
 a5ahmErglsZG2hwdWOOBMZ/lHAN+BfB6IkbcJmCOpchiX+QIoRtvZAcdD2Ax6xlvWM6GBFi7Fxrr2W
 oaGqr2I0XLSbTzQ5xeQHiekciMJ1lXtLC2qWqFKvytepAWQL2BOD7VrX4GSGM+BFBvssC7v289y8Wh
 pEXnnRkSUHUewp2x+kSy8xPU1JtdV/CXCcfYbG5JCdn/rBHCTOG8cR3tE3Fkfw3UaAi/EG/9fLZeW9
 KUJ6fGpPGXROAUgV35GN7BGer1Uh3bg==
X-KPN-MID: 33|tzsCuW5x5QBoQxv6qLKTGow+iGUfXhzRjhiA/IpHMov+l+P/osS1hjmYvK8DuM6
 qeQra2J/YrM0pPdh4lWEJYuMx04EuMGg6QXV0aP2ppkk=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|fMvmz9POJ2hi8AxioCD6qmoiI1Oyk2u6fX/3p9Nolvil3pAoWorKv8vPcatxfVT
 UEdrhNBTfuylyjoVoH1khfw==
X-Originating-IP: 178.231.9.54
Received: from daedalus.home (unknown [178.231.9.54])
 by smtp.xs4all.nl (Halon) with ESMTPSA
 id 1c1539a7-b455-11f0-b8c6-005056ab7584;
 Wed, 29 Oct 2025 00:23:29 +0100 (CET)
To: Dave Kleikamp <shaggy@kernel.org>, Jeff Layton <jlayton@kernel.org>,
 Christian Brauner <brauner@kernel.org>,
 Gabriel Krisman Bertazi <gabriel@krisman.be>, NeilBrown <neil@brown.name>,
 Al Viro <viro@zeniv.linux.org.uk>
Date: Wed, 29 Oct 2025 00:23:29 +0100
Message-ID: <20251028232329.430752-1-jkoolstra@xs4all.nl>
X-Mailer: git-send-email 2.51.1.dirty
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzbot reported a general protection fault in
 inode_set_ctime_current.
 This resulted from the following circumstances: when creating a new file
 via dtInsert, BT_GETSEARCH may yield a pointer to a dtro [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [195.121.94.167 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vDt2N-00056a-TJ
Subject: [Jfs-discussion] [PATCH] dtInsertEntry can result in buffer
 overflow on corrupted jfs filesystems
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
From: Jori Koolstra via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jori Koolstra <jkoolstra@xs4all.nl>
Cc: jkoolstra@xs4all.nl, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+cd7590567cc388f064f3@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzbot reported a general protection fault in inode_set_ctime_current.
This resulted from the following circumstances: when creating a new file
via dtInsert, BT_GETSEARCH may yield a pointer to a dtroot which is
embedded directly in the jfs_inode_info. When finally dtInsertEntry is
called, if the freelist field or any next field of a slot of the dtpage
is corrupted, this may result in memory corruption of the parent
directory inode.

In this case the i_sb field was corrupted, which raised the gpf when
in inode_set_ctime_current i_sb was dereferenced to access s_time_gran.

I tested the patch using the syzbot reproducer and doing some basic
filesystem operations on a fresh jfs fs, such as "cp -r /usr/include/
/mnt/jfs/" and "rm -r /mnt/jfs/include/n*"

Signed-off-by: Jori Koolstra <jkoolstra@xs4all.nl>
Reported-by: syzbot+cd7590567cc388f064f3@syzkaller.appspotmail.com
Closes: https://syzbot.org/bug?extid=cd7590567cc388f064f3
---
 fs/jfs/jfs_dtree.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 0ab83bb7bbdf..e37278596afe 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -170,8 +170,8 @@ static void dtGetKey(dtpage_t * p, int i, struct component_name * key,
 static int ciGetLeafPrefixKey(dtpage_t * lp, int li, dtpage_t * rp,
 			      int ri, struct component_name * key, int flag);
 
-static void dtInsertEntry(dtpage_t * p, int index, struct component_name * key,
-			  ddata_t * data, struct dt_lock **);
+static int dtInsertEntry(dtpage_t * p, int index, struct component_name * key,
+			 ddata_t * data, struct dt_lock **);
 
 static void dtMoveEntry(dtpage_t * sp, int si, dtpage_t * dp,
 			struct dt_lock ** sdtlock, struct dt_lock ** ddtlock,
@@ -891,7 +891,8 @@ int dtInsert(tid_t tid, struct inode *ip,
 	lv->length = 1;
 	dtlck->index++;
 
-	dtInsertEntry(p, index, name, &data, &dtlck);
+	if ((rc = dtInsertEntry(p, index, name, &data, &dtlck)))
+		return rc;
 
 	/* linelock stbl of non-root leaf page */
 	if (!(p->header.flag & BT_ROOT)) {
@@ -3625,9 +3626,10 @@ static void dtGetKey(dtpage_t * p, int i,	/* entry index */
  * function: allocate free slot(s) and
  *	     write a leaf/internal entry
  *
- * return: entry slot index
+ * * return: 0 - success;
+ *	   errno - failure;
  */
-static void dtInsertEntry(dtpage_t * p, int index, struct component_name * key,
+static int dtInsertEntry(dtpage_t * p, int index, struct component_name * key,
 			  ddata_t * data, struct dt_lock ** dtlock)
 {
 	struct dtslot *h, *t;
@@ -3649,6 +3651,10 @@ static void dtInsertEntry(dtpage_t * p, int index, struct component_name * key,
 
 	/* allocate a free slot */
 	hsi = fsi = p->header.freelist;
+	if (fsi >= ((p->header.flag & BT_ROOT) ? DTROOTMAXSLOT : p->header.maxslot)) {
+		jfs_err("Encountered corrupted dtpage before insert");
+		return -EIO;
+	}
 	h = &p->slot[fsi];
 	p->header.freelist = h->next;
 	--p->header.freecnt;
@@ -3697,6 +3703,10 @@ static void dtInsertEntry(dtpage_t * p, int index, struct component_name * key,
 	while (klen) {
 		/* get free slot */
 		fsi = p->header.freelist;
+		if (fsi >= ((p->header.flag & BT_ROOT) ? DTROOTMAXSLOT : p->header.maxslot)) {
+			jfs_err("Encountered corrupted dtpage before insert");
+			return -EIO;
+		}
 		t = &p->slot[fsi];
 		p->header.freelist = t->next;
 		--p->header.freecnt;
@@ -3774,6 +3784,8 @@ static void dtInsertEntry(dtpage_t * p, int index, struct component_name * key,
 
 	/* advance next available entry index of stbl */
 	++p->header.nextindex;
+
+	return 0;
 }
 
 
-- 
2.51.1.dirty



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
