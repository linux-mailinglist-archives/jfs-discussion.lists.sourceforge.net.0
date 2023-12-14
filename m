Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7C3813A71
	for <lists+jfs-discussion@lfdr.de>; Thu, 14 Dec 2023 20:02:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rDqyJ-0007Vu-30;
	Thu, 14 Dec 2023 19:02:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rDqyE-0007Vj-R2;
 Thu, 14 Dec 2023 19:02:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BIjDpnSLfy+/JidKOjaXfU4tgr5UOAxujD+5ylQPn00=; b=MVrWBXcTVkL2j3lsYNTj1+mkCo
 W54onPdNVrsjg7gDtRR3m/9xUepqUoLyyL4cjegfrg48zZuyVjbdxduki8SZxcjzofsMVE5Yw0wcE
 K/iHnNrp6sXwyMszCU1JBuek33hEQOyVeXWUsrxjyY87BaxWKQ9PKzAVugTy1OzbjPjo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BIjDpnSLfy+/JidKOjaXfU4tgr5UOAxujD+5ylQPn00=; b=HVZxZkA/mjztFuzgWZc+0qpDBK
 U0tSMHsTsuEsB3tp4f8IxgAxVIxTqjBd0C47SXz2ueqXwgIxans5axurXnuC74d7wGA06vsx2Fhm6
 Q63S+BbqeUQK5mfC71FoeEEebt5izjURU7BUyASC0JQkUkqLM8SdVtYWxYFioATg9RrU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rDqy8-0007ck-Ox; Thu, 14 Dec 2023 19:02:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BIjDpnSLfy+/JidKOjaXfU4tgr5UOAxujD+5ylQPn00=; b=CQjNFKbGCXrJctffz724MivJGE
 Lz5D8m7LpMuh6Zt0cgfflMlA01k9xaxqraUuyMlp1rGtMm7ldVTJWQSjhWXsvPqaGT50zUFHYikw1
 ifJ5gBmXnpVVAxrYwo3xQ9fkpx4w6OYvwy8QY/p43OKOy+Kb++4u/ioZTy65zPuhfJpmZzmrweW5O
 7eyMywno2bhZeUYhIZMTs/CUflon5q552OQm9a+JOcqQms43Oo7tj0YXEwkWFWB8XYoMSkZo2FtM+
 rnQF+2L4ZoquufjpE2Vq6BDn6VLJNq0/kiZ5cYZuTNZWQ2BJJaBpNjlrVs0LvSuMvV4GSMDAmUO7f
 HhMtULnA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1rDqxZ-009SqZ-SO; Thu, 14 Dec 2023 19:01:25 +0000
Date: Thu, 14 Dec 2023 19:01:25 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <ZXtRBarvgSVN5zPx@casper.infradead.org>
References: <20221113162902.883850-1-hch@lst.de>
 <20221113162902.883850-5-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221113162902.883850-5-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Nov 13, 2022 at 05:28:57PM +0100, Christoph Hellwig
 wrote: > ->writepage is a very inefficient method to write back data, and
 only > used through write_cache_pages or a a fallback when no ->mi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rDqy8-0007ck-Ox
Subject: Re: [Jfs-discussion] [PATCH 4/9] hfs: remove ->writepage
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
 linux-ext4@vger.kernel.org, Bob Copeland <me@bobcopeland.com>,
 linux-karma-devel@lists.sourceforge.net, linux-mm@kvack.org,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Sungjong Seo <sj1557.seo@samsung.com>,
 Namjae Jeon <linkinjeon@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Nov 13, 2022 at 05:28:57PM +0100, Christoph Hellwig wrote:
> ->writepage is a very inefficient method to write back data, and only
> used through write_cache_pages or a a fallback when no ->migrate_folio
> method is present.
> 
> Set ->migrate_folio to the generic buffer_head based helper, and stop
> wiring up ->writepage for hfs_aops.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Was there a reason you only did this for hfs_aops and not for
hfs_btree_aops?  It feels like anything that just calls
block_write_full_page() in the writepage handler should be converted
to just calling mpage_writepages() in the writepages handler.
I have a few of those conversions done, but obviously they're in
filesystems that are basically untestable.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
