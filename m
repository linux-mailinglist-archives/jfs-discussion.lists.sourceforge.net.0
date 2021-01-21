Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C05A2FDFEE
	for <lists+jfs-discussion@lfdr.de>; Thu, 21 Jan 2021 04:06:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l2QIO-0003Mn-Pd; Thu, 21 Jan 2021 03:06:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <julian.calaby@gmail.com>) id 1l2QDV-0005UL-K6
 for jfs-discussion@lists.sourceforge.net; Thu, 21 Jan 2021 03:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YdnR/g1AUsA802dFK4Bs9r1QCNRoeBKoAACTpgBxsAQ=; b=ZLXOeK53PpuYXu7fEixqE3UxuC
 a/zyjLPg70xRiDqwFQcP81k2PK9RU3vw+PJrpDOy/2XIX5HBQO84bGb2VA7k4GB5NqvCMyWi78ku4
 M3fenHhgvhJWdDAe9LGa6pO4SNgMGQF7uU/M0y7NLG9yn5p2dfu1KfsibYz2VbbTbxrA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YdnR/g1AUsA802dFK4Bs9r1QCNRoeBKoAACTpgBxsAQ=; b=hGT+BmyexjEhJrQ3WyQwRvfpxU
 kxJzAWU/7DxljpSIwOLMBQrc/jFB1k4L03te0Kl5EqZH10xcA2JsDy1GsZ6X1Rfwjrc4vF+cCLI6A
 rhnSYqLFhLNtOPsSGWGBk+V9u3eswr7GjUQftQOr3RkQNBYdvVCGojZxtj85Rb4Fxb7Y=;
Received: from mail-ej1-f43.google.com ([209.85.218.43])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l2QDQ-004t3b-Pv
 for jfs-discussion@lists.sourceforge.net; Thu, 21 Jan 2021 03:01:01 +0000
Received: by mail-ej1-f43.google.com with SMTP id hs11so598380ejc.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 20 Jan 2021 19:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YdnR/g1AUsA802dFK4Bs9r1QCNRoeBKoAACTpgBxsAQ=;
 b=S82oKn6Q+hAvCVWp3R9ocfOXM2/txxi1xOjHxUHmByrZ8kBz2L+vdZmpZsEoegtsH7
 kEKPOe4hs5bnGP8bgsWbRPouosUnKNj9uWM25NvOl6npKH6Q3aIq351tyu35oZ16Gcd9
 gI+/RZHwBoUQXrBob5pPzeDFlql7a72PNMpdC/G6NQL7jOeLy08k8OzSFgGhZ/81pKeb
 bfGMAqvNxE6MPJJ+X7pfFTpMlP/b5cWbsk8wBXFKl5pUb3B1PIYLs2reLAOvnsUFUsv7
 f1sf/+zO67e9eDmjS0bptW4tw0r9uzixuWtFOktEToRwo2mwE5lw5fhIJQSO5xGWaVtk
 y6dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YdnR/g1AUsA802dFK4Bs9r1QCNRoeBKoAACTpgBxsAQ=;
 b=NZ4dY3VaLjqu5dZkPMIWt1AeR4AGVb+mzoDeyGLfMWYR1x+P7aAW4rw+JMQquHUbgb
 9nrwlfU/wL9UtT7tJ24AewMA/dvlz9ZMcvcNrWtKZkbulv0vDHk3QGFz3vQl70NPbwSL
 ggetoWAf6PXYbssyzzxYoVSoF5S6UwDgi+GgwUZ7QdPTcw3kP/1tlJB+cjM72HKyCcTq
 ugRkkW1Nk/VQh6hESDnI5N8DuGX4TYnP9Mux7FywZKL8C3lkVTJY1e8NQ0RpVghgTcYg
 zPRYFa73rby4p9AxESB4FgWYZAmq1eNz143ItttTIwf9NizjH4/9L06kT43Anb0C8LPb
 4UMA==
X-Gm-Message-State: AOAM531XN0OI1MKt6ZrQBpDoAQi7ZTh2wikO82tsPuBZuBeUQB/qrNve
 jEDDedvX+i2eVPP7LrtWhGGdRuB6pB5NKv3SShs=
X-Google-Smtp-Source: ABdhPJx4hIKkKiU2iBKXjdqE5eWNNe7e0osIQ9gJJ07rfesCCPovnPnhiYH+s1vpHW57b+spuuKB7GPDWGgtgfAiGN4=
X-Received: by 2002:a17:906:9619:: with SMTP id
 s25mr7999226ejx.345.1611198050485; 
 Wed, 20 Jan 2021 19:00:50 -0800 (PST)
MIME-Version: 1.0
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
From: Julian Calaby <julian.calaby@gmail.com>
Date: Thu, 21 Jan 2021 14:00:38 +1100
Message-ID: <CAGRGNgWLspr6M1COgX9cuDDgYdiXvQQjWQb7XYLsmFpfMYt0sA@mail.gmail.com>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (julian.calaby[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.43 listed in list.dnswl.org]
X-Headers-End: 1l2QDQ-004t3b-Pv
X-Mailman-Approved-At: Thu, 21 Jan 2021 03:05:58 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 00/37] block: introduce
 bio_init_fields()
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, snitzer@redhat.com,
 gustavo@embeddedor.com, linux-nvme@lists.infradead.org,
 philipp.reisner@linbit.com, song@kernel.org, dm-devel@redhat.com,
 target-devel@vger.kernel.org, adilger.kernel@dilger.ca,
 Christoph Hellwig <hch@lst.de>, agk@redhat.com, drbd-dev@lists.linbit.com,
 naohiro.aota@wdc.com, sagi@grimberg.me,
 Linux SCSI List <linux-scsi@vger.kernel.org>, darrick.wong@oracle.com,
 osandov@fb.com, cluster-devel@redhat.com, linux-ext4@vger.kernel.org,
 kent.overstreet@gmail.com, josef@toxicpanda.com,
 Denis Efremov <efremov@linux.com>, colyli@suse.de, linux-raid@vger.kernel.org,
 rpeterso@redhat.com, linux-bcache@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>, dsterba@suse.com, bvanassche@acm.org,
 agruenba@redhat.com, Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 damien.lemoal@wdc.com, tytso@mit.edu,
 "Martin K. Petersen" <martin.petersen@oracle.com>, clm@fb.com,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 jefflexu@linux.alibaba.com, linux-fsdevel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, lars.ellenberg@linbit.com, jth@kernel.org,
 asml.silence@gmail.com, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Chaitanya,

On Tue, Jan 19, 2021 at 5:01 PM Chaitanya Kulkarni
<chaitanya.kulkarni@wdc.com> wrote:
>
> Hi,
>
> This is a *compile only RFC* which adds a generic helper to initialize
> the various fields of the bio that is repeated all the places in
> file-systems, block layer, and drivers.
>
> The new helper allows callers to initialize various members such as
> bdev, sector, private, end io callback, io priority, and write hints.
>
> The objective of this RFC is to only start a discussion, this it not
> completely tested at all.
> Following diff shows code level benefits of this helper :-
>  38 files changed, 124 insertions(+), 236 deletions(-)

On a more abstract note, I don't think this diffstat is actually
illustrating the benefits of this as much as you think it is.

Yeah, we've reduced the code by 112 lines, but that's barely half the
curn here. It looks, from the diffstat, that you've effectively
reduced 2 lines into 1. That isn't much of a saving.

Thanks,

-- 
Julian Calaby

Email: julian.calaby@gmail.com
Profile: http://www.google.com/profiles/julian.calaby/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
