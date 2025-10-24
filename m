Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCE6C06F36
	for <lists+jfs-discussion@lfdr.de>; Fri, 24 Oct 2025 17:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gofc+zU2jhoAp52nv3hAQXkiLEnePhgj+6t4LbM34ek=; b=Hdstf941VLG1chhKdztpWxRulL
	n6hqGeu33WBQFoxKm92kkSBkRWeqNJ6K7kBwN0uqTBG8XnO9dKfiw9VKcIMz4UwyOMm2qujXCAmbG
	ztiB/NwAGQNIuEQYlKudYHC+rYwwcLIFQ7Qf4PnL4T1f+eTIMbFD2xJ+b1vuJjtZQ5wM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vCJeO-0001U5-Ak;
	Fri, 24 Oct 2025 15:24:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1vCJeN-0001Ty-AW
 for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 15:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TQR+rmk5JJXbJh11H9IDr0zLIVayrC9/4bdXvKTXH9w=; b=G0ObygXDPLPhn7gFq48WcIg++D
 3sqcckfP701jMDYqEbe2fvWgmq+ALlOVUHrMzRDK4gLyXJXfOD3hhf/gDlMiSFfCYp2Go4W6wl5hL
 MjWmLHUeE5FvaQ2cwtgsoxvprf2uvaPwIyhrq7JlpvvhKAdHeMaIjFkfdN6jmUkH0HxA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TQR+rmk5JJXbJh11H9IDr0zLIVayrC9/4bdXvKTXH9w=; b=hUThf1zZb3bAuOFiewPr/1wOdv
 RxakOMB3MjboJYqkeB3qhdWbQwJUuzWn5xvXQ93FLP0CmyrzjLo4SNE2JpcxZKoOXONl4K4VxMIUK
 uMJ75SjQRsAWnQDJz3KHpOp5bX16/HLmcGhHLz4+vYJtly/qZL24EweaI+LYQ1YyUAus=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vCJeM-0006P8-DY for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 15:24:19 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 1F4EA211BF;
 Fri, 24 Oct 2025 12:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761307764; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TQR+rmk5JJXbJh11H9IDr0zLIVayrC9/4bdXvKTXH9w=;
 b=lUfDGig/qurmVZAmpVVx1+6t4iItNTrwBssMnwosNyjfn/OD41thPRQZws77hFfL6Shbsy
 /S9YqER4is+c4uGjNaQv3YFeDuyT0hStEhOQ2hit/J3SmVLYsa73EEYwWDh/m4urXkFC6I
 jH1zSZOKjUxxP40wfWPq8Sh3ZY1JEYA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761307764;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TQR+rmk5JJXbJh11H9IDr0zLIVayrC9/4bdXvKTXH9w=;
 b=mc8jLQtKYuPOW4qIpvZhNNIhKVbUYxR27PH60LKkwxa7HFmNGDGYRGd0EQxn29H/BahXv3
 NUfOFibub6Ppi6Dg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761307764; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TQR+rmk5JJXbJh11H9IDr0zLIVayrC9/4bdXvKTXH9w=;
 b=lUfDGig/qurmVZAmpVVx1+6t4iItNTrwBssMnwosNyjfn/OD41thPRQZws77hFfL6Shbsy
 /S9YqER4is+c4uGjNaQv3YFeDuyT0hStEhOQ2hit/J3SmVLYsa73EEYwWDh/m4urXkFC6I
 jH1zSZOKjUxxP40wfWPq8Sh3ZY1JEYA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761307764;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TQR+rmk5JJXbJh11H9IDr0zLIVayrC9/4bdXvKTXH9w=;
 b=mc8jLQtKYuPOW4qIpvZhNNIhKVbUYxR27PH60LKkwxa7HFmNGDGYRGd0EQxn29H/BahXv3
 NUfOFibub6Ppi6Dg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E0A0B13693;
 Fri, 24 Oct 2025 12:09:23 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 7k/ONnNs+2ikNQAAD6G6ig
 (envelope-from <jack@suse.cz>); Fri, 24 Oct 2025 12:09:23 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 33729A28AB; Fri, 24 Oct 2025 14:09:23 +0200 (CEST)
Date: Fri, 24 Oct 2025 14:09:23 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <myxuxundkuabvgmym5ayqycxjgzjgcxn35ncuxpmdxgwjc7ht4@utx2jecj6wpq>
References: <20251024080431.324236-1-hch@lst.de>
 <20251024080431.324236-7-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024080431.324236-7-hch@lst.de>
