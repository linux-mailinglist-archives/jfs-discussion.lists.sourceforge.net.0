Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B960554530C
	for <lists+jfs-discussion@lfdr.de>; Thu,  9 Jun 2022 19:34:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nzM2V-0006Dv-88; Thu, 09 Jun 2022 17:33:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jack@suse.cz>) id 1nzM2T-0006Do-Qq
 for jfs-discussion@lists.sourceforge.net; Thu, 09 Jun 2022 17:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A2LcLQuVGbMGHPJ20JC2IREnXdSL5yd5OhESgL31W5U=; b=O16VStJgkw9T0bfU7Ntp8RDah/
 6srEtwk4xKqlRIktwx6kGlQV7is8cn5/W/39Rp+87+xAVxWBNILh7fX5aZ6+CEZlMXvaFTslsML3J
 spIxCBXyuxKypISwCcJJBiXYztS+f1/A6WKKEbdLWbNkukctdhjSmU/D5AUNlVSBOpB8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A2LcLQuVGbMGHPJ20JC2IREnXdSL5yd5OhESgL31W5U=; b=coiAcIVIMJatN2EBC/8E+d3ek2
 ebyGj17MvKl8CYJm351hh4TX9M9gJi9KL09lOg/MB6sfdkPCUQ8V1M4pL1IH4a4YBQFEF8nlSLfbS
 yYraAGPJVBRs4ZHBRHTuY0fAaAL3bTcgc/OZ28baURlTdmk3y+MyHoPxKaTDO4jGmbyQ=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nzM2T-00CO3b-1B
 for jfs-discussion@lists.sourceforge.net; Thu, 09 Jun 2022 17:33:46 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 513DB1FEBF;
 Thu,  9 Jun 2022 17:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1654796014; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=A2LcLQuVGbMGHPJ20JC2IREnXdSL5yd5OhESgL31W5U=;
 b=XJ4hU0x/lTFojNDASkAfidEbQGaJj+0KjQAjh6CmAF4fuumgxQxG+HgpfZqdBymXCDTNrr
 vAh7XASeTG8y6D6cYQNwueq5Iie8q9KnegNv25P0vIU0EfnB+QJIGPaRd2eqfw/db83nVx
 00JFkxL/EWD6QsNzgchplq98PHWrzBc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1654796014;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=A2LcLQuVGbMGHPJ20JC2IREnXdSL5yd5OhESgL31W5U=;
 b=1+dfvHf+jfbREKySIouvbdUoKPKZ6sBvDAzXPPCbI8qKIMhCtI1eq9sdQ5ZUBdsEGjzI9O
 aSWIHrw2DmYLucCw==
