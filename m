Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92763A873DA
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Apr 2025 22:42:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u4499-0004wI-7R;
	Sun, 13 Apr 2025 20:41:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1u4494-0004w8-1q
 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Apr 2025 20:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JuNqfYs05aJJ7FgR0AQXI6iDjBbL9hVdThYe09IHpQc=; b=Wdkc1Eed55oNRFLEN3tZspcYdx
 tRzA91Ih/T+DGJqXg2NFXOZbdChh1uVuwdJP7AgcGcyX18d02yw6zFqQzMI9S3LTRA7lkgZyVWsos
 GFNkkHHtwqg1eehQWjdb+9+1VX7Yg+OG5Z6uzK6rhWc27VUSTPTpSaTvUEO8P0qpUNl8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JuNqfYs05aJJ7FgR0AQXI6iDjBbL9hVdThYe09IHpQc=; b=MDZOZcPMiQPzt0/9KWTwJSE/wt
 +ore17tgO/hMqNRvaXlS0BsphTlNChYx8Ju/67h9SPJ9v3bscM6eKz6aLPztvt1fdrYQOpjsk8PWm
 79vTK7eRM0PakpoB1RfCh+6P+8sJyNGJCEv3Papc12xaNkGi4lE5yVEHOX1Se+bzvsxw=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u448n-0000kw-B7 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Apr 2025 20:41:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JuNqfYs05aJJ7FgR0AQXI6iDjBbL9hVdThYe09IHpQc=; b=lIPjmd6hoUmdrMTnbWcG9HqRis
 yVdbmXgxdlikDUB0/Ul9waktVLv+dlh3gNv3E6+iURDFMgWrY3Lhj595rgPMweusYm9lv+sAr+Ocq
 H/LbHHNFUAzgEmADChmDpdlvy2BfIPS/DRhLSOX+fkH270ruUsBBD6IximbuzY73B6FnOE3zYV0SF
 e2ORUgmLxSO1Zdl7uCN3IYdghIfxxiqXJc5EzTWIRvnDUm1Ja+WpVt5nFbF6jw7xY2JAKgFVGMiPF
 eYU+Hbni1o5hfJUW8daZ+1WLByAMzClKtSZBAmA5mw24o2GRdTZa+UOei6n8WXhPGxXV4TpIJ4rfe
 mrBio7sw==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1u448a-00000007FOL-0cu1;
 Sun, 13 Apr 2025 20:41:08 +0000
Date: Sun, 13 Apr 2025 21:41:08 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Shivank Garg <shivankg@amd.com>
Message-ID: <Z_whZHPR64FHq6ve@casper.infradead.org>
References: <20250413172356.561544-1-shivankg@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250413172356.561544-1-shivankg@amd.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Apr 13, 2025 at 05:23:57PM +0000, Shivank Garg wrote:
 > +++ b/fs/jfs/jfs_metapage.c > @@ -570, 6 +570,
 7 @@ const struct address_space_operations
 jfs_metapage_aops = { > .release_folio = metapag [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [90.155.50.34 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [90.155.50.34 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1u448n-0000kw-B7
Subject: Re: [Jfs-discussion] [PATCH] jfs: implement migrate_folio for
 jfs_metapage_aops
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Apr 13, 2025 at 05:23:57PM +0000, Shivank Garg wrote:
> +++ b/fs/jfs/jfs_metapage.c
> @@ -570,6 +570,7 @@ const struct address_space_operations jfs_metapage_aops = {
>  	.release_folio	= metapage_release_folio,
>  	.invalidate_folio = metapage_invalidate_folio,
>  	.dirty_folio	= filemap_dirty_folio,
> +	.migrate_folio	= filemap_migrate_folio,
>  };

Ooh, damn, I think we're going to need more than this ;-(

static inline struct metapage *folio_to_mp(struct folio *folio, int offset)
{
        return folio->private;
}

struct metapage {
...
        void *data;             /* Data pointer */

So we're going to need something like buffer_migrate_folio(), but
specialised to jfs metadata.  And when we come up with it, that'll
be Fixes: 35474d52c605


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
