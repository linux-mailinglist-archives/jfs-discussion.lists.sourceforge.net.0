Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4EF545304
	for <lists+jfs-discussion@lfdr.de>; Thu,  9 Jun 2022 19:32:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nzM11-0005CI-Uf; Thu, 09 Jun 2022 17:32:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jack@suse.cz>) id 1nzM10-0005CB-BX
 for jfs-discussion@lists.sourceforge.net; Thu, 09 Jun 2022 17:32:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ck91PtWX6yBhQ4sZXbXKs49E/1QZEM43OfHwV3RWAAE=; b=SPvyn7B72cO3bsx+tf6AMThoik
 pksnzVqRTDMDQ/npmw3zssRAvf6HNtVFzqeDFMsFgmD3bPa7axTYlWThOYJ3whmSFuwL3+1GpArdD
 ZV9ihKVJVM0+eHjt4Fk7AqhvUWek4dSmNrL/5G0bN2IVdIOxHykyLcDFtLLVwqDNtNf8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ck91PtWX6yBhQ4sZXbXKs49E/1QZEM43OfHwV3RWAAE=; b=BPy4A6Her9v5Bq1X18B9Gcv/Ar
 7RmEfII/kvvzcbjTDzundUlNrhCBNlFN90BM9/91R899ZQtpnU9aDLRavo95hTZGWb63I92a/ha4c
 UctdCG6zOc3UJNiTcNzjPPXtiDo2J/QAU2/9rw7Ex5L38WYICvLVOvGeRvKz+pSOnmEk=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nzM0x-0004mh-BC
 for jfs-discussion@lists.sourceforge.net; Thu, 09 Jun 2022 17:32:14 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id F0D3E22024;
 Thu,  9 Jun 2022 17:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1654795923; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ck91PtWX6yBhQ4sZXbXKs49E/1QZEM43OfHwV3RWAAE=;
 b=FXeGIc/6Phds3vEHHRSfr1wqrN1UUKTH35QyDvku6zUJ9oy6q/7pexMNpfM54wg4M+q1uR
 sB39pzL4r+1IUh69tV484kEAWEHJWEFpX+lYNbDv5/dgS6Fi+wqX9dqftWLFYK5B8CQspL
 3KSBgcuELkN0R0rqd9a0bkCSkji+z0g=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1654795923;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ck91PtWX6yBhQ4sZXbXKs49E/1QZEM43OfHwV3RWAAE=;
 b=mqWoO+V8YXZQGb4cFuKrnG6i3RgqcnBMUMiZCm4eYFPyKM+COoxahatX1ar3AJSoPZouJV
 X/yeJQqASlBW6VCw==