Received: from quack3.suse.cz (unknown [10.163.28.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 3B6452C141;
 Thu,  9 Jun 2022 17:33:34 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id DA598A0633; Thu,  9 Jun 2022 19:33:33 +0200 (CEST)
Date: Thu, 9 Jun 2022 19:33:33 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20220609173333.5tj5rlo47q5sxpn4@quack3.lan>
References: <20220608150451.1432388-1-hch@lst.de>
 <20220608150451.1432388-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220608150451.1432388-4-hch@lst.de>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 08-06-22 17:04:49,
 Christoph Hellwig wrote: > All callers
 are gone, so remove the now dead code. > > Signed-off-by: Christoph Hellwig
 <hch@lst.de> Looks good to me. Feel free to add: Reviewed-by: Jan Kara
 <jack@suse.cz>
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nzM2T-00CO3b-1B
Subject: Re: [Jfs-discussion] [PATCH 3/5] fs: remove the nobh helpers
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

On Wed 08-06-22 17:04:49, Christoph Hellwig wrote:
> All callers are gone, so remove the now dead code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good to me. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/buffer.c                 | 324 ------------------------------------
>  fs/mpage.c                  |  25 +--
>  include/linux/buffer_head.h |   8 -
>  include/linux/mpage.h       |   2 -
>  4 files changed, 1 insertion(+), 358 deletions(-)
> 
> diff --git a/fs/buffer.c b/fs/buffer.c
> index ce9844d7c10fa..5717d1881d2fa 100644
> --- a/fs/buffer.c
> +++ b/fs/buffer.c
> @@ -2537,330 +2537,6 @@ int block_page_mkwrite(struct vm_area_struct *vma, struct vm_fault *vmf,
>  }
>  EXPORT_SYMBOL(block_page_mkwrite);
>  
> -/*
> - * nobh_write_begin()'s prereads are special: the buffer_heads are freed
> - * immediately, while under the page lock.  So it needs a special end_io
> - * handler which does not touch the bh after unlocking it.
> - */
> -static void end_buffer_read_nobh(struct buffer_head *bh, int uptodate)
> -{
> -	__end_buffer_read_notouch(bh, uptodate);
> -}
> -
> -/*
> - * Attach the singly-linked list of buffers created by nobh_write_begin, to
> - * the page (converting it to circular linked list and taking care of page
> - * dirty races).
> - */
> -static void attach_nobh_buffers(struct page *page, struct buffer_head *head)
> -{
> -	struct buffer_head *bh;
> -
> -	BUG_ON(!PageLocked(page));
> -
> -	spin_lock(&page->mapping->private_lock);
> -	bh = head;
> -	do {
> -		if (PageDirty(page))
> -			set_buffer_dirty(bh);
> -		if (!bh->b_this_page)
> -			bh->b_this_page = head;
> -		bh = bh->b_this_page;
> -	} while (bh != head);
> -	attach_page_private(page, head);
> -	spin_unlock(&page->mapping->private_lock);
> -}
> -
> -/*
> - * On entry, the page is fully not uptodate.
> - * On exit the page is fully uptodate in the areas outside (from,to)
> - * The filesystem needs to handle block truncation upon failure.
> - */
> -int nobh_write_begin(struct address_space *mapping, loff_t pos, unsigned len,
> -			struct page **pagep, void **fsdata,
> -			get_block_t *get_block)
> -{
> -	struct inode *inode = mapping->host;
> -	const unsigned blkbits = inode->i_blkbits;
> -	const unsigned blocksize = 1 << blkbits;
> -	struct buffer_head *head, *bh;
> -	struct page *page;
> -	pgoff_t index;
> -	unsigned from, to;
> -	unsigned block_in_page;
> -	unsigned block_start, block_end;
> -	sector_t block_in_file;
> -	int nr_reads = 0;
> -	int ret = 0;
> -	int is_mapped_to_disk = 1;
> -
> -	index = pos >> PAGE_SHIFT;
> -	from = pos & (PAGE_SIZE - 1);
> -	to = from + len;
> -
> -	page = grab_cache_page_write_begin(mapping, index);
> -	if (!page)
> -		return -ENOMEM;
> -	*pagep = page;
> -	*fsdata = NULL;
> -
> -	if (page_has_buffers(page)) {
> -		ret = __block_write_begin(page, pos, len, get_block);
> -		if (unlikely(ret))
> -			goto out_release;
> -		return ret;
> -	}
> -
> -	if (PageMappedToDisk(page))
> -		return 0;
> -
> -	/*
> -	 * Allocate buffers so that we can keep track of state, and potentially
> -	 * attach them to the page if an error occurs. In the common case of
> -	 * no error, they will just be freed again without ever being attached
> -	 * to the page (which is all OK, because we're under the page lock).
> -	 *
> -	 * Be careful: the buffer linked list is a NULL terminated one, rather
> -	 * than the circular one we're used to.
> -	 */
> -	head = alloc_page_buffers(page, blocksize, false);
> -	if (!head) {
> -		ret = -ENOMEM;
> -		goto out_release;
> -	}
> -
> -	block_in_file = (sector_t)page->index << (PAGE_SHIFT - blkbits);
> -
> -	/*
> -	 * We loop across all blocks in the page, whether or not they are
> -	 * part of the affected region.  This is so we can discover if the
> -	 * page is fully mapped-to-disk.
> -	 */
> -	for (block_start = 0, block_in_page = 0, bh = head;
> -		  block_start < PAGE_SIZE;
> -		  block_in_page++, block_start += blocksize, bh = bh->b_this_page) {
> -		int create;
> -
> -		block_end = block_start + blocksize;
> -		bh->b_state = 0;
> -		create = 1;
> -		if (block_start >= to)
> -			create = 0;
> -		ret = get_block(inode, block_in_file + block_in_page,
> -					bh, create);
> -		if (ret)
> -			goto failed;
> -		if (!buffer_mapped(bh))
> -			is_mapped_to_disk = 0;
> -		if (buffer_new(bh))
> -			clean_bdev_bh_alias(bh);
> -		if (PageUptodate(page)) {
> -			set_buffer_uptodate(bh);
> -			continue;
> -		}
> -		if (buffer_new(bh) || !buffer_mapped(bh)) {
> -			zero_user_segments(page, block_start, from,
> -							to, block_end);
> -			continue;
> -		}
> -		if (buffer_uptodate(bh))
> -			continue;	/* reiserfs does this */
> -		if (block_start < from || block_end > to) {
> -			lock_buffer(bh);
> -			bh->b_end_io = end_buffer_read_nobh;
> -			submit_bh(REQ_OP_READ, 0, bh);
> -			nr_reads++;
> -		}
> -	}
> -
> -	if (nr_reads) {
> -		/*
> -		 * The page is locked, so these buffers are protected from
> -		 * any VM or truncate activity.  Hence we don't need to care
> -		 * for the buffer_head refcounts.
> -		 */
> -		for (bh = head; bh; bh = bh->b_this_page) {
> -			wait_on_buffer(bh);
> -			if (!buffer_uptodate(bh))
> -				ret = -EIO;
> -		}
> -		if (ret)
> -			goto failed;
> -	}
> -
> -	if (is_mapped_to_disk)
> -		SetPageMappedToDisk(page);
> -
> -	*fsdata = head; /* to be released by nobh_write_end */
> -
> -	return 0;
> -
> -failed:
> -	BUG_ON(!ret);
> -	/*
> -	 * Error recovery is a bit difficult. We need to zero out blocks that
> -	 * were newly allocated, and dirty them to ensure they get written out.
> -	 * Buffers need to be attached to the page at this point, otherwise
> -	 * the handling of potential IO errors during writeout would be hard
> -	 * (could try doing synchronous writeout, but what if that fails too?)
> -	 */
> -	attach_nobh_buffers(page, head);
> -	page_zero_new_buffers(page, from, to);
> -
> -out_release:
> -	unlock_page(page);
> -	put_page(page);
> -	*pagep = NULL;
> -
> -	return ret;
> -}
> -EXPORT_SYMBOL(nobh_write_begin);
> -
> -int nobh_write_end(struct file *file, struct address_space *mapping,
> -			loff_t pos, unsigned len, unsigned copied,
> -			struct page *page, void *fsdata)
> -{
> -	struct inode *inode = page->mapping->host;
> -	struct buffer_head *head = fsdata;
> -	struct buffer_head *bh;
> -	BUG_ON(fsdata != NULL && page_has_buffers(page));
> -
> -	if (unlikely(copied < len) && head)
> -		attach_nobh_buffers(page, head);
> -	if (page_has_buffers(page))
> -		return generic_write_end(file, mapping, pos, len,
> -					copied, page, fsdata);
> -
> -	SetPageUptodate(page);
> -	set_page_dirty(page);
> -	if (pos+copied > inode->i_size) {
> -		i_size_write(inode, pos+copied);
> -		mark_inode_dirty(inode);
> -	}
> -
> -	unlock_page(page);
> -	put_page(page);
> -
> -	while (head) {
> -		bh = head;
> -		head = head->b_this_page;
> -		free_buffer_head(bh);
> -	}
> -
> -	return copied;
> -}
> -EXPORT_SYMBOL(nobh_write_end);
> -
> -/*
> - * nobh_writepage() - based on block_full_write_page() except
> - * that it tries to operate without attaching bufferheads to
> - * the page.
> - */
> -int nobh_writepage(struct page *page, get_block_t *get_block,
> -			struct writeback_control *wbc)
> -{
> -	struct inode * const inode = page->mapping->host;
> -	loff_t i_size = i_size_read(inode);
> -	const pgoff_t end_index = i_size >> PAGE_SHIFT;
> -	unsigned offset;
> -	int ret;
> -
> -	/* Is the page fully inside i_size? */
> -	if (page->index < end_index)
> -		goto out;
> -
> -	/* Is the page fully outside i_size? (truncate in progress) */
> -	offset = i_size & (PAGE_SIZE-1);
> -	if (page->index >= end_index+1 || !offset) {
> -		unlock_page(page);
> -		return 0; /* don't care */
> -	}
> -
> -	/*
> -	 * The page straddles i_size.  It must be zeroed out on each and every
> -	 * writepage invocation because it may be mmapped.  "A file is mapped
> -	 * in multiples of the page size.  For a file that is not a multiple of
> -	 * the  page size, the remaining memory is zeroed when mapped, and
> -	 * writes to that region are not written out to the file."
> -	 */
> -	zero_user_segment(page, offset, PAGE_SIZE);
> -out:
> -	ret = mpage_writepage(page, get_block, wbc);
> -	if (ret == -EAGAIN)
> -		ret = __block_write_full_page(inode, page, get_block, wbc,
> -					      end_buffer_async_write);
> -	return ret;
> -}
> -EXPORT_SYMBOL(nobh_writepage);
> -
> -int nobh_truncate_page(struct address_space *mapping,
> -			loff_t from, get_block_t *get_block)
> -{
> -	pgoff_t index = from >> PAGE_SHIFT;
> -	struct inode *inode = mapping->host;
> -	unsigned blocksize = i_blocksize(inode);
> -	struct folio *folio;
> -	struct buffer_head map_bh;
> -	size_t offset;
> -	sector_t iblock;
> -	int err;
> -
> -	/* Block boundary? Nothing to do */
> -	if (!(from & (blocksize - 1)))
> -		return 0;
> -
> -	folio = __filemap_get_folio(mapping, index, FGP_LOCK | FGP_CREAT,
> -			mapping_gfp_mask(mapping));
> -	err = -ENOMEM;
> -	if (!folio)
> -		goto out;
> -
> -	if (folio_buffers(folio))
> -		goto has_buffers;
> -
> -	iblock = from >> inode->i_blkbits;
> -	map_bh.b_size = blocksize;
> -	map_bh.b_state = 0;
> -	err = get_block(inode, iblock, &map_bh, 0);
> -	if (err)
> -		goto unlock;
> -	/* unmapped? It's a hole - nothing to do */
> -	if (!buffer_mapped(&map_bh))
> -		goto unlock;
> -
> -	/* Ok, it's mapped. Make sure it's up-to-date */
> -	if (!folio_test_uptodate(folio)) {
> -		err = mapping->a_ops->read_folio(NULL, folio);
> -		if (err) {
> -			folio_put(folio);
> -			goto out;
> -		}
> -		folio_lock(folio);
> -		if (!folio_test_uptodate(folio)) {
> -			err = -EIO;
> -			goto unlock;
> -		}
> -		if (folio_buffers(folio))
> -			goto has_buffers;
> -	}
> -	offset = offset_in_folio(folio, from);
> -	folio_zero_segment(folio, offset, round_up(offset, blocksize));
> -	folio_mark_dirty(folio);
> -	err = 0;
> -
> -unlock:
> -	folio_unlock(folio);
> -	folio_put(folio);
> -out:
> -	return err;
> -
> -has_buffers:
> -	folio_unlock(folio);
> -	folio_put(folio);
> -	return block_truncate_page(mapping, from, get_block);
> -}
> -EXPORT_SYMBOL(nobh_truncate_page);
> -
>  int block_truncate_page(struct address_space *mapping,
>  			loff_t from, get_block_t *get_block)
>  {
> diff --git a/fs/mpage.c b/fs/mpage.c
> index 0d25f44f5707c..31a97a0acf5f5 100644
> --- a/fs/mpage.c
> +++ b/fs/mpage.c
> @@ -402,7 +402,6 @@ struct mpage_data {
>  	struct bio *bio;
>  	sector_t last_block_in_bio;
>  	get_block_t *get_block;
> -	unsigned use_writepage;
>  };
>  
>  /*
> @@ -622,15 +621,10 @@ static int __mpage_writepage(struct page *page, struct writeback_control *wbc,
>  	if (bio)
>  		bio = mpage_bio_submit(bio);
>  
> -	if (mpd->use_writepage) {
> -		ret = mapping->a_ops->writepage(page, wbc);
> -	} else {
> -		ret = -EAGAIN;
> -		goto out;
> -	}
>  	/*
>  	 * The caller has a ref on the inode, so *mapping is stable
>  	 */
> +	ret = mapping->a_ops->writepage(page, wbc);
>  	mapping_set_error(mapping, ret);
>  out:
>  	mpd->bio = bio;
> @@ -672,7 +666,6 @@ mpage_writepages(struct address_space *mapping,
>  			.bio = NULL,
>  			.last_block_in_bio = 0,
>  			.get_block = get_block,
> -			.use_writepage = 1,
>  		};
>  
>  		ret = write_cache_pages(mapping, wbc, __mpage_writepage, &mpd);
> @@ -683,19 +676,3 @@ mpage_writepages(struct address_space *mapping,
>  	return ret;
>  }
>  EXPORT_SYMBOL(mpage_writepages);
> -
> -int mpage_writepage(struct page *page, get_block_t get_block,
> -	struct writeback_control *wbc)
> -{
> -	struct mpage_data mpd = {
> -		.bio = NULL,
> -		.last_block_in_bio = 0,
> -		.get_block = get_block,
> -		.use_writepage = 0,
> -	};
> -	int ret = __mpage_writepage(page, wbc, &mpd);
> -	if (mpd.bio)
> -		mpage_bio_submit(mpd.bio);
> -	return ret;
> -}
> -EXPORT_SYMBOL(mpage_writepage);
> diff --git a/include/linux/buffer_head.h b/include/linux/buffer_head.h
> index b0366c89d6a4d..61afb81cfdaea 100644
> --- a/include/linux/buffer_head.h
> +++ b/include/linux/buffer_head.h
> @@ -258,14 +258,6 @@ static inline vm_fault_t block_page_mkwrite_return(int err)
>  }
>  sector_t generic_block_bmap(struct address_space *, sector_t, get_block_t *);
>  int block_truncate_page(struct address_space *, loff_t, get_block_t *);
> -int nobh_write_begin(struct address_space *, loff_t, unsigned len,
> -				struct page **, void **, get_block_t*);
> -int nobh_write_end(struct file *, struct address_space *,
> -				loff_t, unsigned, unsigned,
> -				struct page *, void *);
> -int nobh_truncate_page(struct address_space *, loff_t, get_block_t *);
> -int nobh_writepage(struct page *page, get_block_t *get_block,
> -                        struct writeback_control *wbc);
>  
>  #ifdef CONFIG_MIGRATION
>  extern int buffer_migrate_folio(struct address_space *,
> diff --git a/include/linux/mpage.h b/include/linux/mpage.h
> index 43986f7ec4dd3..1bdc39daac0a3 100644
> --- a/include/linux/mpage.h
> +++ b/include/linux/mpage.h
> @@ -19,7 +19,5 @@ void mpage_readahead(struct readahead_control *, get_block_t get_block);
>  int mpage_read_folio(struct folio *folio, get_block_t get_block);
>  int mpage_writepages(struct address_space *mapping,
>  		struct writeback_control *wbc, get_block_t get_block);
> -int mpage_writepage(struct page *page, get_block_t *get_block,
> -		struct writeback_control *wbc);
>  
>  #endif
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
