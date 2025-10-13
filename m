Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2519CBD2EB4
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 14:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F9KblicsYccfQW8lm0vRGDEFWROXtWUXXIatk/2ZSq0=; b=J86ACPXVhoKAcsv9rpdgWg3UbJ
	4dQyvM3pkg2ewkBlG5XUFhO5mR0tzAT1qsqoyxGNRmRywG7xq1NfWFeAiYCGm8n8t8l+MiNGqNrSq
	WmAhXw/L+/HMOkEhy5qLsjSg9p0Vyw0LY6g2RIONs/GueRWaZYY3ufXNSQGIgfhzazY8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8HNy-0000do-JF;
	Mon, 13 Oct 2025 12:10:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1v8HNx-0000dc-JV
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:10:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gxSdY8AEzXNttMyqmikG4KICkG68sQmVXDungx9myyE=; b=J38RcE6lYMW1BqYkzB5BqWdVOB
 cnP/IthDmAovP2/BpQe6CNqrjIdIzNP5k+GCuTj0h9B5oSwPtep7d55ZDivlX/QhpTgtMgJR/0yPN
 W8hde1fSSE0/yWuOodZGWBZ4D9XfOthRdiVDr8qTSZo2lIlJydC90Rbsz2lhsc3gpkgI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gxSdY8AEzXNttMyqmikG4KICkG68sQmVXDungx9myyE=; b=Gqnsm/0xYzxxtiOA3BDB+UfryI
 Lg9eKGf+xeEuKJ/1BS6+fXVslDgvdjryOVWdatQNqE/O4DRFprWl/7zJ1vmD0hu8zkOwWmw2f6OLX
 S84vjsE3vYGocQn2vefYxy6BY5p7HwWzTDRmtHmngB6UhIAnT+FX5OhVQu8oycHc32TE=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8HNx-0002TZ-IL for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:10:42 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 53E081F385;
 Mon, 13 Oct 2025 12:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760357005; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gxSdY8AEzXNttMyqmikG4KICkG68sQmVXDungx9myyE=;
 b=I6Tu6QExFV+dBebEO5FqWa4CnC/ZtZN0xOyEGAncmWdGoa0IVFsax7N9267RYZWCI4yDAe
 BFW3FdZz+2JOTd98CT1+hWculdJYDQ4LNt3cLfzcA4cAZIcrGHgW7En1dyBj0473RkMG9T
 OUcuSbJaN4bH1iJ36A29HSmcMeKxvDw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760357005;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gxSdY8AEzXNttMyqmikG4KICkG68sQmVXDungx9myyE=;
 b=F5tMp6sHebc1bFNq3o1qlBgdw7WXSa0vxFWNhLozJ6p13Cc8QTGnffMoJWdwcUfP+UgWDy
 WJo390eCPwLnUVDQ==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760357004; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gxSdY8AEzXNttMyqmikG4KICkG68sQmVXDungx9myyE=;
 b=b+bmMbsYtdbqriqZU30MLE3rigTOge9VFILpR3ZAxAIp87aWzR0HZf5iXLy3Qmlc7o6ht4
 iBQVFePWgwKhRReC07vwR6ym9gJe2q+JZ+tpStLqlpxQvsC3xZPYxQhmVE3Yls+FXyCsJC
 G2vN2Sg2zwqFIUtoWSVWz9su12YR4E0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760357004;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gxSdY8AEzXNttMyqmikG4KICkG68sQmVXDungx9myyE=;
 b=uZgagJZ4MaG1boq9mL70Dd8Oh/MLQG+tSddPXnq7M9Ii3bXEdvfa5li/T/T78DRLB8vpiJ
 ZCtWGQBAtDwPq6DQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 4362513874;
 Mon, 13 Oct 2025 12:03:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id TKZxEIzq7GgcBwAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 13 Oct 2025 12:03:24 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id EBC7BA0A58; Mon, 13 Oct 2025 14:03:15 +0200 (CEST)
