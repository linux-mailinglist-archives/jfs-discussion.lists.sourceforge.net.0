Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0136748DA2
	for <lists+jfs-discussion@lfdr.de>; Wed,  5 Jul 2023 21:21:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qH83T-0001w1-Fv;
	Wed, 05 Jul 2023 19:20:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1qH7iM-0003Qt-Py;
 Wed, 05 Jul 2023 18:58:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LlpChOzqdGMpOWppsGoACq3Og+Rj4uzOB0D2aUi9/78=; b=gQ2qJk4XbuS+Fsrt2aIIcUvab7
 7803ZkFhAb+3a/zZthWFZfNoP0nfyrXR0wa4X/brH5WrJUOsLNAJuwIf2aI0EFMBE5egpOAgoE8iR
 POEaMdzhbwft6h0xb+mCUUychwEEi6Sf0frwDMBLsIBJkPwFJfzJZrznmqb59YWErtg0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LlpChOzqdGMpOWppsGoACq3Og+Rj4uzOB0D2aUi9/78=; b=MpOXY0MIE4MxEBlHoyb8dcigy5
 opth0hxHTSuChHVOzDa7L91ZFRRvAyOGPgy0YQ9dgIuP0UHZY8CntGYmN8sMg5g/FWQyL2ucVCDOK
 tRLFKTM0DZAi633ZvKjTnZNr03bxA4yqHBM8i7p5x8Gnuw9qDDZgAWmTU6tKbdW3zMdM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qH7iK-0000GF-JW; Wed, 05 Jul 2023 18:58:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 32928616DA;
 Wed,  5 Jul 2023 18:58:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 048E0C433BB;
 Wed,  5 Jul 2023 18:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1688583530;
 bh=rS7mHrqZmoO2H68n3RxhES3IzDPLPysS3UyH3PinCQ8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aMKB7Eajzv0HN0RjiqoVKTtlq5KN/eWgB5BWIXdR4yS+qXLo9oJ2A8CvARGhR38SH
 AGVvIkEZAbD+2gqh1hM5AgL3ExspR2noywBNBHZ/Zbz6Jipv98b24C+FbaNuj7Id30
 /vjMmqLNAVgc3TMo2RGbDruAikPadReZuK3KcfWQJbROt+tSH7hONNDFEXZgGO8FCp
 rZUVAJaTqC0bKLSAziTq7i3tC8AVeG/+sFMf01eIn4wnADMCMY5hp3fCv+if/Zhei+
 dNlf5J971crJund4f35sQB+fqWVZ1Rv/WEt2CJNhYXge8soEVT4A/D9IhrSNkZ2pHG
 dVcbUJJd2L7+A==
