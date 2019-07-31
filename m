Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 058507CECD
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 Jul 2019 22:38:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hsvMT-0005cs-8w; Wed, 31 Jul 2019 20:38:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@bombadil.infradead.org>) id 1hsuut-0007Qe-4o
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rn3NfiDEXL+oS6VUOY4mnQO1Et+scTwEHQCpCkBADwE=; b=g8NqBdYfJK4/RvFaQZj6fA9oSa
 exF6/0qQx5GFA2Ioxy9muySDXN1NYbWf0cWgObJTecNXFgfgm/orS4knES1owHES6MYPfSemdT5AN
 D7s4ApJfR5QdQ4abh36zqrU82/v5K8Mtdznp9KuAuME36688jqmweLah0gmw3Kd4Rugk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:
 To:From:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rn3NfiDEXL+oS6VUOY4mnQO1Et+scTwEHQCpCkBADwE=; b=J
 YSGbaLH1rEXD3WpgFmveYu6/iGZFDRQoyGnGQzHGWaANEsOh0MQMVpq2cr5SA/YuoZjqR/VaKm1GM
 stiGMubeoro6qohq45VFxlYzjKVw2y69bsRYKYqbpgJhD16VbNJxjqTi3wFEaB+eCG5/iKxKIWNEl
 iu6+7YYGE7l+T4Yk=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsuuq-003wtE-D1
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Sender:Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rn3NfiDEXL+oS6VUOY4mnQO1Et+scTwEHQCpCkBADwE=; b=PIUUBnByQyRMkMGC65MPAbH3v
 bMlAvUmVeuHt9/joMWoQz0I2rMP2LxUacVIVYNPvlFnKF1xaPRAEMuLb/E5C2nzCdb3Rm77OtWPKp
 iCfxZE0OZPA+rLw4ckvP7fYxFk9CdgslaN/TEmJNQKtm0T4+Z/8q7p42cP3GUi//2c7yNXqXJFYNT
 Zqn84uOVfZtk5DnzRYsS8OcjdOCjQ7NSyRKDsTgE9Yv5MUJuU+I3flClQ3gwLdBhCQvwec6sUkDbz
 9LoOXiw2jlR5pTDbwBFdOMiAu4XecH5BAKWEjUVe5Tzz832jRG+dgxixJ5m9vBWnnVp15U9Fq9s+1
 XKgn45ysw==;
Received: from [191.33.152.89] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsuu9-0007qH-8b; Wed, 31 Jul 2019 20:08:57 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hsuu6-00079d-61; Wed, 31 Jul 2019 17:08:54 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>
Date: Wed, 31 Jul 2019 17:08:47 -0300
Message-Id: <cover.1564603513.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: writing-schema.md]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hsuuq-003wtE-D1
X-Mailman-Approved-At: Wed, 31 Jul 2019 20:38:11 +0000
Subject: [Jfs-discussion] [PATCH 0/6] ReST conversion patches not applied yet
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dave Kleikamp <shaggy@kernel.org>,
 alsa-devel@alsa-project.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Evgeniy Polyakov <zbr@ioremap.net>, linux-cifs@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 Evgeniy Dushistov <dushistov@mail.ru>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, samba-technical@lists.samba.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-iio@vger.kernel.org,
 linux-spi@vger.kernel.org, Steve French <sfrench@samba.org>,
 Rob Herring <robh+dt@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Jon,

As promised, this is the rebased version of the patches that were not applied
from the /26 patch series because you had merge conflicts.

They're all based on your docs-next branch, so should apply fine.

The first one fixes all but one error with a broken reference.

The only broken reference right now is due to a DT patch with was not
accepted (no idea why), but whose driver is upstream.


