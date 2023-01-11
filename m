Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8658665300
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Jan 2023 05:59:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pFTCf-0005cL-W3;
	Wed, 11 Jan 2023 04:59:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1pFTCf-0005cF-FK
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Jan 2023 04:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hwxTpnik4GFRaEfSysSXhVpKMkvUhYmc7DfBcKe47Q8=; b=GAGJisRwuTeqdH3jFsEPlIzKag
 YcSmpwkqHoXNuqk8B8BUTfZL0pTqZI4CaqHvJBTChXtiI6wHKRvYNzHNh/sMFq2MbsmhpXgO9Ggvs
 jbPW1y6iKiKuGWr3qV5vPWWqwIXOXuGJnWVTt8g9GnLa884zVTjpH9GC3kWHebbUaxXE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hwxTpnik4GFRaEfSysSXhVpKMkvUhYmc7DfBcKe47Q8=; b=R9yzm4iVmo0GubWbVkYXUU9pYb
 pPkyDavB0iQDQOJhmFeXdYg21qZrSljHKdGIi9s8b9JjfvXPlFMEUz7VRhAYEoObh/5iYkv2W1eyG
 fokaFV5ONGPiIW6dRQhF2tejBiVRuuOuhGRoHkoqQn/f9oMgBEk4yfYjJA4g7/kYoaIg=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pFTCd-00DYvh-Jw for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Jan 2023 04:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hwxTpnik4GFRaEfSysSXhVpKMkvUhYmc7DfBcKe47Q8=; b=gwuZnr26GfvdSwtTngWR0qosOP
 HUs1Cd/2fuK8Qmn4R+lCu65v90x3QDWE/O14fdzypvhBXSoYF4rbsU1ykCOH27b8Xj7rp2JRAnf60
 hcESkI65xxGkW5d1dmkrRhX253+s2bBeRS8x9As4FZk1sJg0/i9tdrxE2gBIqXrCUpjSjFVQmD59P
 yWkZ1kvppP2R3edwG0o19wXOgbKokc9xs+7pjD3M1PsiLmk0yVgIe/2Wh3vCPRj++UHnAGs2zyx+w
 F7rqLOZOjVvXeWfpNOgnCiEvEkTI822rlxKyO8e/cKnXhKVhmdqatpDQdhRiuxoCcE4feBhtRD5Bd
 BQG8ySuw==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1pFTCF-0017ZY-1R; Wed, 11 Jan 2023 04:58:43 +0000
Date: Wed, 11 Jan 2023 04:58:43 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <Y75CAwtM1gE1sevy@ZenIV>
References: <20230108165645.381077-1-hch@lst.de>
 <20230108165645.381077-4-hch@lst.de>
 <Y7sy5jzjT7tpPX6Z@casper.infradead.org>
 <20230110082225.GB11947@lst.de> <Y74c+WSEajAic3Kh@ZenIV>
 <20230111042641.GA15181@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230111042641.GA15181@lst.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 11, 2023 at 05:26:41AM +0100, Christoph Hellwig
 wrote: > On Wed, Jan 11, 2023 at 02:20:41AM +0000, Al Viro wrote: > > More
 seriously, all those ..._set_link() need to return an error and t [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pFTCd-00DYvh-Jw
Subject: Re: [Jfs-discussion] [PATCH 3/7] minix: don't flush page
 immediately for DIRSYNC directories
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Evgeniy Dushistov <dushistov@mail.ru>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Mark Fasheh <mark@fasheh.com>, Josef Bacik <josef@toxicpanda.com>,
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 Chris Mason <clm@fb.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Jan 11, 2023 at 05:26:41AM +0100, Christoph Hellwig wrote:
> On Wed, Jan 11, 2023 at 02:20:41AM +0000, Al Viro wrote:
> > More seriously, all those ..._set_link() need to return an error and their
> > callers (..._rename()) need to deal with failures.
> 
> That's actually what I did yesterday:
> 
> http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/remove-write_one_page

ext2 also has that bug.  As well as "need to check for delete_entry errors"
one (also in ext2_rename()).

Completely untested patch follows:

diff --git a/fs/ext2/dir.c b/fs/ext2/dir.c
index e5cbc27ba459..b38fab33cd0d 100644
--- a/fs/ext2/dir.c
+++ b/fs/ext2/dir.c
@@ -461,7 +461,7 @@ static int ext2_handle_dirsync(struct inode *dir)
 	return err;
 }
 
-void ext2_set_link(struct inode *dir, struct ext2_dir_entry_2 *de,
+int ext2_set_link(struct inode *dir, struct ext2_dir_entry_2 *de,
 		   struct page *page, void *page_addr, struct inode *inode,
 		   int update_times)
 {
@@ -480,7 +480,7 @@ void ext2_set_link(struct inode *dir, struct ext2_dir_entry_2 *de,
 		dir->i_mtime = dir->i_ctime = current_time(dir);
 	EXT2_I(dir)->i_flags &= ~EXT2_BTREE_FL;
 	mark_inode_dirty(dir);
-	ext2_handle_dirsync(dir);
+	return ext2_handle_dirsync(dir);
 }
 
 /*
diff --git a/fs/ext2/ext2.h b/fs/ext2/ext2.h
index 28de11a22e5f..95c083bb1b7c 100644
--- a/fs/ext2/ext2.h
+++ b/fs/ext2/ext2.h
@@ -734,7 +734,7 @@ extern int ext2_delete_entry(struct ext2_dir_entry_2 *dir, struct page *page,
 			     char *kaddr);
 extern int ext2_empty_dir (struct inode *);
 extern struct ext2_dir_entry_2 *ext2_dotdot(struct inode *dir, struct page **p, void **pa);
-extern void ext2_set_link(struct inode *, struct ext2_dir_entry_2 *, struct page *, void *,
+extern int ext2_set_link(struct inode *, struct ext2_dir_entry_2 *, struct page *, void *,
 			  struct inode *, int);
 static inline void ext2_put_page(struct page *page, void *page_addr)
 {
diff --git a/fs/ext2/namei.c b/fs/ext2/namei.c
index c056957221a2..5e3397680faa 100644
--- a/fs/ext2/namei.c
+++ b/fs/ext2/namei.c
@@ -370,8 +370,10 @@ static int ext2_rename (struct user_namespace * mnt_userns,
 			err = PTR_ERR(new_de);
 			goto out_dir;
 		}
-		ext2_set_link(new_dir, new_de, new_page, page_addr, old_inode, 1);
+		err = ext2_set_link(new_dir, new_de, new_page, page_addr, old_inode, 1);
 		ext2_put_page(new_page, page_addr);
+		if (err)
+			goto out_dir;
 		new_inode->i_ctime = current_time(new_inode);
 		if (dir_de)
 			drop_nlink(new_inode);
@@ -391,7 +393,9 @@ static int ext2_rename (struct user_namespace * mnt_userns,
 	old_inode->i_ctime = current_time(old_inode);
 	mark_inode_dirty(old_inode);
 
-	ext2_delete_entry(old_de, old_page, old_page_addr);
+	err = ext2_delete_entry(old_de, old_page, old_page_addr);
+	if (err)
+		goto out_dir;
 
 	if (dir_de) {
 		if (old_dir != new_dir)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
