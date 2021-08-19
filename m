Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8553F176A
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Aug 2021 12:41:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mGfUH-0007TJ-8b; Thu, 19 Aug 2021 10:41:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jack@suse.cz>)
 id 1mGfUE-0007T8-Cw; Thu, 19 Aug 2021 10:41:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rYCiuaaVE837hJmVPqNGfQdo0C78s0ZEZthPtB8IJws=; b=AdWxu4aEnqlqgHGJgXyWq/kblr
 eZFQ6p5N0KWfQ2LdhmjA0VOkytjwNZLIaQcD4TdmhdfgH8/46CSFsxuzqwaDMxTJPitj8Judl23Nl
 CxJHYa5eLVPIgu8h/8IUQOvR7bPJn4P5oVP2zDP/xJSlMVhqDjpkovDCfJLl/fsYLz54=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rYCiuaaVE837hJmVPqNGfQdo0C78s0ZEZthPtB8IJws=; b=etbIut4Qq6qn9Gfh2bexQmzVpP
 c+lY2IZFQgdQkrayO1zi/y9flcESqVaghsAOcwOGb193oxognYAmOi86SwEqFTGCLFS9Prw9Nrwo7
 yPWnt4Ngyyesdjom/zet1H+uqmCT7YIFd9jtI6DvGTOFn98jNsHhCFDwuxugAvP2qQ8s=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mGfUA-00015e-Ne; Thu, 19 Aug 2021 10:41:26 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id 614ED220A2;
 Thu, 19 Aug 2021 10:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1629369672; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rYCiuaaVE837hJmVPqNGfQdo0C78s0ZEZthPtB8IJws=;
 b=QHaOmtrPYFKY/ECa0Oh3D3wOcmiAL2JIpqDvMQlYI8BpjqLWJt/mUSCQ2vcjBliEoI4vxA
 SYRH4Cp+inhlt3V0CmPecdnxJE3Epw2H+midOIK0+xTMDInKdu3RequJsEUPyMp2pqyIQw
 CijlpHlUEd3Hub7F+wyUGJuZ/cSF75w=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1629369672;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rYCiuaaVE837hJmVPqNGfQdo0C78s0ZEZthPtB8IJws=;
 b=Gru6Sh+lMbjFw9se8RNLXjS6xr6bYz+hcdqsCoSCBrJKyJSzbka4LCg8dAxA8ab7QDTvHb
 tSzoTxy76e1B4yCA==
Received: from quack2.suse.cz (unknown [10.100.224.230])
 by relay2.suse.de (Postfix) with ESMTP id 66AC1A3B9A;
 Thu, 19 Aug 2021 10:40:54 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id B8FF31E0679; Thu, 19 Aug 2021 12:41:11 +0200 (CEST)
Date: Thu, 19 Aug 2021 12:41:11 +0200
From: Jan Kara <jack@suse.cz>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Message-ID: <20210819104111.GC32435@quack2.suse.cz>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-4-pali@kernel.org>
 <20210812141736.GE14675@quack2.suse.cz>
 <20210812155134.g67ncugjvruos3cy@pali>
 <20210813134822.GF11955@quack2.suse.cz>
 <20210819083432.yy36hrbxzmbasvwd@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210819083432.yy36hrbxzmbasvwd@pali>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.cz]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mGfUA-00015e-Ne
Subject: Re: [Jfs-discussion] [RFC PATCH 03/20] udf: Fix iocharset=utf8
 mount option
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu 19-08-21 10:34:32, Pali Roh=E1r wrote:
> On Friday 13 August 2021 15:48:22 Jan Kara wrote:
> > On Thu 12-08-21 17:51:34, Pali Roh=E1r wrote:
> > > On Thursday 12 August 2021 16:17:36 Jan Kara wrote:
> > > > On Sun 08-08-21 18:24:36, Pali Roh=E1r wrote:
> > > > > Currently iocharset=3Dutf8 mount option is broken. To use UTF-8 a=
s iocharset,
> > > > > it is required to use utf8 mount option.
> > > > > =

> > > > > Fix iocharset=3Dutf8 mount option to use be equivalent to the utf=
8 mount
> > > > > option.
> > > > > =

> > > > > If UTF-8 as iocharset is used then s_nls_map is set to NULL. So s=
implify
> > > > > code around, remove UDF_FLAG_NLS_MAP and UDF_FLAG_UTF8 flags as to
> > > > > distinguish between UTF-8 and non-UTF-8 it is needed just to chec=
k if
> > > > > s_nls_map set to NULL or not.
> > > > > =

> > > > > Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> > > > =

> > > > Thanks for the cleanup. It looks good. Feel free to add:
> > > > =

> > > > Reviewed-by: Jan Kara <jack@suse.cz>
> > > > =

> > > > Or should I take this patch through my tree?
> > > =

> > > Hello! Patches are just RFC, mostly untested and not ready for mergin=
g.
> > > I will wait for feedback and then I do more testing nad prepare new
> > > patch series.
> > =

> > OK, FWIW I've also tested the UDF and isofs patches.
> =

> Well, if you have already done tests, patches are correct and these fs
> driver are working fine then fell free to take it through your tree.
> =

> I just wanted to warn people that patches in this RFC are mostly
> untested to prevent some issues. But if somebody else was faster than
> me, did testing + reviewing and there was no issue, I do not see any
> problem with including them. Just I cannot put my own Tested-by (yet) :-)

OK, I've pulled the udf and isofs fixes to my tree.

								Honza

-- =

Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