X-Spamd-Result: default: False [-3.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MISSING_XM_UA(0.00)[]; FROM_HAS_DN(0.00)[];
 MIME_TRACE(0.00)[0:+]; RCPT_COUNT_TWELVE(0.00)[27];
 ARC_NA(0.00)[]; TO_DN_SOME(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RCVD_COUNT_THREE(0.00)[3];
 R_RATELIMIT(0.00)[to_ip_from(RLzktxcg676y4egiq9xyqoc9t5)];
 FROM_EQ_ENVFROM(0.00)[]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_TLS_LAST(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,suse.com:email]
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
 Content preview:  On Fri 24-10-25 10:04:17, Christoph Hellwig wrote: > Abstract
 out the btrfs-specific behavior of kicking off I/O on a number > of pages
 on an address_space into a well-defined helper. > > Note: there [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vCJeM-0006P8-DY
Subject: Re: [Jfs-discussion] [PATCH 06/10] mm,
 btrfs: add a filemap_flush_nr helper
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
 Jan Kara <jack@suse.cz>, David Hildenbrand <david@redhat.com>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-mm@kvack.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Damien Le Moal <dlemoal@kernel.org>,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, v9fs@lists.linux.dev,
 linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri 24-10-25 10:04:17, Christoph Hellwig wrote:
> Abstract out the btrfs-specific behavior of kicking off I/O on a number
> of pages on an address_space into a well-defined helper.
> 
> Note: there is no kerneldoc comment for the new function because it is
> not part of the public API.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: David Hildenbrand <david@redhat.com>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/btrfs/inode.c        | 13 ++-----------
>  include/linux/pagemap.h |  1 +
>  mm/filemap.c            | 22 ++++++++++++++++++++++
>  3 files changed, 25 insertions(+), 11 deletions(-)
> 
> diff --git a/fs/btrfs/inode.c b/fs/btrfs/inode.c
> index b97d6c1f7772..d12b8116adde 100644
> --- a/fs/btrfs/inode.c
> +++ b/fs/btrfs/inode.c
> @@ -8752,19 +8752,10 @@ static int start_delalloc_inodes(struct btrfs_root *root, long *nr_to_write,
>  			btrfs_queue_work(root->fs_info->flush_workers,
>  					 &work->work);
>  		} else {
> -			struct writeback_control wbc = {
> -				.nr_to_write = *nr_to_write,
> -				.sync_mode = WB_SYNC_NONE,
> -				.range_start = 0,
> -				.range_end = LLONG_MAX,
> -			};
> -
> -			ret = filemap_fdatawrite_wbc(tmp_inode->i_mapping,
> -					&wbc);
> +			ret = filemap_flush_nr(tmp_inode->i_mapping,
> +					nr_to_write);
>  			btrfs_add_delayed_iput(inode);
>  
> -			if (*nr_to_write != LONG_MAX)
> -				*nr_to_write = wbc.nr_to_write;
>  			if (ret || *nr_to_write <= 0)
>  				goto out;
>  		}
> diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
> index 09b581c1d878..cebdf160d3dd 100644
> --- a/include/linux/pagemap.h
> +++ b/include/linux/pagemap.h
> @@ -38,6 +38,7 @@ int filemap_invalidate_pages(struct address_space *mapping,
>  int write_inode_now(struct inode *, int sync);
>  int filemap_fdatawrite(struct address_space *);
>  int filemap_flush(struct address_space *);
> +int filemap_flush_nr(struct address_space *mapping, long *nr_to_write);
>  int filemap_fdatawait_keep_errors(struct address_space *mapping);
>  int filemap_fdatawait_range(struct address_space *, loff_t lstart, loff_t lend);
>  int filemap_fdatawait_range_keep_errors(struct address_space *mapping,
> diff --git a/mm/filemap.c b/mm/filemap.c
> index 99d6919af60d..e344b79a012d 100644
> --- a/mm/filemap.c
> +++ b/mm/filemap.c
> @@ -474,6 +474,28 @@ int filemap_flush(struct address_space *mapping)
>  }
>  EXPORT_SYMBOL(filemap_flush);
>  
> +/*
> + * Start writeback on @nr_to_write pages from @mapping.  No one but the existing
> + * btrfs caller should be using this.  Talk to linux-mm if you think adding a
> + * new caller is a good idea.
> + */
> +int filemap_flush_nr(struct address_space *mapping, long *nr_to_write)
> +{
> +	struct writeback_control wbc = {
> +		.nr_to_write = *nr_to_write,
> +		.sync_mode = WB_SYNC_NONE,
> +		.range_start = 0,
> +		.range_end = LLONG_MAX,
> +	};
> +	int ret;
> +
> +	ret = filemap_fdatawrite_wbc(mapping, &wbc);
> +	if (!ret)
> +		*nr_to_write = wbc.nr_to_write;
> +	return ret;
> +}
> +EXPORT_SYMBOL_FOR_MODULES(filemap_flush_nr, "btrfs");
> +
>  /**
>   * filemap_range_has_page - check if a page exists in range.
>   * @mapping:           address space within which to check
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
