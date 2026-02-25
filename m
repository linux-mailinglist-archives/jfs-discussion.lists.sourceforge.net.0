Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Pc4FS1voGk3jgQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 17:05:01 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F7C1A98B1
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 17:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Cc:Reply-To:From:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:To:Date:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3zeXp3CHGbJxGxMV11ubC8qZ7F7sv/lyzQaBD9SyneA=; b=ZgVi9gMBm1G0nGB6Tj/YSUeJlI
	+mpRBGYFMh9LGPp9GfpfOo7n7Ebvs6SgWiej3uymBkmNnq8d5Z7r4G/dfisLwmgmtaTQo4bcd1Zpx
	vP6UAq2Extl39CO08DIcgIe9yoIWeDJ8CosDwu7Xg2IRmOvo+ZTVa0riZB919WtH9yVg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvdqr-0002UC-Ea;
	Thu, 26 Feb 2026 16:04:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <snitzer@kernel.org>) id 1vvJA3-0008R2-Bx;
 Wed, 25 Feb 2026 17:58:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=42HkHRjPvRxy6KQmY6Z+VTaVUuPZH8CLBAJh3e58i/o=; b=IHFBolGDJoZpRzjUEPQbaBnto+
 2k4n+C5HlkPC5ENKO3JFdXRDur2PmFz14JYdkJsH5ev+jKAB9UcuQDGrwt4Kys3dhBe//jM7ROyJ+
 bqBV0+U3EjTtZ9jouHHK+8mIbTpI8xGR7+FiBW6nBuNo/+ho2fBBeJxyE2k4DYYDO8Bc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=42HkHRjPvRxy6KQmY6Z+VTaVUuPZH8CLBAJh3e58i/o=; b=Y7MKM0yLYaokz616UAcjw2Ij+u
 bHcSEAo5ie+x/807neJiD87MuIHDJEDej9S94qHaX0vEpbs/MA0VaLCETm7uNKZoPuPlyHyz5Y1jq
 yBpU1woCvoxFs8Zt5z2sDWXG+NHhNFbzwwtG/G/FnKsP01n77NmhDYwVeKPMEyP4gwxo=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvJA2-0008Ql-Lb; Wed, 25 Feb 2026 17:58:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 62F5F60054;
 Wed, 25 Feb 2026 17:58:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99D58C19421;
 Wed, 25 Feb 2026 17:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1772042327;
 bh=v0gF9Yip5vqOARGERS15X+Fy4jzc8bSZ5q+f4+jXpUg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zu8JNqj/+hKCuwHWQmCTVK1tpzyAwq+TjOic7LMbDsxpza4QKAWhfMSzlUs+0RVaB
 dVEVQkTrA/nffg0WU/RbRyizDjK8x/ZZIKCxA+UXJEwWrxt5Wpbq5rQUCtJM3nvtLx
 q+JxJeiHbsMLzLZ6iqjDQWOSGmPTmUhRf/ziwKMKjrPhiDtm/w8nMJInDFHB/sHrXC
 Do+b3hGxgat3Nv8fAK0fCFQp3tHzsLTxU+5lrdqimLhUJMr6yJEnnwPFXJhST7BjVB
 rb299g0C9pNfUgE11c2kcpJ0CTepo+iR7WwwBYjEhjklyRu8LgjuGzc8b730qjqJ6p
 y/a4iv4wHRlTw==
Date: Wed, 25 Feb 2026 12:58:45 -0500
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <aZ84VRrRVyGEzSJn@kernel.org>
References: <20260108-setlease-6-20-v1-0-ea4dec9b67fa@kernel.org>
 <20260108-setlease-6-20-v1-24-ea4dec9b67fa@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BuvfweD5MaN+t/uz"
