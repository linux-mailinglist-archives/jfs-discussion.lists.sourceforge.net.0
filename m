Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AB0BD75B9
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 Oct 2025 07:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L5Y3uELBQdwvSkqtAG1XOy/64obebgvWuVF1ZhJrHlE=; b=Y54wrPTpq8BUaMm6VZimHIWS8v
	8h5KccTcfAbfFifvmOwKNvo3B9HWWGp00sikQaCWxg0XfgKvPxx/4y6OJrBh++Bi/Xf5uR83XrNL8
	TUaefTRrW90whI44n4mjOuc8aB+d/RbTEVXdDZMKHzqxSfclUCkmWMBgDhrr8mKO/pi0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8XDV-0006h5-LJ;
	Tue, 14 Oct 2025 05:04:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1v8XDV-0006gz-3K
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 05:04:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nJ7JVgEEuzhrb4h7yBb4ukIiXSaoEQaZqeH4bUiPUa8=; b=YxbI0HMK+JYONCKmhhV/y4smsd
 N2JxkueRNwH346xIN5TpP5cYnP+0H/eXAnpLi4Rua7pRDAdj+5/hCshxsaIVGuXYL+qxnzBziInFd
 bKP1ndZ6AklcOWTVPRL8cU2iKkyX4438Y84xHVM6AG0yLBw/rjnV9te+Vei/1r9cCjZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nJ7JVgEEuzhrb4h7yBb4ukIiXSaoEQaZqeH4bUiPUa8=; b=knTx5H9SmSUe7xnpdKwEbJl49I
 Pkv6AMJara1wQmHLdYTTQthqKSIE5xN5PMnsbCAuCPT29oA4HPeoSIbnuk/7lLOo3ZeuzfHBJhSGd
 aLig5gBBJplQw5v9n/2odFEO9fWTRbpKga+6CI2Ubop+/uaUzVxyjqylCxvkbsuTv690=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8XDU-0005Lc-Ig for jfs-discussion@lists.sourceforge.net;
 Tue, 14 Oct 2025 05:04:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D9DED227A88; Tue, 14 Oct 2025 06:47:23 +0200 (CEST)
Date: Tue, 14 Oct 2025 06:47:23 +0200
To: Jan Kara <jack@suse.cz>
Message-ID: <20251014044723.GA30978@lst.de>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-7-hch@lst.de>
 <74593bac-929b-4496-80e0-43d0f54d6b4c@kernel.org>
 <4bcpiwrhbrraau7nlp6mxbffprtnlv3piqyn7xkm7j2txxqlmn@3knyilc526ts>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4bcpiwrhbrraau7nlp6mxbffprtnlv3piqyn7xkm7j2txxqlmn@3knyilc526ts>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 13, 2025 at 01:58:15PM +0200, Jan Kara wrote:
 > I don't love filemap_fdatawrite_kick_nr() either. Your >
 filemap_fdatawrite_nrpages()
 is better but so far we had the distinction > that fil [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1v8XDU-0005Lc-Ig
Subject: Re: [Jfs-discussion] [PATCH 06/10] mm,
 btrfs: add a filemap_fdatawrite_kick_nr helper
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
From: Christoph Hellwig via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christoph Hellwig <hch@lst.de>
Cc: Latchesar Ionkov <lucho@ionkov.net>, jfs-discussion@lists.sourceforge.net,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-mm@kvack.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Christoph Hellwig <hch@lst.de>,
 Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Damien Le Moal <dlemoal@kernel.org>,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 v9fs@lists.linux.dev, linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Oct 13, 2025 at 01:58:15PM +0200, Jan Kara wrote:
> I don't love filemap_fdatawrite_kick_nr() either. Your
> filemap_fdatawrite_nrpages() is better but so far we had the distinction
> that filemap_fdatawrite* is for data integrity writeback and filemap_flush
> is for memory cleaning writeback. And in some places this is important
> distinction which I'd like to keep obvious in the naming. So I'd prefer
> something like filemap_flush_nrpages() (to stay consistent with previous
> naming) or if Christoph doesn't like flush (as that's kind of overloaded
> word) we could have filemap_writeback_nrpages().

Not a big fan of flush, but the important point in this series is
to have consistent naming.  If we don't like the kick naming
we should standardize on _flush (or whatever) and have the _range and
_nrpages variants of whatever we pick for the base name.

Anyone with strong feelings and or good ideas about naming please speak
up now.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
