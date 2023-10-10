Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3547BFD04
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Oct 2023 15:12:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqCWX-0001TQ-DN;
	Tue, 10 Oct 2023 13:11:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qqCWV-0001TK-K6
 for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Oct 2023 13:11:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OcnlPdXPp8TEZItcZ/fLRAEfXrmV/4GaCHnIViuZCTA=; b=WZYAjaFjGyZSTCe2OCl5cD0Sqe
 b7Y7gUP/jz5renbLluxaGaE4+ZdUFcidPLaN1rDX2v3oLQGm969BeEYHOFH3CNuhQ12qO3xUCQSeg
 H1DRq5TGELbS/QyeF814ULOCfyCBvi2RqxKMtmkywfXiY3/W/hZH46lyaN9dI/gHle+M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OcnlPdXPp8TEZItcZ/fLRAEfXrmV/4GaCHnIViuZCTA=; b=c7R3Xj2F9kGPqk5HSJFKp1MMI2
 spmwBrMoHqZbd2aHEkW3tWpGaBQfVlmKzB5ZNmNrB299NsBoETr8hRfWaxz1T8/N00Sae663OkvNI
 N2KC8kbY1wD9wu/VzyIoQkv7TkrpBJMCKv+7tuldURnTwU2C0rS5R2cFkiNkeJGM7fhE=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqCWO-00AfUR-Mk for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Oct 2023 13:11:41 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id F1D9821835;
 Tue, 10 Oct 2023 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1696943486; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OcnlPdXPp8TEZItcZ/fLRAEfXrmV/4GaCHnIViuZCTA=;
 b=C/wakAH4lemrhHu3dIC3LUtIoy/4S/UlQUABM9ptLGmxKpW1IE9kYco9vDmkp2gbZNr9B7
 EmD54OO+2et7g38dq3yeWvw9TLUVU9yJqZygW9LJpIKcahptzeyM9MLP1fAblgiyTyg7u5
 6R6CR4/rQP/WBlV2knXyqoOY7O5DmkU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1696943486;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OcnlPdXPp8TEZItcZ/fLRAEfXrmV/4GaCHnIViuZCTA=;
 b=AGkrC0RoW+lXLQy4ntRnDXvQCf2jvkdPTYmPpInT4rb0FwGZZ2TRu7EG+jQIkHaAPfobmo
 4PWHJif4CsnmnRDw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id E4D5D1358F;
 Tue, 10 Oct 2023 13:11:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id R4reN31NJWVGYQAAMHmgww
 (envelope-from <jack@suse.cz>); Tue, 10 Oct 2023 13:11:25 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 818B6A061C; Tue, 10 Oct 2023 15:11:25 +0200 (CEST)