Content-Disposition: inline
In-Reply-To: <20260108-setlease-6-20-v1-24-ea4dec9b67fa@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 08, 2026 at 12:13:19PM -0500, Jeff Layton wrote:
 > Setting ->setlease() to a NULL pointer now has the same effect as > setting
 it to simple_nosetlease(). Remove all of the setlease > file_ [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vvJA2-0008Ql-Lb
X-Mailman-Approved-At: Thu, 26 Feb 2026 16:04:31 +0000
Subject: Re: [Jfs-discussion] [PATCH 24/24] fs: remove simple_nosetlease()
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
From: Mike Snitzer via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Mike Snitzer <snitzer@kernel.org>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Dave Kleikamp <shaggy@kernel.org>,
 Alexander Aring <alex.aring@gmail.com>, Jan Kara <jack@suse.cz>,
 Paulo Alcantara <pc@manguebit.org>, Sandeep Dhavale <dhavale@google.com>,
 Martin Brandenburg <martin@omnibond.com>, Yuezhang Mo <yuezhang.mo@sony.com>,
 Anders Larsen <al@alarsen.net>, Amir Goldstein <amir73il@gmail.com>,
 jfs-discussion@lists.sourceforge.net, linux-unionfs@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chunhai Guo <guochunhai@vivo.com>, Ilya Dryomov <idryomov@gmail.com>,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>, linux-mtd@lists.infradead.org,
 Mike Marshall <hubcap@omnibond.com>, linux-xfs@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>, Yue Hu <zbestahu@gmail.com>,
 Miklos Szeredi <miklos@szeredi.hu>, samba-technical@lists.samba.org,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 devel@lists.orangefs.org, Hugh Dickins <hughd@google.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, ntfs3@lists.linux.dev,
 Christoph Hellwig <hch@infradead.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 linux-mm@kvack.org, linux-btrfs@vger.kernel.org, Gao Xiang <xiang@kernel.org>,
 linux-ext4@vger.kernel.org, Salah Triki <salah.triki@gmail.com>,
 Carlos Maiolino <cem@kernel.org>, Dominique Martinet <asmadeus@codewreck.org>,
 Shyam Prasad N <sprasad@microsoft.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-cifs@vger.kernel.org,
 Chao Yu <chao@kernel.org>, linux-nfs@vger.kernel.org,
 Tom Talpey <tom@talpey.com>, ocfs2-devel@lists.linux.dev,
 Bharath SM <bharathsm@microsoft.com>, linux-nilfs@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Andreas Gruenbacher <agruenba@redhat.com>, Hans de Goede <hansg@kernel.org>,
 gfs2@lists.linux.dev, Christian Brauner <brauner@kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, Theodore Ts'o <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 linux-erofs@lists.ozlabs.org, v9fs@lists.linux.dev,
 Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Namjae Jeon <linkinjeon@kernel.org>,
 Steve French <sfrench@samba.org>, Chuck Lever <chuck.lever@oracle.com>,
 Hongbo Li <lihongbo22@huawei.com>, Anna Schumaker <anna@kernel.org>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Sungjong Seo <sj1557.seo@samsung.com>, David Woodhouse <dwmw2@infradead.org>,
 Trond Myklebust <trondmy@kernel.org>, Joel Becker <jlbec@evilplan.org>
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:+];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_MIXED(0.00)[];
	FREEMAIL_CC(0.00)[ionkov.net,kernel.org,gmail.com,suse.cz,manguebit.org,google.com,omnibond.com,sony.com,alarsen.net,lists.sourceforge.net,vger.kernel.org,paragon-software.com,fb.com,dilger.ca,vivo.com,lists.infradead.org,redhat.com,szeredi.hu,lists.samba.org,nod.at,fasheh.com,lists.orangefs.org,infradead.org,lists.linux.dev,linux.alibaba.com,kvack.org,codewreck.org,microsoft.com,crudebyte.com,talpey.com,suse.com,zeniv.linux.org.uk,mail.parknet.co.jp,mit.edu,fluxnic.net,lists.ozlabs.org,lwn.net,samba.org,oracle.com,huawei.com,squashfs.org.uk,linux-foundation.org,samsung.com,evilplan.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	RCPT_COUNT_GT_50(0.00)[85];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_ATTACHMENT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[snitzer@kernel.org];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: A3F7C1A98B1
X-Rspamd-Action: no action


--BuvfweD5MaN+t/uz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 08, 2026 at 12:13:19PM -0500, Jeff Layton wrote:
> Setting ->setlease() to a NULL pointer now has the same effect as
> setting it to simple_nosetlease(). Remove all of the setlease
> file_operations that are set to simple_nosetlease, and the function
> itself.
> 
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---
>  fs/9p/vfs_dir.c        |  2 --
>  fs/9p/vfs_file.c       |  2 --
>  fs/ceph/dir.c          |  2 --
>  fs/ceph/file.c         |  1 -
>  fs/fuse/dir.c          |  1 -
>  fs/gfs2/file.c         |  2 --
>  fs/libfs.c             | 18 ------------------
>  fs/nfs/dir.c           |  1 -
>  fs/nfs/file.c          |  1 -
>  fs/smb/client/cifsfs.c |  1 -
>  fs/vboxsf/dir.c        |  1 -
>  fs/vboxsf/file.c       |  1 -
>  include/linux/fs.h     |  1 -
>  13 files changed, 34 deletions(-)
> 

<snip>

> diff --git a/fs/libfs.c b/fs/libfs.c
> index 697c6d5fc12786c036f0086886297fb5cd52ae00..f1860dff86f2703266beecf31e9d2667af7a9684 100644
> --- a/fs/libfs.c
> +++ b/fs/libfs.c
> @@ -1699,24 +1699,6 @@ struct inode *alloc_anon_inode(struct super_block *s)
>  }
>  EXPORT_SYMBOL(alloc_anon_inode);
>  
> -/**
> - * simple_nosetlease - generic helper for prohibiting leases
> - * @filp: file pointer
> - * @arg: type of lease to obtain
> - * @flp: new lease supplied for insertion
> - * @priv: private data for lm_setup operation
> - *
> - * Generic helper for filesystems that do not wish to allow leases to be set.
> - * All arguments are ignored and it just returns -EINVAL.
> - */
> -int
> -simple_nosetlease(struct file *filp, int arg, struct file_lease **flp,
> -		  void **priv)
> -{
> -	return -EINVAL;
> -}
> -EXPORT_SYMBOL(simple_nosetlease);
> -
>  /**
>   * simple_get_link - generic helper to get the target of "fast" symlinks
>   * @dentry: not used here
> diff --git a/fs/nfs/dir.c b/fs/nfs/dir.c
> index 71df279febf797880ded19e45528c3df4cea2dde..23a78a742b619dea8b76ddf28f4f59a1c8a015e2 100644
> --- a/fs/nfs/dir.c
> +++ b/fs/nfs/dir.c
> @@ -66,7 +66,6 @@ const struct file_operations nfs_dir_operations = {
>  	.open		= nfs_opendir,
>  	.release	= nfs_closedir,
>  	.fsync		= nfs_fsync_dir,
> -	.setlease	= simple_nosetlease,
>  };
>  
>  const struct address_space_operations nfs_dir_aops = {
> diff --git a/fs/nfs/file.c b/fs/nfs/file.c
> index d020aab40c64ebda30d130b6acee1b9194621457..9d269561961825f88529551b0f0287920960ac62 100644
> --- a/fs/nfs/file.c
> +++ b/fs/nfs/file.c
> @@ -962,7 +962,6 @@ const struct file_operations nfs_file_operations = {
>  	.splice_read	= nfs_file_splice_read,
>  	.splice_write	= iter_file_splice_write,
>  	.check_flags	= nfs_check_flags,
> -	.setlease	= simple_nosetlease,
>  	.fop_flags	= FOP_DONTCACHE,
>  };
>  EXPORT_SYMBOL_GPL(nfs_file_operations);

Hey Jeff,

I've noticed an NFS reexport regression in v6.19 and now v7.0-rc1
(similar but different due to your series that requires opt-in via
.setlease).

Bisect first pointed out this commit:
10dcd5110678 nfs: properly disallow delegation requests on directories

And now with v7.0-rc1 its the fact that NFS doesn't provide .setlease
so lstat() on parent dir (of file that I touch) gets -EINVAL.

So its a confluence of NFS's dir delegations and your setlease changes.

If I reexport NFSv4.2 filesystem in terms of NFSv4.1, the regression
is seen by doing (lstat reproducer that gemini spit out for me is
attached):

$ touch /mnt/share41/test
$ strace ./lstat /mnt/share41
...
lstat("/mnt/share41", 0x7ffec0d79920)   = -1 EINVAL (Invalid argument)

If I immediately re-run it works:
...
lstat("/mnt/share41", {st_mode=S_IFDIR|0777, st_size=4096, ...}) = 0

I'm not sure what the proper fix is yet, but I feel like you've missed
that NFS itself can be (re)exported?

Thanks,
Mike

--BuvfweD5MaN+t/uz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="lstat.c"

#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    // 1. Check if the filename was provided via argv
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return EXIT_FAILURE;
    }

    struct stat file_stats;

    // 2. Pass the filename to the lstat syscall
    if (lstat(argv[1], &file_stats) < 0) {
        perror("lstat error");
        return EXIT_FAILURE;
    }

    // 3. Display some basic metadata
    printf("Information for: %s\n", argv[1]);
    printf("---------------------------\n");
    printf("File Size: \t\t%lld bytes\n", (long long)file_stats.st_size);
    printf("Number of Links: \t%ld\n", (long)file_stats.st_nlink);
    printf("File inode: \t\t%ld\n", (long)file_stats.st_ino);

    // 4. Determine file type using macros
    printf("File Type: \t\t");
    if (S_ISLNK(file_stats.st_mode)) printf("Symbolic Link\n");
    else if (S_ISREG(file_stats.st_mode)) printf("Regular File\n");
    else if (S_ISDIR(file_stats.st_mode)) printf("Directory\n");
    else printf("Other\n");

    return EXIT_SUCCESS;
}

--BuvfweD5MaN+t/uz
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--BuvfweD5MaN+t/uz
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--BuvfweD5MaN+t/uz--