Date: Mon, 13 Oct 2025 14:03:15 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <ggj5mx662pc6557zthvqfbzcjzbltjntvf5ly5bj3czeof6ute@r3cjumpx3gtp>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-10-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013025808.4111128-10-hch@lst.de>
X-Spamd-Result: default: False [-3.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-0.999]; MIME_GOOD(-0.10)[text/plain];
 MISSING_XM_UA(0.00)[]; FROM_HAS_DN(0.00)[];
 MIME_TRACE(0.00)[0:+]; ARC_NA(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RCVD_COUNT_THREE(0.00)[3]; TO_DN_SOME(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_TLS_LAST(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email, suse.cz:email, suse.com:email,
 imap1.dmz-prg2.suse.org:helo]
X-Spam-Flag: NO
X-Spam-Score: -3.80
X-Spam-Level: 
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 13-10-25 11:58:04,
 Christoph Hellwig wrote: > Use filemap_fdatawrite_range
 and filemap_fdatawrite_range_kick instead > of the low-level
 __filemap_fdatawrite_range that requires the caller > to [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1v8HNx-0002TZ-IL
Subject: Re: [Jfs-discussion] [PATCH 09/10] mm: remove
 __filemap_fdatawrite_range
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-mm@kvack.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Joel Becker <jlbec@evilplan.org>,
 David Sterba <dsterba@suse.com>, Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 v9fs@lists.linux.dev, linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon 13-10-25 11:58:04, Christoph Hellwig wrote:
> Use filemap_fdatawrite_range and filemap_fdatawrite_range_kick instead
> of the low-level __filemap_fdatawrite_range that requires the caller
> to know the internals of the writeback_control structure and remove
> __filemap_fdatawrite_range now that it is trivial and only two callers
> would be left.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/fs-writeback.c       |  6 +++---
>  fs/sync.c               | 11 +++++------
>  include/linux/pagemap.h |  2 --
>  mm/fadvise.c            |  3 +--
>  mm/filemap.c            | 25 +++++++------------------
>  5 files changed, 16 insertions(+), 31 deletions(-)
> 
> diff --git a/fs/fs-writeback.c b/fs/fs-writeback.c
> index 2b35e80037fe..8b002ab18103 100644
> --- a/fs/fs-writeback.c
> +++ b/fs/fs-writeback.c
> @@ -807,9 +807,9 @@ static void wbc_attach_and_unlock_inode(struct writeback_control *wbc,
>   * @wbc: writeback_control of interest
>   * @inode: target inode
>   *
> - * This function is to be used by __filemap_fdatawrite_range(), which is an
> - * alternative entry point into writeback code, and first ensures @inode is
> - * associated with a bdi_writeback and attaches it to @wbc.
> + * This function is to be used by filemap_fdatawrite*(), which write back data
> + * from arbitrary threads instead of the main writeback thread to ensure @inode
> + * is associated with a bdi_writeback and attached to @wbc.
>   */
>  void wbc_attach_fdatawrite_inode(struct writeback_control *wbc,
>  		struct inode *inode)
> diff --git a/fs/sync.c b/fs/sync.c
> index 2955cd4c77a3..6d8b04e04c3c 100644
> --- a/fs/sync.c
> +++ b/fs/sync.c
> @@ -280,14 +280,13 @@ int sync_file_range(struct file *file, loff_t offset, loff_t nbytes,
>  	}
>  
>  	if (flags & SYNC_FILE_RANGE_WRITE) {
> -		int sync_mode = WB_SYNC_NONE;
> -
>  		if ((flags & SYNC_FILE_RANGE_WRITE_AND_WAIT) ==
>  			     SYNC_FILE_RANGE_WRITE_AND_WAIT)
> -			sync_mode = WB_SYNC_ALL;
> -
> -		ret = __filemap_fdatawrite_range(mapping, offset, endbyte,
> -						 sync_mode);
> +			ret = filemap_fdatawrite_range(mapping, offset,
> +					endbyte);
> +		else
> +			ret = filemap_fdatawrite_range_kick(mapping, offset,
> +					endbyte);
>  		if (ret < 0)
>  			goto out;
>  	}
> diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
> index 742ba1dd3990..664f23f2330a 100644
> --- a/include/linux/pagemap.h
> +++ b/include/linux/pagemap.h
> @@ -55,8 +55,6 @@ static inline int filemap_fdatawait(struct address_space *mapping)
>  bool filemap_range_has_page(struct address_space *, loff_t lstart, loff_t lend);
>  int filemap_write_and_wait_range(struct address_space *mapping,
>  		loff_t lstart, loff_t lend);
> -int __filemap_fdatawrite_range(struct address_space *mapping,
> -		loff_t start, loff_t end, int sync_mode);
>  int filemap_fdatawrite_range(struct address_space *mapping,
>  		loff_t start, loff_t end);
>  int filemap_check_errors(struct address_space *mapping);
> diff --git a/mm/fadvise.c b/mm/fadvise.c
> index 588fe76c5a14..f1be619f0e58 100644
> --- a/mm/fadvise.c
> +++ b/mm/fadvise.c
> @@ -111,8 +111,7 @@ int generic_fadvise(struct file *file, loff_t offset, loff_t len, int advice)
>  		spin_unlock(&file->f_lock);
>  		break;
>  	case POSIX_FADV_DONTNEED:
> -		__filemap_fdatawrite_range(mapping, offset, endbyte,
> -					   WB_SYNC_NONE);
> +		filemap_fdatawrite_range_kick(mapping, offset, endbyte);
>  
>  		/*
>  		 * First and last FULL page! Partial pages are deliberately
> diff --git a/mm/filemap.c b/mm/filemap.c
> index 26b692dbf091..ec19ed127de2 100644
> --- a/mm/filemap.c
> +++ b/mm/filemap.c
> @@ -392,32 +392,23 @@ static int __filemap_fdatawrite(struct address_space *mapping, loff_t start,
>  }
>  
>  /**
> - * __filemap_fdatawrite_range - start writeback on mapping dirty pages in range
> + * filemap_fdatawrite_range - start writeback on mapping dirty pages in range
>   * @mapping:	address space structure to write
>   * @start:	offset in bytes where the range starts
>   * @end:	offset in bytes where the range ends (inclusive)
> - * @sync_mode:	enable synchronous operation
>   *
>   * Start writeback against all of a mapping's dirty pages that lie
>   * within the byte offsets <start, end> inclusive.
>   *
> - * If sync_mode is WB_SYNC_ALL then this is a "data integrity" operation, as
> - * opposed to a regular memory cleansing writeback.  The difference between
> - * these two operations is that if a dirty page/buffer is encountered, it must
> - * be waited upon, and not just skipped over.
> + * This is a data integrity operation that waits upon dirty or in writeback
> + * pages.
>   *
>   * Return: %0 on success, negative error code otherwise.
>   */
> -int __filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
> -				loff_t end, int sync_mode)
> -{
> -	return __filemap_fdatawrite(mapping, start, end, sync_mode, NULL);
> -}
> -
>  int filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
>  		loff_t end)
>  {
> -	return __filemap_fdatawrite_range(mapping, start, end, WB_SYNC_ALL);
> +	return __filemap_fdatawrite(mapping, start, end, WB_SYNC_ALL, NULL);
>  }
>  EXPORT_SYMBOL(filemap_fdatawrite_range);
>  
> @@ -441,7 +432,7 @@ EXPORT_SYMBOL(filemap_fdatawrite);
>  int filemap_fdatawrite_range_kick(struct address_space *mapping, loff_t start,
>  				  loff_t end)
>  {
> -	return __filemap_fdatawrite_range(mapping, start, end, WB_SYNC_NONE);
> +	return __filemap_fdatawrite(mapping, start, end, WB_SYNC_NONE, NULL);
>  }
>  EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
>  
> @@ -689,8 +680,7 @@ int filemap_write_and_wait_range(struct address_space *mapping,
>  		return 0;
>  
>  	if (mapping_needs_writeback(mapping)) {
> -		err = __filemap_fdatawrite_range(mapping, lstart, lend,
> -						 WB_SYNC_ALL);
> +		err = filemap_fdatawrite_range(mapping, lstart, lend);
>  		/*
>  		 * Even if the above returned error, the pages may be
>  		 * written partially (e.g. -ENOSPC), so we wait for it.
> @@ -792,8 +782,7 @@ int file_write_and_wait_range(struct file *file, loff_t lstart, loff_t lend)
>  		return 0;
>  
>  	if (mapping_needs_writeback(mapping)) {
> -		err = __filemap_fdatawrite_range(mapping, lstart, lend,
> -						 WB_SYNC_ALL);
> +		err = filemap_fdatawrite_range(mapping, lstart, lend);
>  		/* See comment of filemap_write_and_wait() */
>  		if (err != -EIO)
>  			__filemap_fdatawait_range(mapping, lstart, lend);
> -- 
> 2.47.3
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