From: Jeff Layton <jlayton@kernel.org>
To: jk@ozlabs.org, arnd@arndb.de, mpe@ellerman.id.au, npiggin@gmail.com,
 christophe.leroy@csgroup.eu, hca@linux.ibm.com, gor@linux.ibm.com,
 agordeev@linux.ibm.com, borntraeger@linux.ibm.com, svens@linux.ibm.com,
 gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, brauner@kernel.org,
 cmllamas@google.com, surenb@google.com,
 dennis.dalessandro@cornelisnetworks.com, jgg@ziepe.ca, leon@kernel.org,
 bwarrum@linux.ibm.com, rituagar@linux.ibm.com, ericvh@kernel.org,
 lucho@ionkov.net, asmadeus@codewreck.org, linux_oss@crudebyte.com,
 dsterba@suse.com, dhowells@redhat.com, marc.dionne@auristor.com,
 viro@zeniv.linux.org.uk, raven@themaw.net, luisbg@kernel.org,
 salah.triki@gmail.com, aivazian.tigran@gmail.com, ebiederm@xmission.com,
 keescook@chromium.org, clm@fb.com, josef@toxicpanda.com, xiubli@redhat.com,
 idryomov@gmail.com, jlayton@kernel.org, jaharkes@cs.cmu.edu,
 coda@cs.cmu.edu, jlbec@evilplan.org, hch@lst.de, nico@fluxnic.net,
 rafael@kernel.org, code@tyhicks.com, ardb@kernel.org, xiang@kernel.org,
 chao@kernel.org, huyue2@coolpad.com, jefflexu@linux.alibaba.com,
 linkinjeon@kernel.org, sj1557.seo@samsung.com, jack@suse.com,
 tytso@mit.edu, adilger.kernel@dilger.ca, jaegeuk@kernel.org,
 hirofumi@mail.parknet.co.jp, miklos@szeredi.hu, rpeterso@redhat.com,
 agruenba@redhat.com, richard@nod.at, anton.ivanov@cambridgegreys.com,
 johannes@sipsolutions.net, mikulas@artax.karlin.mff.cuni.cz,
 mike.kravetz@oracle.com, muchun.song@linux.dev, dwmw2@infradead.org,
 shaggy@kernel.org, tj@kernel.org, trond.myklebust@hammerspace.com,
 anna@kernel.org, chuck.lever@oracle.com, neilb@suse.de, kolga@netapp.com,
 Dai.Ngo@oracle.com, tom@talpey.com, konishi.ryusuke@gmail.com,
 anton@tuxera.com, almaz.alexandrovich@paragon-software.com,
 mark@fasheh.com, joseph.qi@linux.alibaba.com, me@bobcopeland.com,
 hubcap@omnibond.com, martin@omnibond.com, amir73il@gmail.com,
 mcgrof@kernel.org, yzaikin@google.com, tony.luck@intel.com,
 gpiccoli@igalia.com, al@alarsen.net, sfrench@samba.org, pc@manguebit.com,
 lsahlber@redhat.com, sprasad@microsoft.com, senozhatsky@chromium.org,
 phillip@squashfs.org.uk, rostedt@goodmis.org, mhiramat@kernel.org,
 dushistov@mail.ru, hdegoede@redhat.com, djwong@kernel.org,
 dlemoal@kernel.org, naohiro.aota@wdc.com, jth@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
 song@kernel.org, yhs@fb.com, john.fastabend@gmail.com, kpsingh@kernel.org,
 sdf@google.com, haoluo@google.com, jolsa@kernel.org, hughd@google.com,
 akpm@linux-foundation.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, john.johansen@canonical.com,
 paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com,
 stephen.smalley.work@gmail.com, eparis@parisplace.org, jgross@suse.com,
 stern@rowland.harvard.edu, lrh2000@pku.edu.cn,
 sebastian.reichel@collabora.com, wsa+renesas@sang-engineering.com,
 quic_ugoswami@quicinc.com, quic_linyyuan@quicinc.com, john@keeping.me.uk,
 error27@gmail.com, quic_uaggarwa@quicinc.com, hayama@lineo.co.jp,
 jomajm@gmail.com, axboe@kernel.dk, dhavale@google.com, dchinner@redhat.com,
 hannes@cmpxchg.org, zhangpeng362@huawei.com, slava@dubeyko.com,
 gargaditya08@live.com, penguin-kernel@I-love.SAKURA.ne.jp,
 yifeliu@cs.stonybrook.edu, madkar@cs.stonybrook.edu, ezk@cs.stonybrook.edu,
 yuzhe@nfschina.com, willy@infradead.org, okanatov@gmail.com,
 jeffxu@chromium.org, linux@treblig.org, mirimmad17@gmail.com,
 yijiangshan@kylinos.cn, yang.yang29@zte.com.cn, xu.xin16@zte.com.cn,
 chengzhihao1@huawei.com, shr@devkernel.io, Liam.Howlett@Oracle.com,
 adobriyan@gmail.com, chi.minghao@zte.com.cn, roberto.sassu@huawei.com,
 linuszeng@tencent.com, bvanassche@acm.org, zohar@linux.ibm.com,
 yi.zhang@huawei.com, trix@redhat.com, fmdefrancesco@gmail.com,
 ebiggers@google.com, princekumarmaurya06@gmail.com,
 chenzhongjin@huawei.com, riel@surriel.com, shaozhengchao@huawei.com,
 jingyuwang_vip@163.com, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-usb@vger.kernel.org,
 v9fs@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 linux-afs@lists.infradead.org, autofs@vger.kernel.org, linux-mm@kvack.org,
 linux-btrfs@vger.kernel.org, ceph-devel@vger.kernel.org,
 codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org,
 linux-efi@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 cluster-devel@redhat.com, linux-um@lists.infradead.org,
 linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net,
 linux-nfs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, ntfs3@lists.linux.dev,
 ocfs2-devel@lists.linux.dev, linux-karma-devel@lists.sourceforge.net,
 devel@lists.orangefs.org, linux-unionfs@vger.kernel.org,
 linux-hardening@vger.kernel.org, reiserfs-devel@vger.kernel.org,
 linux-cifs@vger.kernel.org, samba-technical@lists.samba.org,
 linux-trace-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 bpf@vger.kernel.org, netdev@vger.kernel.org, apparmor@lists.ubuntu.com,
 linux-security-module@vger.kernel.org, selinux@vger.kernel.org
