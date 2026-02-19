Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MwEJyv8lmkXtQIAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Feb 2026 13:03:55 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7CA15E7DA
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Feb 2026 13:03:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5tSuuX1OAn7W7fdoh7Bi2wq/lKBk0JW2FyO7chgnLFU=; b=iK3AOEMLAuCNvF6BG1tzDiB/dW
	MmH12piWqJephO9wy+cs/L5Ef6c0hyER2+M7sKcfi1o33prBZ+WcddklNHBLwXJPdTauUhxhg+/hz
	A3fuTbSOSQlQHgWPQXAkMPDyyIeugtH4yU6lf4Rsm8jDWe8XK8F/5E171qFCqkGek3nY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vt2kR-0007vl-1G;
	Thu, 19 Feb 2026 12:03:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1vt2kO-0007vc-R6
 for jfs-discussion@lists.sourceforge.net;
 Thu, 19 Feb 2026 12:03:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PYIguF5TPw9Bm5ffYF+ezNu69qmxavOJ15nqAdMnsBo=; b=ckpvHMH+YfG26QkeQLTeqp8N4B
 sELSx5hBkz1naFg7GptLuM7W48y45nSjrdMKUCCNP3LZOYN/KidxNpAubUOUcMLGKNAKnnzGVKT7A
 86LZKTgnDdTNPcYr578uMBEX62k++8Npp4p4wVxrxAE6RGGEOLlXw8LS7gWh0tsTj/3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PYIguF5TPw9Bm5ffYF+ezNu69qmxavOJ15nqAdMnsBo=; b=LseXbY4+8yUa1rwaA+FR09M4mf
 Fh/G+IKpkZdyjuJAhC5MsyaLVl1ZjDBeJERGPEyIMltabXn5VqsVzZ8VHt/vClGpme5/0PAlmEPel
 Pb8iOsIeEcj/lQ6hMFNRR6qn5PzyhdZpzl/nq3Rozfr93IYoAUlqhYhDARk2+nD7ibmU=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vt2kN-00076n-HY for jfs-discussion@lists.sourceforge.net;
 Thu, 19 Feb 2026 12:03:08 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 0BDF43E6DB;
 Thu, 19 Feb 2026 12:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1771502581; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PYIguF5TPw9Bm5ffYF+ezNu69qmxavOJ15nqAdMnsBo=;
 b=FX3La7g9lSI644cAJzI9v5F9vi/V+5Hpcix96v6lt+D0D89nqAeB3dgu8rau2hCiTOSJiZ
 lzetvgo0gNzcFcQGantfXs5RDF7qFnCE6GH/bBEJfFKY81BmEpVkKUWYPXAZjTF/TMIvax
 QLrEe5l6dM0z/Qwe3++GAg/EfvGyqW4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1771502581;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PYIguF5TPw9Bm5ffYF+ezNu69qmxavOJ15nqAdMnsBo=;
 b=NroNxCrqBXmR+uaYb7gSDV9Z1n9WRiE6wJfD385TwA7Uf9tyZnceL0eQKy9R+IruzABSh+
 Z8sGXwVwwLOb0JBA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1771502581; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PYIguF5TPw9Bm5ffYF+ezNu69qmxavOJ15nqAdMnsBo=;
 b=FX3La7g9lSI644cAJzI9v5F9vi/V+5Hpcix96v6lt+D0D89nqAeB3dgu8rau2hCiTOSJiZ
 lzetvgo0gNzcFcQGantfXs5RDF7qFnCE6GH/bBEJfFKY81BmEpVkKUWYPXAZjTF/TMIvax
 QLrEe5l6dM0z/Qwe3++GAg/EfvGyqW4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1771502581;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PYIguF5TPw9Bm5ffYF+ezNu69qmxavOJ15nqAdMnsBo=;
 b=NroNxCrqBXmR+uaYb7gSDV9Z1n9WRiE6wJfD385TwA7Uf9tyZnceL0eQKy9R+IruzABSh+
 Z8sGXwVwwLOb0JBA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E84613EA65;
 Thu, 19 Feb 2026 12:03:00 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id zSavOPT7lmkiVAAAD6G6ig
 (envelope-from <jack@suse.cz>); Thu, 19 Feb 2026 12:03:00 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id AB2CFA06FE; Thu, 19 Feb 2026 13:03:00 +0100 (CET)
