Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 730AF77A471
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Aug 2023 02:57:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qUzQ7-0003pe-PV;
	Sun, 13 Aug 2023 00:57:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qUzQ5-0003pP-Ks
 for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Aug 2023 00:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GwNvcGCEu2wb+suTa9T22xUCaBCAWRmXtJQNZV9bEc8=; b=fJdF2VDdGT9MtdjahlivGqSCE/
 y5fy7rriDBengVH+yNRWe1scEkQxJHSlVtlCZWxcI6WxMvtmbejRhaahnce+//fB7mDDvsyB34vbI
 WBFbXtV/EIMmp0bH/uPE3HzuPPstyohqk46ZXl3s7I8QzJxtFw7+tuz8hJGFErYLiBRA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GwNvcGCEu2wb+suTa9T22xUCaBCAWRmXtJQNZV9bEc8=; b=TS8prYuYKXAsY2qi/1Z4dyXD9R
 JlMccqdjnDOnUw9GXhioAgsg9Psr0lUDvyUDObVTA706PtzGlJqILunOZ0oOUBIL/zdHje3LHF+IS
 kXHDiQ4HAwF/54qHHx1Dg2UFTPxT4n9WdHZfLLzfeyrjXMAoFQdCYsTQ8xnOvnJ10Glw=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qUzQ1-003sEI-8U for jfs-discussion@lists.sourceforge.net;
 Sun, 13 Aug 2023 00:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID
 :Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=GwNvcGCEu2wb+suTa9T22xUCaBCAWRmXtJQNZV9bEc8=; b=rGyupDRGsS+yvbfuxEnQ4FQ3rX
 zs01jy5w5+/8V7nuNCZvI3bh7Av2rmpnD3rRwR9n+3WkdIGolhEmE+gpoFjqzdg5Vt9TqG+DgAojQ
 K2jTugw69dKO1AFb/SaFVPx9dJKOwrDVo8EmRbyWpiZmtUwxL9aAL+su2RMoOTLnbC5j9rrGRN3H+
 LifIzeBt8t+BeRH7fOUFXxBY+Xo9tPILUb7J6L7a6CjDsA4Sd+1nagYguZVp5jQkpt744z8WTgG+/
 W4EzRhRdszNL/dUqKkjQ2K1OOAUa4RIYxo9o+KPPYkD8PpaIHAtuGpKUREOkquiLEUqKWvH6PLd4j
 U5oCWvrg==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qUzPp-006b9Z-V5; Sun, 13 Aug 2023 00:57:09 +0000
Date: Sun, 13 Aug 2023 00:57:09 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Paulo Alcantara <pc@manguebit.com>, smfrench@gmail.com
Message-ID: <ZNgqZRZNgN8JdiL4@gallifrey>
References: <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
 <ZLhchajZaWEVM6D7@gallifrey>
 <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
 <d1f7fbe9-8fe2-e3e3-d6ff-1544204202ff@talpey.com>
 <ZLnJzUynpTBvZGtA@gallifrey>
 <f8f4a2c5-05d3-0b2d-688f-b3274a98fc73@talpey.com>
 <ZLrxYzGXJzsLmGDs@gallifrey>
 <16f50dff126af9b20f9b99ca056ad5fa.pc@manguebit.com>
 <ZLr0wFMKhEaannov@gallifrey>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZLr0wFMKhEaannov@gallifrey>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-23-amd64 (x86_64)
X-Uptime: 00:57:00 up 37 days, 10:28, 1 user, load average: 0.01, 0.02, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: * Dr. David Alan Gilbert (dave@treblig.org) wrote: > * Paulo
 Alcantara (pc@manguebit.com) wrote: > > "Dr. David Alan Gilbert"
 <linux@treblig.org>
 writes: > > > > > https://git.kernel.org/pub/scm/linux [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qUzQ1-003sEI-8U
Subject: Re: [Jfs-discussion] [PATCH v2 0/4] dedupe smb unicode files
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
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tom Talpey <tom@talpey.com>, krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

* Dr. David Alan Gilbert (dave@treblig.org) wrote:
> * Paulo Alcantara (pc@manguebit.com) wrote:
> > "Dr. David Alan Gilbert" <linux@treblig.org> writes:
> > 
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/checkpatch.pl#n3737
> > > 	if ($realfile =~ /\.(h|s|S)$/) {
> > > 		$comment = '/*';
> > > 	} elsif ($realfile =~ /\.(c|rs|dts|dtsi)$/) {
> > > 		$comment = '//';
> > >
> > > I don't get where that idea came from.
> > 
> > Check Documentation/process/license-rules.rst.
> 
> Oh, that's a painful history!
> Hmm that landed just after I posted a v3 (of just this patch)
> 
> Steve: Your call, do you want me to post a v4 with that comment
> back and but with the copyright lineas as in v3?

I've posted the v4.

Dave

> Dave
> 
> -- 
>  -----Open up your eyes, open up your mind, open up your code -------   
> / Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
> \        dave @ treblig.org |                               | In Hex /
>  \ _________________________|_____ http://www.treblig.org   |_______/
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