Mauro Carvalho Chehab (6):
  docs: fix a couple of new broken references
  docs: writing-schema.md: convert from markdown to ReST
  spi: docs: convert to ReST and add it to the kABI bookset
  docs: fs: cifs: convert to ReST and add to admin-guide book
  docs: fs: convert porting to ReST
  docs: w1: convert to ReST and add to the kAPI group of docs

 Documentation/ABI/stable/sysfs-bus-w1         |   2 +-
 .../ABI/stable/sysfs-driver-w1_ds28e04        |   4 +-
 .../ABI/stable/sysfs-driver-w1_ds28ea00       |   2 +-
 .../AUTHORS => admin-guide/cifs/authors.rst}  |  64 +-
 .../CHANGES => admin-guide/cifs/changes.rst}  |   4 +
 Documentation/admin-guide/cifs/index.rst      |  21 +
 .../cifs/introduction.rst}                    |   8 +
 .../cifs/TODO => admin-guide/cifs/todo.rst}   |  87 +--
 .../README => admin-guide/cifs/usage.rst}     | 560 +++++++++++-------
 .../cifs/winucase_convert.pl                  |   0
 Documentation/admin-guide/index.rst           |   1 +
 .../bindings/sound/sun8i-a33-codec.txt        |   2 +-
 Documentation/devicetree/writing-schema.md    | 130 ----
 Documentation/devicetree/writing-schema.rst   | 153 +++++
 Documentation/filesystems/porting.rst         |   2 +-
 Documentation/index.rst                       |   2 +
 .../spi/{butterfly => butterfly.rst}          |  44 +-
 Documentation/spi/index.rst                   |  22 +
 Documentation/spi/{pxa2xx => pxa2xx.rst}      |  95 +--
 .../spi/{spi-lm70llp => spi-lm70llp.rst}      |  17 +-
 .../spi/{spi-sc18is602 => spi-sc18is602.rst}  |   3 +
 .../spi/{spi-summary => spi-summary.rst}      | 105 ++--
 Documentation/spi/{spidev => spidev.rst}      |  30 +-
 Documentation/w1/index.rst                    |  21 +
 .../w1/masters/{ds2482 => ds2482.rst}         |  16 +-
 .../w1/masters/{ds2490 => ds2490.rst}         |   6 +-
 Documentation/w1/masters/index.rst            |  14 +
 Documentation/w1/masters/mxc-w1               |  12 -
 Documentation/w1/masters/mxc-w1.rst           |  17 +
 .../w1/masters/{omap-hdq => omap-hdq.rst}     |  12 +-
 .../w1/masters/{w1-gpio => w1-gpio.rst}       |  21 +-
 Documentation/w1/slaves/index.rst             |  16 +
 .../w1/slaves/{w1_ds2406 => w1_ds2406.rst}    |   4 +-
 .../w1/slaves/{w1_ds2413 => w1_ds2413.rst}    |   9 +
 Documentation/w1/slaves/w1_ds2423             |  47 --
 Documentation/w1/slaves/w1_ds2423.rst         |  54 ++
 .../w1/slaves/{w1_ds2438 => w1_ds2438.rst}    |  10 +-
 .../w1/slaves/{w1_ds28e04 => w1_ds28e04.rst}  |   5 +
 .../w1/slaves/{w1_ds28e17 => w1_ds28e17.rst}  |  16 +-
 .../w1/slaves/{w1_therm => w1_therm.rst}      |  11 +-
 .../w1/{w1.generic => w1-generic.rst}         |  88 +--
 .../w1/{w1.netlink => w1-netlink.rst}         |  89 +--
 MAINTAINERS                                   |   6 +-
 drivers/hwtracing/coresight/Kconfig           |   2 +-
 drivers/iio/dummy/iio_simple_dummy.c          |   2 +-
 drivers/spi/Kconfig                           |   2 +-
 drivers/spi/spi-butterfly.c                   |   2 +-
 drivers/spi/spi-lm70llp.c                     |   2 +-
 fs/jfs/Kconfig                                |   2 +-
 fs/ufs/Kconfig                                |   2 +-
 include/linux/platform_data/sc18is602.h       |   2 +-
 51 files changed, 1126 insertions(+), 722 deletions(-)
 rename Documentation/{filesystems/cifs/AUTHORS => admin-guide/cifs/authors.rst} (60%)
 rename Documentation/{filesystems/cifs/CHANGES => admin-guide/cifs/changes.rst} (91%)
 create mode 100644 Documentation/admin-guide/cifs/index.rst
 rename Documentation/{filesystems/cifs/cifs.txt => admin-guide/cifs/introduction.rst} (98%)
 rename Documentation/{filesystems/cifs/TODO => admin-guide/cifs/todo.rst} (58%)
 rename Documentation/{filesystems/cifs/README => admin-guide/cifs/usage.rst} (72%)
 rename Documentation/{filesystems => admin-guide}/cifs/winucase_convert.pl (100%)
 delete mode 100644 Documentation/devicetree/writing-schema.md
 create mode 100644 Documentation/devicetree/writing-schema.rst
 rename Documentation/spi/{butterfly => butterfly.rst} (71%)
 create mode 100644 Documentation/spi/index.rst
 rename Documentation/spi/{pxa2xx => pxa2xx.rst} (83%)
 rename Documentation/spi/{spi-lm70llp => spi-lm70llp.rst} (88%)
 rename Documentation/spi/{spi-sc18is602 => spi-sc18is602.rst} (97%)
 rename Documentation/spi/{spi-summary => spi-summary.rst} (93%)
 rename Documentation/spi/{spidev => spidev.rst} (90%)
 create mode 100644 Documentation/w1/index.rst
 rename Documentation/w1/masters/{ds2482 => ds2482.rst} (71%)
 rename Documentation/w1/masters/{ds2490 => ds2490.rst} (98%)
 create mode 100644 Documentation/w1/masters/index.rst
 delete mode 100644 Documentation/w1/masters/mxc-w1
 create mode 100644 Documentation/w1/masters/mxc-w1.rst
 rename Documentation/w1/masters/{omap-hdq => omap-hdq.rst} (90%)
 rename Documentation/w1/masters/{w1-gpio => w1-gpio.rst} (75%)
 create mode 100644 Documentation/w1/slaves/index.rst
 rename Documentation/w1/slaves/{w1_ds2406 => w1_ds2406.rst} (96%)
 rename Documentation/w1/slaves/{w1_ds2413 => w1_ds2413.rst} (81%)
 delete mode 100644 Documentation/w1/slaves/w1_ds2423
 create mode 100644 Documentation/w1/slaves/w1_ds2423.rst
 rename Documentation/w1/slaves/{w1_ds2438 => w1_ds2438.rst} (93%)
 rename Documentation/w1/slaves/{w1_ds28e04 => w1_ds28e04.rst} (93%)
 rename Documentation/w1/slaves/{w1_ds28e17 => w1_ds28e17.rst} (88%)
 rename Documentation/w1/slaves/{w1_therm => w1_therm.rst} (95%)
 rename Documentation/w1/{w1.generic => w1-generic.rst} (59%)
 rename Documentation/w1/{w1.netlink => w1-netlink.rst} (77%)

-- 
2.21.0




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