Date: Thu, 19 Feb 2026 13:03:00 +0100
From: Jan Kara <jack@suse.cz>
To: Tal Zussman <tz2294@columbia.edu>
Message-ID: <ew75xhk7i26smogev3mhd6vg24dsiguyh4fvhfghcobyne6w2d@shlc7nufv5b7>
References: <20260218-blk-dontcache-v1-1-fad6675ef71f@columbia.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260218-blk-dontcache-v1-1-fad6675ef71f@columbia.edu>
X-Spam-Flag: NO
X-Spam-Score: -2.30
X-Spam-Level: 
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 18-02-26 16:13:17, Tal Zussman wrote: > Block device
 buffered reads and writes already pass through > filemap_read() and
 iomap_file_buffered_write()
 respectively, both of > which handle IOCB_DO [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vt2kN-00076n-HY
Subject: Re: [Jfs-discussion] [PATCH RFC] block: enable RWF_DONTCACHE for
 block devices
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
Cc: Jens Axboe <axboe@kernel.dk>, Dave Kleikamp <shaggy@kernel.org>,
 Christian Brauner <brauner@kernel.org>, linux-ext4@vger.kernel.org,
 Jan Kara <jack@suse.cz>, linux-block@vger.kernel.org,
 Yuezhang Mo <yuezhang.mo@sony.com>, ntfs3@lists.linux.dev,
 Bob Copeland <me@bobcopeland.com>, linux-kernel@vger.kernel.org,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-karma-devel@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 linux-fsdevel@vger.kernel.org, Sungjong Seo <sj1557.seo@samsung.com>,
 Namjae Jeon <linkinjeon@kernel.org>, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tz2294@columbia.edu,m:axboe@kernel.dk,m:shaggy@kernel.org,m:brauner@kernel.org,m:linux-ext4@vger.kernel.org,m:jack@suse.cz,m:linux-block@vger.kernel.org,m:yuezhang.mo@sony.com,m:ntfs3@lists.linux.dev,m:me@bobcopeland.com,m:linux-kernel@vger.kernel.org,m:konishi.ryusuke@gmail.com,m:almaz.alexandrovich@paragon-software.com,m:linux-karma-devel@lists.sourceforge.net,m:linux-nilfs@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:aivazian.tigran@gmail.com,m:linux-fsdevel@vger.kernel.org,m:sj1557.seo@samsung.com,m:linkinjeon@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:konishiryusuke@gmail.com,m:aivaziantigran@gmail.com,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[jack@suse.cz,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[21];
	DMARC_NA(0.00)[suse.cz];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,suse.cz:-];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:email,suse.com:email,columbia.edu:email,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jack@suse.cz,jfs-discussion-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[kernel.dk,kernel.org,vger.kernel.org,suse.cz,sony.com,lists.linux.dev,bobcopeland.com,gmail.com,paragon-software.com,lists.sourceforge.net,zeniv.linux.org.uk,samsung.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AE7CA15E7DA
X-Rspamd-Action: no action

On Wed 18-02-26 16:13:17, Tal Zussman wrote:
> Block device buffered reads and writes already pass through
> filemap_read() and iomap_file_buffered_write() respectively, both of
> which handle IOCB_DONTCACHE. Enable RWF_DONTCACHE for block device files
> by setting FOP_DONTCACHE in def_blk_fops.
> 
> For CONFIG_BUFFER_HEAD paths, thread the kiocb through
> block_write_begin() so that buffer_head-based I/O can use DONTCACHE
> behavior as well. Callers without a kiocb context (e.g. nilfs2 recovery)
> pass NULL, which preserves the existing behavior.
> 
> This support is useful for databases that operate on raw block devices,
> among other userspace applications.
> 
> Signed-off-by: Tal Zussman <tz2294@columbia.edu>

Looks good to me. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
> This is based on v6.19. Please let me know if there's a different tree I
> should base this on.
> 
> I wasn't sure if the block_write_begin() changes were necessary for
> block device support if CONFIG_BUFFER_HEAD is set (hence the RFC tag). I
> can remove those if they're not necessary.
> ---
>  block/fops.c                |  4 ++--
>  fs/bfs/file.c               |  2 +-
>  fs/buffer.c                 | 12 ++++++++----
>  fs/exfat/inode.c            |  2 +-
>  fs/ext2/inode.c             |  2 +-
>  fs/jfs/inode.c              |  2 +-
>  fs/minix/inode.c            |  2 +-
>  fs/nilfs2/inode.c           |  2 +-
>  fs/nilfs2/recovery.c        |  2 +-
>  fs/ntfs3/inode.c            |  2 +-
>  fs/omfs/file.c              |  2 +-
>  fs/udf/inode.c              |  2 +-
>  fs/ufs/inode.c              |  2 +-
>  include/linux/buffer_head.h |  5 +++--
>  14 files changed, 24 insertions(+), 19 deletions(-)
> 
> diff --git a/block/fops.c b/block/fops.c
> index 4d32785b31d9..6bc727f8b252 100644
> --- a/block/fops.c
> +++ b/block/fops.c
> @@ -505,7 +505,7 @@ static int blkdev_write_begin(const struct kiocb *iocb,
>  			      unsigned len, struct folio **foliop,
>  			      void **fsdata)
>  {
> -	return block_write_begin(mapping, pos, len, foliop, blkdev_get_block);
> +	return block_write_begin(iocb, mapping, pos, len, foliop, blkdev_get_block);
>  }
>  
>  static int blkdev_write_end(const struct kiocb *iocb,
> @@ -967,7 +967,7 @@ const struct file_operations def_blk_fops = {
>  	.splice_write	= iter_file_splice_write,
>  	.fallocate	= blkdev_fallocate,
>  	.uring_cmd	= blkdev_uring_cmd,
> -	.fop_flags	= FOP_BUFFER_RASYNC,
> +	.fop_flags	= FOP_BUFFER_RASYNC | FOP_DONTCACHE,
>  };
>  
>  static __init int blkdev_init(void)
> diff --git a/fs/bfs/file.c b/fs/bfs/file.c
> index d33d6bde992b..f2804e38b8a7 100644
> --- a/fs/bfs/file.c
> +++ b/fs/bfs/file.c
> @@ -177,7 +177,7 @@ static int bfs_write_begin(const struct kiocb *iocb,
>  {
>  	int ret;
>  
> -	ret = block_write_begin(mapping, pos, len, foliop, bfs_get_block);
> +	ret = block_write_begin(iocb, mapping, pos, len, foliop, bfs_get_block);
>  	if (unlikely(ret))
>  		bfs_write_failed(mapping, pos + len);
>  
> diff --git a/fs/buffer.c b/fs/buffer.c
> index 838c0c571022..33c3580b85d8 100644
> --- a/fs/buffer.c
> +++ b/fs/buffer.c
> @@ -2241,14 +2241,18 @@ EXPORT_SYMBOL(block_commit_write);
>   *
>   * The filesystem needs to handle block truncation upon failure.
>   */
> -int block_write_begin(struct address_space *mapping, loff_t pos, unsigned len,
> -		struct folio **foliop, get_block_t *get_block)
> +int block_write_begin(const struct kiocb *iocb, struct address_space *mapping,
> +		loff_t pos, unsigned len, struct folio **foliop, get_block_t *get_block)
>  {
>  	pgoff_t index = pos >> PAGE_SHIFT;
> +	fgf_t fgp_flags = FGP_WRITEBEGIN;
>  	struct folio *folio;
>  	int status;
>  
> -	folio = __filemap_get_folio(mapping, index, FGP_WRITEBEGIN,
> +	if (iocb && iocb->ki_flags & IOCB_DONTCACHE)
> +		fgp_flags |= FGP_DONTCACHE;
> +
> +	folio = __filemap_get_folio(mapping, index, fgp_flags,
>  			mapping_gfp_mask(mapping));
>  	if (IS_ERR(folio))
>  		return PTR_ERR(folio);
> @@ -2591,7 +2595,7 @@ int cont_write_begin(const struct kiocb *iocb, struct address_space *mapping,
>  		(*bytes)++;
>  	}
>  
> -	return block_write_begin(mapping, pos, len, foliop, get_block);
> +	return block_write_begin(iocb, mapping, pos, len, foliop, get_block);
>  }
>  EXPORT_SYMBOL(cont_write_begin);
>  
> diff --git a/fs/exfat/inode.c b/fs/exfat/inode.c
> index f9501c3a3666..39d36e8fdfd6 100644
> --- a/fs/exfat/inode.c
> +++ b/fs/exfat/inode.c
> @@ -456,7 +456,7 @@ static int exfat_write_begin(const struct kiocb *iocb,
>  	if (unlikely(exfat_forced_shutdown(mapping->host->i_sb)))
>  		return -EIO;
>  
> -	ret = block_write_begin(mapping, pos, len, foliop, exfat_get_block);
> +	ret = block_write_begin(iocb, mapping, pos, len, foliop, exfat_get_block);
>  
>  	if (ret < 0)
>  		exfat_write_failed(mapping, pos+len);
> diff --git a/fs/ext2/inode.c b/fs/ext2/inode.c
> index dbfe9098a124..11aab03de752 100644
> --- a/fs/ext2/inode.c
> +++ b/fs/ext2/inode.c
> @@ -930,7 +930,7 @@ ext2_write_begin(const struct kiocb *iocb, struct address_space *mapping,
>  {
>  	int ret;
>  
> -	ret = block_write_begin(mapping, pos, len, foliop, ext2_get_block);
> +	ret = block_write_begin(iocb, mapping, pos, len, foliop, ext2_get_block);
>  	if (ret < 0)
>  		ext2_write_failed(mapping, pos + len);
>  	return ret;
> diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
> index 4709762713ef..ae52db437771 100644
> --- a/fs/jfs/inode.c
> +++ b/fs/jfs/inode.c
> @@ -303,7 +303,7 @@ static int jfs_write_begin(const struct kiocb *iocb,
>  {
>  	int ret;
>  
> -	ret = block_write_begin(mapping, pos, len, foliop, jfs_get_block);
> +	ret = block_write_begin(iocb, mapping, pos, len, foliop, jfs_get_block);
>  	if (unlikely(ret))
>  		jfs_write_failed(mapping, pos + len);
>  
> diff --git a/fs/minix/inode.c b/fs/minix/inode.c
> index 51ea9bdc813f..9075c0ba2f20 100644
> --- a/fs/minix/inode.c
> +++ b/fs/minix/inode.c
> @@ -465,7 +465,7 @@ static int minix_write_begin(const struct kiocb *iocb,
>  {
>  	int ret;
>  
> -	ret = block_write_begin(mapping, pos, len, foliop, minix_get_block);
> +	ret = block_write_begin(iocb, mapping, pos, len, foliop, minix_get_block);
>  	if (unlikely(ret))
>  		minix_write_failed(mapping, pos + len);
>  
> diff --git a/fs/nilfs2/inode.c b/fs/nilfs2/inode.c
> index 51bde45d5865..d9d57eeecc5d 100644
> --- a/fs/nilfs2/inode.c
> +++ b/fs/nilfs2/inode.c
> @@ -230,7 +230,7 @@ static int nilfs_write_begin(const struct kiocb *iocb,
>  	if (unlikely(err))
>  		return err;
>  
> -	err = block_write_begin(mapping, pos, len, foliop, nilfs_get_block);
> +	err = block_write_begin(iocb, mapping, pos, len, foliop, nilfs_get_block);
>  	if (unlikely(err)) {
>  		nilfs_write_failed(mapping, pos + len);
>  		nilfs_transaction_abort(inode->i_sb);
> diff --git a/fs/nilfs2/recovery.c b/fs/nilfs2/recovery.c
> index a9c61d0492cb..2f5fe44bf736 100644
> --- a/fs/nilfs2/recovery.c
> +++ b/fs/nilfs2/recovery.c
> @@ -541,7 +541,7 @@ static int nilfs_recover_dsync_blocks(struct the_nilfs *nilfs,
>  		}
>  
>  		pos = rb->blkoff << inode->i_blkbits;
> -		err = block_write_begin(inode->i_mapping, pos, blocksize,
> +		err = block_write_begin(NULL, inode->i_mapping, pos, blocksize,
>  					&folio, nilfs_get_block);
>  		if (unlikely(err)) {
>  			loff_t isize = inode->i_size;
> diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
> index 0a9ac5efeb67..8c788feb319e 100644
> --- a/fs/ntfs3/inode.c
> +++ b/fs/ntfs3/inode.c
> @@ -966,7 +966,7 @@ int ntfs_write_begin(const struct kiocb *iocb, struct address_space *mapping,
>  			goto out;
>  	}
>  
> -	err = block_write_begin(mapping, pos, len, foliop,
> +	err = block_write_begin(iocb, mapping, pos, len, foliop,
>  				ntfs_get_block_write_begin);
>  
>  out:
> diff --git a/fs/omfs/file.c b/fs/omfs/file.c
> index 49a1de5a827f..3bade632e36e 100644
> --- a/fs/omfs/file.c
> +++ b/fs/omfs/file.c
> @@ -317,7 +317,7 @@ static int omfs_write_begin(const struct kiocb *iocb,
>  {
>  	int ret;
>  
> -	ret = block_write_begin(mapping, pos, len, foliop, omfs_get_block);
> +	ret = block_write_begin(iocb, mapping, pos, len, foliop, omfs_get_block);
>  	if (unlikely(ret))
>  		omfs_write_failed(mapping, pos + len);
>  
> diff --git a/fs/udf/inode.c b/fs/udf/inode.c
> index 7fae8002344a..aec9cdc938be 100644
> --- a/fs/udf/inode.c
> +++ b/fs/udf/inode.c
> @@ -259,7 +259,7 @@ static int udf_write_begin(const struct kiocb *iocb,
>  	int ret;
>  
>  	if (iinfo->i_alloc_type != ICBTAG_FLAG_AD_IN_ICB) {
> -		ret = block_write_begin(mapping, pos, len, foliop,
> +		ret = block_write_begin(iocb, mapping, pos, len, foliop,
>  					udf_get_block);
>  		if (unlikely(ret))
>  			udf_write_failed(mapping, pos + len);
> diff --git a/fs/ufs/inode.c b/fs/ufs/inode.c
> index e2b0a35de2a7..dfba985265a8 100644
> --- a/fs/ufs/inode.c
> +++ b/fs/ufs/inode.c
> @@ -481,7 +481,7 @@ static int ufs_write_begin(const struct kiocb *iocb,
>  {
>  	int ret;
>  
> -	ret = block_write_begin(mapping, pos, len, foliop, ufs_getfrag_block);
> +	ret = block_write_begin(iocb, mapping, pos, len, foliop, ufs_getfrag_block);
>  	if (unlikely(ret))
>  		ufs_write_failed(mapping, pos + len);
>  
> diff --git a/include/linux/buffer_head.h b/include/linux/buffer_head.h
> index b16b88bfbc3e..4b07dec5f8eb 100644
> --- a/include/linux/buffer_head.h
> +++ b/include/linux/buffer_head.h
> @@ -258,8 +258,9 @@ int __block_write_full_folio(struct inode *inode, struct folio *folio,
>  		get_block_t *get_block, struct writeback_control *wbc);
>  int block_read_full_folio(struct folio *, get_block_t *);
>  bool block_is_partially_uptodate(struct folio *, size_t from, size_t count);
> -int block_write_begin(struct address_space *mapping, loff_t pos, unsigned len,
> -		struct folio **foliop, get_block_t *get_block);
> +int block_write_begin(const struct kiocb *iocb, struct address_space *mapping,
> +		loff_t pos, unsigned len, struct folio **foliop,
> +		get_block_t *get_block);
>  int __block_write_begin(struct folio *folio, loff_t pos, unsigned len,
>  		get_block_t *get_block);
>  int block_write_end(loff_t pos, unsigned len, unsigned copied, struct folio *);
> 
> ---
> base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
> change-id: 20260218-blk-dontcache-338133dd045e
> 
> Best regards,
> -- 
> Tal Zussman <tz2294@columbia.edu>
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
