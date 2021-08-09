Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B6E3E4AFC
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 19:39:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD9Ef-0004s1-O2; Mon, 09 Aug 2021 17:38:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <willy@infradead.org>)
 id 1mD9Ed-0004rp-LZ; Mon, 09 Aug 2021 17:38:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AGI41sjFzMutTv3hjWzSTBtY0u1tWmakhxlNUg5NRCE=; b=bp9tvtW5ZgUMJYYq9kg4rtcX9R
 xtQjsRxHAPhYL+7F+6bcKvXC0ff1zqa/dQ+fkXhpxF5i+VG+DtW7HUJRwx28p8nZlciBOdWPiSqDJ
 cBzqTlqMxtUZY+GSAzw5Tkg8zyxDrP4I46WhYGszSxHlQmXYKfp0rr3OuTpCaFHZ3P+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AGI41sjFzMutTv3hjWzSTBtY0u1tWmakhxlNUg5NRCE=; b=SGTJ5+6fmm8Q5miMNemedX3Z+g
 1uj0TkwJjzsWr67V2WqK5nOqP+htMhuJe/RUsgu7GTUdBa2NlJQf0LhOJ6mLLnSCAspnnNztNJPOP
 2aLmsgBsJeJy+9jITbpiatT9yMrdFgLS9d+PRxOtfDhpYc3kS9gVcU9Q78K7cVKEr+7A=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mD9Ec-000qf4-9c; Mon, 09 Aug 2021 17:38:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=AGI41sjFzMutTv3hjWzSTBtY0u1tWmakhxlNUg5NRCE=; b=E7HBuh79SM8Flkqi/dqI8z/Xb6
 nKIFJKiUc8n7cMA7O8n2JcrZD86CEzD6uOkQMf/AKLgYzozznepDVpnTYt4ZKBjt3IEFmSKQCDQ+e
 3btGjUstbUzPvN7MunENt7Ex5u35MoG9APjFnTQ7/0FN4BHSFqloJ30XK5Rn+z++YT068wLWxAc0O
 dremkAECkRCaFj6liQ6X0ijX0kJi+2v8MD/DL/K1Sa6HSFDgiAXbBEK+0QXpgTBcMAzZVoVf5YNx1
 mbPZkXYU/+qdpNa3mEKnVTHwEGhmWqG/lIhcLutccjW1Fcy3OBPgczKb4rw7OcJcVdRtT+0JqtRLh
 4MBFPtig==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mD9DD-00BEsG-9z; Mon, 09 Aug 2021 17:37:25 +0000
Date: Mon, 9 Aug 2021 18:37:19 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Viacheslav Dubeyko <slava@dubeyko.com>
Message-ID: <YRFnz6kn1UbSCN/S@casper.infradead.org>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-12-pali@kernel.org>
 <D0302F93-BAE5-48F0-87D0-B68B10D7757B@dubeyko.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D0302F93-BAE5-48F0-87D0-B68B10D7757B@dubeyko.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mD9Ec-000qf4-9c
Subject: Re: [Jfs-discussion] [RFC PATCH 11/20] hfs: Explicitly set
 hsb->nls_disk when hsb->nls_io is set
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
 Salah Triki <salah.triki@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Anton Altaparmakov <anton@tuxera.com>, Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 "Theodore Y . Ts'o" <tytso@mit.edu>, Andrew Morton <akpm@linux-foundation.org>,
 Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Aug 09, 2021 at 10:31:55AM -0700, Viacheslav Dubeyko wrote:
> > On Aug 8, 2021, at 9:24 AM, Pali Roh=E1r <pali@kernel.org> wrote:
> > =

> > It does not make any sense to set hsb->nls_io (NLS iocharset used betwe=
en
> > VFS and hfs driver) when hsb->nls_disk (NLS codepage used between hfs
> > driver and disk) is not set.
> > =

> > Reverse engineering driver code shown what is doing in this special cas=
e:
> > =

> >    When codepage was not defined but iocharset was then
> >    hfs driver copied 8bit character from disk directly to
> >    16bit unicode wchar_t type. Which means it did conversion
> >    from Latin1 (ISO-8859-1) to Unicode because first 256
> >    Unicode code points matches 8bit ISO-8859-1 codepage table.
> >    So when iocharset was specified and codepage not, then
> >    codepage used implicit value "iso8859-1".
> > =

> > So when hsb->nls_disk is not set and hsb->nls_io is then explicitly set
> > hsb->nls_disk to "iso8859-1".
> > =

> > Such setup is obviously incompatible with Mac OS systems as they do not
> > support iso8859-1 encoding for hfs. So print warning into dmesg about t=
his
> > fact.
> > =

> > After this change hsb->nls_disk is always set, so remove code paths for
> > case when hsb->nls_disk was not set as they are not needed anymore.
> =

> =

> Sounds reasonable. But it will be great to know that the change has been =
tested reasonably well.

I don't think it's reasonable to ask Pali to test every single filesystem.
That's something the maintainer should do, as you're more likely to have
the infrastructure already set up to do testing of your filesystem and
be aware of fun corner cases and use cases than someone who's working
across all filesystems.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