Received: from quack3.suse.cz (unknown [10.163.28.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id D7BCF2C141;
 Thu,  9 Jun 2022 17:32:03 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 7B438A0633; Thu,  9 Jun 2022 19:32:03 +0200 (CEST)
Date: Thu, 9 Jun 2022 19:32:03 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20220609173203.is7vze5fdhx53t3x@quack3.lan>
References: <20220608150451.1432388-1-hch@lst.de>
 <20220608150451.1432388-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220608150451.1432388-2-hch@lst.de>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 08-06-22 17:04:47, Christoph Hellwig wrote: > The nobh
 mode is an obscure feature to save lowlevel for large memory > 32-bit
 configurations
 while trading for much slower performance and > has b [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nzM0x-0004mh-BC
Subject: Re: [Jfs-discussion] [PATCH 1/5] ext2: remove nobh support
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed 08-06-22 17:04:47, Christoph Hellwig wrote:
> The nobh mode is an obscure feature to save lowlevel for large memory
> 32-bit configurations while trading for much slower performance and
> has been long obsolete.  Remove it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Yes, I agree. Let's just rip it out. Feel free to add:

Acked-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  Documentation/filesystems/ext2.rst |  2 --
>  fs/ext2/ext2.h                     |  1 -
>  fs/ext2/inode.c                    | 51 ++----------------------------
>  fs/ext2/namei.c                    | 10 ++----
>  fs/ext2/super.c                    |  6 ++--
>  5 files changed, 7 insertions(+), 63 deletions(-)
> 
> diff --git a/Documentation/filesystems/ext2.rst b/Documentation/filesystems/ext2.rst
> index 154101cf0e4f5..92aae683e16a7 100644
> --- a/Documentation/filesystems/ext2.rst
> +++ b/Documentation/filesystems/ext2.rst
> @@ -59,8 +59,6 @@ acl				Enable POSIX Access Control Lists support
>  				(requires CONFIG_EXT2_FS_POSIX_ACL).
>  noacl				Don't support POSIX ACLs.
>  
> -nobh				Do not attach buffer_heads to file pagecache.
> -
>  quota, usrquota			Enable user disk quota support
>  				(requires CONFIG_QUOTA).
>  
> diff --git a/fs/ext2/ext2.h b/fs/ext2/ext2.h
> index d4f306aa5aceb..28de11a22e5f6 100644
> --- a/fs/ext2/ext2.h
> +++ b/fs/ext2/ext2.h
> @@ -795,7 +795,6 @@ extern const struct file_operations ext2_file_operations;
>  /* inode.c */
>  extern void ext2_set_file_ops(struct inode *inode);
>  extern const struct address_space_operations ext2_aops;
> -extern const struct address_space_operations ext2_nobh_aops;
>  extern const struct iomap_ops ext2_iomap_ops;
>  
>  /* namei.c */
> diff --git a/fs/ext2/inode.c b/fs/ext2/inode.c
> index 84570c6265aae..2001e784fee11 100644
> --- a/fs/ext2/inode.c
> +++ b/fs/ext2/inode.c
> @@ -908,25 +908,6 @@ static int ext2_write_end(struct file *file, struct address_space *mapping,
>  	return ret;
>  }
>  
> -static int
> -ext2_nobh_write_begin(struct file *file, struct address_space *mapping,
> -		loff_t pos, unsigned len, struct page **pagep, void **fsdata)
> -{
> -	int ret;
> -
> -	ret = nobh_write_begin(mapping, pos, len, pagep, fsdata,
> -			       ext2_get_block);
> -	if (ret < 0)
> -		ext2_write_failed(mapping, pos + len);
> -	return ret;
> -}
> -
> -static int ext2_nobh_writepage(struct page *page,
> -			struct writeback_control *wbc)
> -{
> -	return nobh_writepage(page, ext2_get_block, wbc);
> -}
> -
>  static sector_t ext2_bmap(struct address_space *mapping, sector_t block)
>  {
>  	return generic_block_bmap(mapping,block,ext2_get_block);
> @@ -978,21 +959,6 @@ const struct address_space_operations ext2_aops = {
>  	.error_remove_page	= generic_error_remove_page,
>  };
>  
> -const struct address_space_operations ext2_nobh_aops = {
> -	.dirty_folio		= block_dirty_folio,
> -	.invalidate_folio	= block_invalidate_folio,
> -	.read_folio		= ext2_read_folio,
> -	.readahead		= ext2_readahead,
> -	.writepage		= ext2_nobh_writepage,
> -	.write_begin		= ext2_nobh_write_begin,
> -	.write_end		= nobh_write_end,
> -	.bmap			= ext2_bmap,
> -	.direct_IO		= ext2_direct_IO,
> -	.writepages		= ext2_writepages,
> -	.migrate_folio		= buffer_migrate_folio,
> -	.error_remove_page	= generic_error_remove_page,
> -};
> -
>  static const struct address_space_operations ext2_dax_aops = {
>  	.writepages		= ext2_dax_writepages,
>  	.direct_IO		= noop_direct_IO,
> @@ -1298,13 +1264,10 @@ static int ext2_setsize(struct inode *inode, loff_t newsize)
>  
>  	inode_dio_wait(inode);
>  
> -	if (IS_DAX(inode)) {
> +	if (IS_DAX(inode))
>  		error = dax_zero_range(inode, newsize,
>  				       PAGE_ALIGN(newsize) - newsize, NULL,
>  				       &ext2_iomap_ops);
> -	} else if (test_opt(inode->i_sb, NOBH))
> -		error = nobh_truncate_page(inode->i_mapping,
> -				newsize, ext2_get_block);
>  	else
>  		error = block_truncate_page(inode->i_mapping,
>  				newsize, ext2_get_block);
> @@ -1396,8 +1359,6 @@ void ext2_set_file_ops(struct inode *inode)
>  	inode->i_fop = &ext2_file_operations;
>  	if (IS_DAX(inode))
>  		inode->i_mapping->a_ops = &ext2_dax_aops;
> -	else if (test_opt(inode->i_sb, NOBH))
> -		inode->i_mapping->a_ops = &ext2_nobh_aops;
>  	else
>  		inode->i_mapping->a_ops = &ext2_aops;
>  }
> @@ -1497,10 +1458,7 @@ struct inode *ext2_iget (struct super_block *sb, unsigned long ino)
>  	} else if (S_ISDIR(inode->i_mode)) {
>  		inode->i_op = &ext2_dir_inode_operations;
>  		inode->i_fop = &ext2_dir_operations;
> -		if (test_opt(inode->i_sb, NOBH))
> -			inode->i_mapping->a_ops = &ext2_nobh_aops;
> -		else
> -			inode->i_mapping->a_ops = &ext2_aops;
> +		inode->i_mapping->a_ops = &ext2_aops;
>  	} else if (S_ISLNK(inode->i_mode)) {
>  		if (ext2_inode_is_fast_symlink(inode)) {
>  			inode->i_link = (char *)ei->i_data;
> @@ -1510,10 +1468,7 @@ struct inode *ext2_iget (struct super_block *sb, unsigned long ino)
>  		} else {
>  			inode->i_op = &ext2_symlink_inode_operations;
>  			inode_nohighmem(inode);
> -			if (test_opt(inode->i_sb, NOBH))
> -				inode->i_mapping->a_ops = &ext2_nobh_aops;
> -			else
> -				inode->i_mapping->a_ops = &ext2_aops;
> +			inode->i_mapping->a_ops = &ext2_aops;
>  		}
>  	} else {
>  		inode->i_op = &ext2_special_inode_operations;
> diff --git a/fs/ext2/namei.c b/fs/ext2/namei.c
> index 5f6b7560eb3f3..5fd9a22d2b70c 100644
> --- a/fs/ext2/namei.c
> +++ b/fs/ext2/namei.c
> @@ -178,10 +178,7 @@ static int ext2_symlink (struct user_namespace * mnt_userns, struct inode * dir,
>  		/* slow symlink */
>  		inode->i_op = &ext2_symlink_inode_operations;
>  		inode_nohighmem(inode);
> -		if (test_opt(inode->i_sb, NOBH))
> -			inode->i_mapping->a_ops = &ext2_nobh_aops;
> -		else
> -			inode->i_mapping->a_ops = &ext2_aops;
> +		inode->i_mapping->a_ops = &ext2_aops;
>  		err = page_symlink(inode, symname, l);
>  		if (err)
>  			goto out_fail;
> @@ -247,10 +244,7 @@ static int ext2_mkdir(struct user_namespace * mnt_userns,
>  
>  	inode->i_op = &ext2_dir_inode_operations;
>  	inode->i_fop = &ext2_dir_operations;
> -	if (test_opt(inode->i_sb, NOBH))
> -		inode->i_mapping->a_ops = &ext2_nobh_aops;
> -	else
> -		inode->i_mapping->a_ops = &ext2_aops;
> +	inode->i_mapping->a_ops = &ext2_aops;
>  
>  	inode_inc_link_count(inode);
>  
> diff --git a/fs/ext2/super.c b/fs/ext2/super.c
> index f6a19f6d9f6d5..a1c1263c07ab3 100644
> --- a/fs/ext2/super.c
> +++ b/fs/ext2/super.c
> @@ -296,9 +296,6 @@ static int ext2_show_options(struct seq_file *seq, struct dentry *root)
>  		seq_puts(seq, ",noacl");
>  #endif
>  
> -	if (test_opt(sb, NOBH))
> -		seq_puts(seq, ",nobh");
> -
>  	if (test_opt(sb, USRQUOTA))
>  		seq_puts(seq, ",usrquota");
>  
> @@ -551,7 +548,8 @@ static int parse_options(char *options, struct super_block *sb,
>  			clear_opt (opts->s_mount_opt, OLDALLOC);
>  			break;
>  		case Opt_nobh:
> -			set_opt (opts->s_mount_opt, NOBH);
> +			ext2_msg(sb, KERN_INFO,
> +				"nobh option not supported");
>  			break;
>  #ifdef CONFIG_EXT2_FS_XATTR
>  		case Opt_user_xattr:
> -- 
> 2.30.2
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