Date: Tue, 10 Oct 2023 15:11:25 +0200
From: Jan Kara <jack@suse.cz>
To: Max Kellermann <max.kellermann@ionos.com>
Message-ID: <20231010131125.3uyfkqbcetfcqsve@quack3>
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
 <20231009144340.418904-1-max.kellermann@ionos.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231009144340.418904-1-max.kellermann@ionos.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 09-10-23 16:43:39,
 Max Kellermann wrote: > One important
 implementation detail of the posix_acl_create() function > is that it applies
 the umask to the "mode" parameter. If > CONFIG_FS_POSIX_AC [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qqCWO-00AfUR-Mk
Subject: Re: [Jfs-discussion] [PATCH v2] fs/{posix_acl, ext2, jfs,
 ceph}: apply umask if ACL support is disabled
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
 linux-ext4@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Jan Kara <jack@suse.com>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon 09-10-23 16:43:39, Max Kellermann wrote:
> One important implementation detail of the posix_acl_create() function
> is that it applies the umask to the "mode" parameter.  If
> CONFIG_FS_POSIX_ACL is disabled, this detail is missing and the umask
> may not get applied.
> 
> This patch adds the missing code to posix_acl_create() and to three
> filesystems that omit the posix_acl_create() call if their individual
> ACL support is disabled (CONFIG_EXT2_FS_POSIX_ACL,
> CONFIG_JFS_POSIX_ACL, CONFIG_CEPH_FS_POSIX_ACL).  If
> posix_acl_create() never gets called, the umask needs to be applied
> anyway.
> 
> This bug used to be exploitable easily with O_TMPFILE (see
> https://bugzilla.kernel.org/show_bug.cgi?id=203625) but that part was
> fixed by commit ac6800e279a2 ("fs: Add missing umask strip in
> vfs_tmpfile") last year.  The bug may not be reachable by userspace
> anymore, but since it is apparently still necessary to apply the umask
> again in posix_acl_create(), there is no reason to assume it's not
> necessary with ACL support is disabled.
> 
> Signed-off-by: Max Kellermann <max.kellermann@ionos.com>

Thanks for the updated changelog! But as I'm looking into VFS code isn't
this already handled by mode_strip_umask() / vfs_prepare_mode() in
fs/namei.c? Because posix_acl_create() doesn't do anything to 'mode' for
!IS_POSIXACL() filesystems either. So at least ext2 (where I've checked
the mount option handling) does seem to have umask properly applied in all
the cases. But I might be missing something...

								Honza

> ---
>  fs/ceph/super.h           | 6 ++++++
>  fs/ext2/acl.h             | 6 ++++++
>  fs/jfs/jfs_acl.h          | 6 ++++++
>  include/linux/posix_acl.h | 1 +
>  4 files changed, 19 insertions(+)
> 
> diff --git a/fs/ceph/super.h b/fs/ceph/super.h
> index 51c7f2b14f6f..58349639bd57 100644
> --- a/fs/ceph/super.h
> +++ b/fs/ceph/super.h
> @@ -1194,6 +1194,12 @@ static inline void ceph_forget_all_cached_acls(struct inode *inode)
>  static inline int ceph_pre_init_acls(struct inode *dir, umode_t *mode,
>  				     struct ceph_acl_sec_ctx *as_ctx)
>  {
> +	/* usually, the umask is applied by posix_acl_create(), but if
> +	 * ACL support is disabled at compile time, we need to do it
> +	 * here, because posix_acl_create() will never be called
> +	 */
> +	*mode &= ~current_umask();
> +
>  	return 0;
>  }
>  static inline void ceph_init_inode_acls(struct inode *inode,
> diff --git a/fs/ext2/acl.h b/fs/ext2/acl.h
> index 4a8443a2b8ec..0ecaa9c20c0c 100644
> --- a/fs/ext2/acl.h
> +++ b/fs/ext2/acl.h
> @@ -67,6 +67,12 @@ extern int ext2_init_acl (struct inode *, struct inode *);
>  
>  static inline int ext2_init_acl (struct inode *inode, struct inode *dir)
>  {
> +	/* usually, the umask is applied by posix_acl_create(), but if
> +	 * ACL support is disabled at compile time, we need to do it
> +	 * here, because posix_acl_create() will never be called
> +	 */
> +	inode->i_mode &= ~current_umask();
> +
>  	return 0;
>  }
>  #endif
> diff --git a/fs/jfs/jfs_acl.h b/fs/jfs/jfs_acl.h
> index f892e54d0fcd..64a05e663a45 100644
> --- a/fs/jfs/jfs_acl.h
> +++ b/fs/jfs/jfs_acl.h
> @@ -17,6 +17,12 @@ int jfs_init_acl(tid_t, struct inode *, struct inode *);
>  static inline int jfs_init_acl(tid_t tid, struct inode *inode,
>  			       struct inode *dir)
>  {
> +	/* usually, the umask is applied by posix_acl_create(), but if
> +	 * ACL support is disabled at compile time, we need to do it
> +	 * here, because posix_acl_create() will never be called
> +	 */
> +	inode->i_mode &= ~current_umask();
> +
>  	return 0;
>  }
>  
> diff --git a/include/linux/posix_acl.h b/include/linux/posix_acl.h
> index 0e65b3d634d9..54bc9b1061ca 100644
> --- a/include/linux/posix_acl.h
> +++ b/include/linux/posix_acl.h
> @@ -128,6 +128,7 @@ static inline void cache_no_acl(struct inode *inode)
>  static inline int posix_acl_create(struct inode *inode, umode_t *mode,
>  		struct posix_acl **default_acl, struct posix_acl **acl)
>  {
> +	*mode &= ~current_umask();
>  	*default_acl = *acl = NULL;
>  	return 0;
>  }
> -- 
> 2.39.2
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
