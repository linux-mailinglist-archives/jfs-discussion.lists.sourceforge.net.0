Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A5A6631DF
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Jan 2023 21:53:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pEz8v-0001Dg-GH;
	Mon, 09 Jan 2023 20:53:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1pEz8u-0001DW-LG
 for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Jan 2023 20:53:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uVmmyHC2Ssr+zx9dA/TPpe6nT2qb9V4pzC/Myf+9t60=; b=ZSglnKj5vgllAc/TrQJxlC5pQQ
 ecOu7MyZfjAczaj0eQTefq7tkraTdY8BOiBdhuziLEtoW7xbhiacN+3IQyiuA95i3B5D+GBYopjzj
 dQ2P8XnHPpVKDOa8vC6NhilPbxuZL3HqxIV34ZgvZ6Ote1BAdTs653i4kBe2/IBhaJRo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uVmmyHC2Ssr+zx9dA/TPpe6nT2qb9V4pzC/Myf+9t60=; b=X/KKFVbFyv4hsChYNVpWFdy901
 Fayo8s3i0QxfoF56SLa6JG54H+lruto8uuTqEUcNQfG49xOL4HLqkav+QDEqc25DRmZEM60NgYeRf
 I7ZwoCa2EFHDMKUFsgIxQVDMXoX7LiphqEmvduA6aVpnCB/UBkHFmNhFa9dpbzd0Bk9M=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pEz8s-0005A9-Ew for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Jan 2023 20:53:16 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 18BB01FE65;
 Mon,  9 Jan 2023 17:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1673283821; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uVmmyHC2Ssr+zx9dA/TPpe6nT2qb9V4pzC/Myf+9t60=;
 b=QkYv4aUKGJ76GDlIUsX9im95mOqzYiwom90V2EDMZ1guLuNLcFfh48IN3G0yoVYjp2vCwY
 FduqnCISStQRMWi0qInfa6E9c+LEBqvbeejMt01w/4TmPTcJL7hJEu147k2cHqKAG2JdYK
 ccPdLNsia7DeM1Mf9UHFiLD97ofvFoI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1673283821;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uVmmyHC2Ssr+zx9dA/TPpe6nT2qb9V4pzC/Myf+9t60=;
 b=tdnpLblfvKPQhFhRVgTdsKRz4lLQCddch2je6NGSKR6Va5Fc3eHdnV6vlNB9C4r0omorSS
 Xomtp1YWRUEdx5Dg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 0808A134AD;
 Mon,  9 Jan 2023 17:03:41 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id ULXwAe1IvGMICQAAMHmgww
 (envelope-from <jack@suse.cz>); Mon, 09 Jan 2023 17:03:41 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 6EE40A0749; Mon,  9 Jan 2023 18:03:40 +0100 (CET)
Date: Mon, 9 Jan 2023 18:03:40 +0100
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20230109170340.quwwjkte6c467vfp@quack3>
References: <20230108165645.381077-1-hch@lst.de>
 <20230108165645.381077-7-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230108165645.381077-7-hch@lst.de>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun 08-01-23 17:56:44,
 Christoph Hellwig wrote: > Use filemap_write_and_wait_range
 to write back the range of the dirty > page instead of write_one_page in
 preparation of removing write_one_page > [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pEz8s-0005A9-Ew
Subject: Re: [Jfs-discussion] [PATCH 6/7] ocfs2: don't use write_one_page in
 ocfs2_duplicate_clusters_by_page
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 Chris Mason <clm@fb.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun 08-01-23 17:56:44, Christoph Hellwig wrote:
> Use filemap_write_and_wait_range to write back the range of the dirty
> page instead of write_one_page in preparation of removing write_one_page
> and eventually ->writepage.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good to me. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/ocfs2/refcounttree.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/ocfs2/refcounttree.c b/fs/ocfs2/refcounttree.c
> index 623db358b1efa8..4a73405962ec4f 100644
> --- a/fs/ocfs2/refcounttree.c
> +++ b/fs/ocfs2/refcounttree.c
> @@ -2952,10 +2952,11 @@ int ocfs2_duplicate_clusters_by_page(handle_t *handle,
>  		 */
>  		if (PAGE_SIZE <= OCFS2_SB(sb)->s_clustersize) {
>  			if (PageDirty(page)) {
> -				/*
> -				 * write_on_page will unlock the page on return
> -				 */
> -				ret = write_one_page(page);
> +				unlock_page(page);
> +				put_page(page);
> +
> +				ret = filemap_write_and_wait_range(mapping,
> +						offset, map_end - 1);
>  				goto retry;
>  			}
>  		}
> -- 
> 2.35.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