Date: Wed,  5 Jul 2023 14:58:10 -0400
Message-ID: <20230705185812.579118-2-jlayton@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230705185812.579118-1-jlayton@kernel.org>
References: <20230705185812.579118-1-jlayton@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: struct timespec64 has unused bits in the tv_nsec field that
 can be used for other purposes. In future patches, we're going to change
 how the inode->i_ctime is accessed in certain inodes in order to ma [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qH7iK-0000GF-JW
X-Mailman-Approved-At: Wed, 05 Jul 2023 19:20:45 +0000
Subject: [Jfs-discussion] [PATCH v2 07/92] fs: add ctime accessors
 infrastructure
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
Cc: Jan Kara <jack@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

struct timespec64 has unused bits in the tv_nsec field that can be used
for other purposes. In future patches, we're going to change how the
inode->i_ctime is accessed in certain inodes in order to make use of
them. In order to do that safely though, we'll need to eradicate raw
accesses of the inode->i_ctime field from the kernel.

Add new accessor functions for the ctime that we use to replace them.

Reviewed-by: Jan Kara <jack@suse.cz>
Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/inode.c         | 16 ++++++++++++++++
 include/linux/fs.h | 45 ++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 60 insertions(+), 1 deletion(-)

diff --git a/fs/inode.c b/fs/inode.c
index d37fad91c8da..21b026d95b51 100644
--- a/fs/inode.c
+++ b/fs/inode.c
@@ -2499,6 +2499,22 @@ struct timespec64 current_time(struct inode *inode)
 }
 EXPORT_SYMBOL(current_time);
 
+/**
+ * inode_set_ctime_current - set the ctime to current_time
+ * @inode: inode
+ *
+ * Set the inode->i_ctime to the current value for the inode. Returns
+ * the current value that was assigned to i_ctime.
+ */
+struct timespec64 inode_set_ctime_current(struct inode *inode)
+{
+	struct timespec64 now = current_time(inode);
+
+	inode_set_ctime(inode, now.tv_sec, now.tv_nsec);
+	return now;
+}
+EXPORT_SYMBOL(inode_set_ctime_current);
+
 /**
  * in_group_or_capable - check whether caller is CAP_FSETID privileged
  * @idmap:	idmap of the mount @inode was found from
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 824accb89a91..bdfbd11a5811 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -1474,7 +1474,50 @@ static inline bool fsuidgid_has_mapping(struct super_block *sb,
 	       kgid_has_mapping(fs_userns, kgid);
 }
 
-extern struct timespec64 current_time(struct inode *inode);
+struct timespec64 current_time(struct inode *inode);
+struct timespec64 inode_set_ctime_current(struct inode *inode);
+
+/**
+ * inode_get_ctime - fetch the current ctime from the inode
+ * @inode: inode from which to fetch ctime
+ *
+ * Grab the current ctime from the inode and return it.
+ */
+static inline struct timespec64 inode_get_ctime(const struct inode *inode)
+{
+	return inode->i_ctime;
+}
+
+/**
+ * inode_set_ctime_to_ts - set the ctime in the inode
+ * @inode: inode in which to set the ctime
+ * @ts: value to set in the ctime field
+ *
+ * Set the ctime in @inode to @ts
+ */
+static inline struct timespec64 inode_set_ctime_to_ts(struct inode *inode,
+						      struct timespec64 ts)
+{
+	inode->i_ctime = ts;
+	return ts;
+}
+
+/**
+ * inode_set_ctime - set the ctime in the inode
+ * @inode: inode in which to set the ctime
+ * @sec: tv_sec value to set
+ * @nsec: tv_nsec value to set
+ *
+ * Set the ctime in @inode to { @sec, @nsec }
+ */
+static inline struct timespec64 inode_set_ctime(struct inode *inode,
+						time64_t sec, long nsec)
+{
+	struct timespec64 ts = { .tv_sec  = sec,
+				 .tv_nsec = nsec };
+
+	return inode_set_ctime_to_ts(inode, ts);
+}
 
 /*
  * Snapshotting support.
-- 
2.41.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
