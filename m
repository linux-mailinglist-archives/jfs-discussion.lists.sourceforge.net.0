Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 964FF62C3B7
	for <lists+jfs-discussion@lfdr.de>; Wed, 16 Nov 2022 17:15:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ovL3k-0003t4-Na;
	Wed, 16 Nov 2022 16:14:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+8c189177036f5411cb52+7024+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ovL3i-0003sk-CF; Wed, 16 Nov 2022 16:14:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GW/mPvUNa8ycmt36mg7tsVRrtOyrpDhOFXMAIJPJkOE=; b=KoxLe945UKTb6cbe5RcjrfMAYI
 kWQ2Gx2tqwb3AWOkaWKNwOZ4SwgEsSgWNgD580RZa2we6M8ef/2+vUnLNS5/9QYQn0AmyBiwdnJVM
 6KSDIMi2pJV2E3MfDGIMkVlXJZyGJR3UmL+BmrAXPdX6Z2FTlAscWwiW0wwRb8Dnatzo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GW/mPvUNa8ycmt36mg7tsVRrtOyrpDhOFXMAIJPJkOE=; b=gCgXVP+g0p483cpr/E1DHSJrZC
 oIslpP/8DM05g7qmGoEOeO3kRwr2od4mtByM32PHzpFVHjnBwMyfEVQSTRKpldJMbduM5Q9QIrhfW
 xe/Jq54nCHxwbgQ9yaP6CGwHNr/EZDy4Yl5rF/dmNpiitP06p3G8uXg9kZCcIiOMP49Q=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovL3h-00AaOK-3N; Wed, 16 Nov 2022 16:14:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=GW/mPvUNa8ycmt36mg7tsVRrtOyrpDhOFXMAIJPJkOE=; b=fv/z8Vq6c3nCHc9j56W7inAPrc
 0dHcgJhI7otNJASZ17MhPMVxlFeyoYf4kkWas5Eo1Ec3GLZ11u690qlx7P/v7oNDWAqAIH8H8yfAD
 /1+ntBb76BGes/DskjfMzwy5tnJE3PtJshRQjDhtJe3GdRxa3iYgGlrg4SgbIsOz1xLUVMP3prz4Y
 CYEDn4nLle2PKtPXe6tjYaTxXNTKPX+uOVZ0Q2NsIXk+iTVqbBXGxNbargAbd+zNmaZW4alJOF63V
 hcY8gOY7GqI+y48QsSAg6GKHAhI6xNQtvE8qNC021YrYrfXYgoK0+mLFPHkKrKnIUnGGe6t1rneei
 zCHLsFCw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1ovL3H-005l8R-B4; Wed, 16 Nov 2022 16:14:15 +0000
Date: Wed, 16 Nov 2022 08:14:15 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <Y3UMV2mB5BkMM5PY@infradead.org>
References: <20221113162902.883850-1-hch@lst.de>
 <20221113162902.883850-3-hch@lst.de>
 <20221114104927.k5x4i4uanxskfs6m@quack3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114104927.k5x4i4uanxskfs6m@quack3>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 14, 2022 at 11:49:27AM +0100, Jan Kara wrote:
 > On Sun 13-11-22 17:28:55, Christoph Hellwig wrote: > > ->writepage is a
 very inefficient method to write back data, and only > > used throug [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ovL3h-00AaOK-3N
Subject: Re: [Jfs-discussion] [PATCH 2/9] ext2: remove ->writepage
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
 linux-ext4@vger.kernel.org, linux-karma-devel@lists.sourceforge.net,
 Bob Copeland <me@bobcopeland.com>, Namjae Jeon <linkinjeon@kernel.org>,
 linux-mm@kvack.org, Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Sungjong Seo <sj1557.seo@samsung.com>, Christoph Hellwig <hch@lst.de>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Nov 14, 2022 at 11:49:27AM +0100, Jan Kara wrote:
> On Sun 13-11-22 17:28:55, Christoph Hellwig wrote:
> > ->writepage is a very inefficient method to write back data, and only
> > used through write_cache_pages or a a fallback when no ->migrate_folio
> > method is present.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> Looks good! Feel free to add:

The testbot found a problem with this:

ext2_commit_chunk calls write_one_page for the IS_DIRSYNC case,
and write_one_page calls ->writepage.

So I think I need to drop this one for now (none of the other
file systems calls write_one_page).  And then think what best
to do about write_one_page/write_one_folio.  I suspect just
passing a writepage pointer to them might make most sense,
as they are only used by a few file systems, and the calling
convention with the locked page doesn't lend itself to using
->writepages.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
