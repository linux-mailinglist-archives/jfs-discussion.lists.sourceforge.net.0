Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9606644E4
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Jan 2023 16:32:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pFGc2-0005to-5A;
	Tue, 10 Jan 2023 15:32:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1pFGc0-0005ti-20
 for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 15:32:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c3+EPW5ijPyH4jQ4WMGbWPKGr2iTnaVKt0DVSmGh2mg=; b=dKk/ZuT32MSGwCV7PBp/h3ST1Z
 g3taAjjQgdzX3uQIJ1aphfBmmoTeplQK8u9NBn2PYLLrxd9MCvsIOPYJBSCBhoeVSCvJo/mfwWL7m
 R8yZl7JMX9VR1ufNFSNga6g12awiF/BuFGMmshxvRNpRYcmcR9qkNdqRSXbu44BAtrGo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c3+EPW5ijPyH4jQ4WMGbWPKGr2iTnaVKt0DVSmGh2mg=; b=i1BQ1U8oQJ/xGPkK+wxSaLKYu5
 5jc6D43Hg9P64LdQkhNgtuKW774ieDqXXSnzA1kpZBkM2NwC4krPcGpEUf1PWFq2SI8BCjxoAkXP9
 rcRYBbXO4oeYbGUr1cuz+yHiRAefSAYDx7mHQXe2c6WdMxGrfwhaugN5yGWzC8+ypMBo=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pFGby-00D10q-Qp for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 15:32:27 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9BA4868BEB; Tue, 10 Jan 2023 16:32:16 +0100 (CET)
Date: Tue, 10 Jan 2023 16:32:16 +0100
From: Christoph Hellwig <hch@lst.de>
To: David Sterba <dsterba@suse.cz>
Message-ID: <20230110153216.GA10159@lst.de>
References: <20230108165645.381077-1-hch@lst.de>
 <20230109195309.GU11562@twin.jikos.cz> <20230110081653.GA11947@lst.de>
 <20230110130042.GA11562@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230110130042.GA11562@suse.cz>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 10, 2023 at 02:00:42PM +0100, David Sterba wrote:
 > On Tue, Jan 10, 2023 at 09:16:53AM +0100, Christoph Hellwig wrote: > >
 On Mon, Jan 09, 2023 at 08:53:09PM +0100, David Sterba wrote: > > [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1pFGby-00D10q-Qp
Subject: Re: [Jfs-discussion] remove write_one_page / folio_write_one
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
 Christoph Hellwig <hch@lst.de>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Jan 10, 2023 at 02:00:42PM +0100, David Sterba wrote:
> On Tue, Jan 10, 2023 at 09:16:53AM +0100, Christoph Hellwig wrote:
> > On Mon, Jan 09, 2023 at 08:53:09PM +0100, David Sterba wrote:
> > > The btrfs patches were sent separately some time ago, now merged to
> > > misc-next with updated changelogs and with the suggested switch to folio
> > > API in the 2nd patch.
> > 
> > Yes, 7 weeks ago to be exact.  I wish we could just feed everything
> > together now that we've missed the previous merge window, as that
> > makes patch juggling for Andrew and Matthew a lot simpler.
> 
> The patches are not fixes so they should wait for the next merge window.

Agreed.  But it would be a lot simpler if we could queue them up in
-mm with the other patches now that we've missed the previous merge
window.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
